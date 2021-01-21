from django.db import models
from django.urls import reverse 
# Create tables here forexample(User,Post,Category).

class User(models.Model):
    first_name = models.CharField(max_length=64)
    last_name = models.CharField(max_length=64)
    age = models.CharField(max_length=3)
    image = models.CharField(max_length=1000)
    username = models.CharField(max_length=16)
    password = models.CharField(max_length=250)
    email = models.CharField(max_length=200)
    phone = models.CharField(max_length=14)

class Category(models.Model):
    name = models.CharField(max_length=64)
    image = models.CharField(max_length=1000)

    def __str__(self):
        return self.image + '\n' + self.name

class Post(models.Model):
    author = models.ForeignKey(User,on_delete=models.CASCADE)
    sub_title = models.ForeignKey(Category,on_delete=models.CASCADE)
    header = models.CharField(max_length=20)
    detail = models.CharField(max_length=10000)
    image = models.CharField(max_length=1000)

    def __str__(self):
        return self.header + '\n' + self.detail
   # def get_absolute_url(self):
   #    return reverse('virgool:')
