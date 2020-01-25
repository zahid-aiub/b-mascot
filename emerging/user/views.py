from django.http import HttpResponse
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework import viewsets, filters, status
from rest_framework.decorators import action
from rest_framework.filters import SearchFilter
from rest_framework.pagination import PageNumberPagination
from rest_framework.response import Response
from user.models import User
from user.serializers import UserSerializer


class UserViewSet(viewsets.ModelViewSet):
    queryset = User.objects.all()
    serializer_class = UserSerializer
    filter_backends = [DjangoFilterBackend, filters.OrderingFilter, SearchFilter]
    filterset_fields = '__all__'
    search_fields = ['first_name', 'last_name', 'email', 'phone', ]
    ordering = ['-id']

    def get_queryset(self):
        try:
            if 'user_name' in self.request.session:
                uname = self.request.session['user_name']
                if uname:
                    users = User.objects.filter(email=uname)
                    if users[0].is_admin:
                        queryset = User.objects.filter(is_admin=0)
                        return queryset
                    else:
                        user = User.objects.filter(email=uname)
                        return user
                else:
                    return HttpResponse(status=status.HTTP_204_NO_CONTENT)
            else:
                queryset = User.objects.filter(is_admin=0)
                return queryset
        except Exception as e:
            print(e)

    @action(methods=['post'], detail=False, url_path='check-email')
    def check_email_exist_or_not(self, request):
        email = request.data['email']
        users = User.objects.filter(email=request.data['email'])

        if users:
            return Response(status=200, data={'success': False, 'msg': 'Duplicate email found'})
        else:
            return Response(status=200, data={'success': True, 'msg': 'Duplicate email not found'})

    @action(methods=['post'], detail=False, url_path='login')
    def handle_login(self, request):
        email = request.data['username']
        password = request.data['pass']
        users = User.objects.filter(email=email, password=password)
        if users:
            request.session['user_name'] = email
            user_serializer = UserSerializer(users[0])
            print(request.session['user_name'])
            return Response(status=200, data={'success': True, 'data': user_serializer.data})
        else:
            return Response(status=200, data={'success': False, 'msg': 'Record Not Found'})

    @action(methods=['get'], detail=False, url_path='logout')
    def handle_logout(self, request):
        request.session['user_name'] = None
        return Response(status=200, data={'success': True, 'msg': 'Logout successfully'})

    @action(methods=['get'], detail=False, url_path='get-by-id')
    def get_user_by_id(self, request):
        id = request.GET.get('id')
        user = User.objects.filter(id=id)
        if user:
            user_serializer = UserSerializer(user[0])
            return Response(status=200, data={'success': True, 'data': user_serializer.data})
        else:
            return Response(status=200, data={'success': False, 'msg': 'No data found'})

    @action(methods=['post'], detail=False, url_path='update-password')
    def update_password(self, request):
        id = request.data['id']
        user = User.objects.filter(pk=id)[0]
        if user:
            user.password = request.data['password']
            user.save()
            return Response(status=200, data={'success': True, 'msg': 'Data updated successfully'})
        else:
            return Response(status=200, data={'success': False, 'msg': 'Data not found.'})
