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

        # /virgool/<id>/delete
        path('<int:id_post>/delete',views.delete_view,name='delete' ),

        # /virgool/<id>/update
        path('<id>/update',views.update_post,name='update'),

        ]
