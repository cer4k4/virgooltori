from django.urls import path
from . import views

app_name='music'
urlpatterns = [
        # /music/
        path('',views.IndexView.as_view(),name='index'),
        # /music/712
        path('<pk>'+'/',views.DetailView.as_view(),name='detail'), 
        # /music/album/add
        path('album/add',views.AlbumCreate.as_view(),name='album-addd')
        ]
