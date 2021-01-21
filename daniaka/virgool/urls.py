from django.urls import path
from . import views

# Roate
app_name = 'virgool'
urlpatterns=[
        # /virgool/
        path('',views.index,name='index'),
        # /virgool/<id_cat>
        path('<int:id_cat>'+'/',views.category,name='category'),
        # /virgool/<id_cat>/post/<id_post>
        path('<int:id_cat>'+'/post/'+'<int:id_post>'+'/',views.post,name='post'),
        # /virgool/post
        path('posts/',views.createpost,name='createpost'),
        ]
