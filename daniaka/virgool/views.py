from django.http import Http404
from django.shortcuts import render
from .models import Category,Post,User

# index view
def index(req):
    all_cat = Category.objects.all()
    context = {'all_cat': all_cat}
    return render(req,'virgool/index.html',context)     

# category view
def category(req,id_cat):
    try:
       all_post = Post.objects.filter(sub_title_id=id_cat)
       context = {'all_post' : all_post ,'id_cat': id_cat}
    except Category.DoesNotExist:
        raise Http404("Category Does not exist")
    return render(req,'virgool/category.html',context)     

# post
def post(req,id_post,id_cat):
    try:
        post = Post.objects.get(pk=id_post)
        context = {'post' : post}
    except Category.DoesNotExist:
        raise Http404("post Does not exist")
    return render(req,'virgool/post.html',context)

# createpost
def createpost(req):
    all_user = User.objects.all()
    all_cat = Category.objects.all()
    all_post = Post.objects.all()
    context = {'all_user' : all_user , 'all_cat' : all_cat ,'all_post' : all_post}

    return render(req,'virgool/post_form.html',context)
