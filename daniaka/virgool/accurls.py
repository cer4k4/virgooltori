from django.urls import path
from . import views

app_name =  'virgool'

urlpatterns=[
        path('login/',views.login,name='login'),
        path('signup/',views.createuser,name='signup'),

        ]
