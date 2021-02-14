from django.urls import path
from . import views

app_name =  'account'

urlpatterns=[
        path('login/',views.login,name='login'),
        path('signup/',views.createuser,name='signup'),
        path('<user>',views.dashboard,name='dashboard'),
        ]
