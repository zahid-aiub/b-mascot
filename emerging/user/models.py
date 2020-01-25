from django.db import models


class User(models.Model):
    first_name = models.CharField(max_length=255, null=True)
    last_name = models.CharField(max_length=255, null=True)
    address = models.TextField(null=True)
    phone = models.TextField(null=True)
    email = models.CharField(max_length=255)
    dob = models.CharField(max_length=255, null=True)
    password = models.CharField(max_length=255)
    is_admin = models.BooleanField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        db_table = 'user'
