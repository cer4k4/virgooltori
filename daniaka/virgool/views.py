from django.http import Http404,HttpResponse
from django.shortcuts import (get_object_or_404,render,HttpResponseRedirect)
from .models import Category,Post,User
from .forms import PostForm,UserForm
from django.contrib.auth.forms import AuthenticationForm
from django.contrib.auth import login, authenticate


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
    context = {}
    form = PostForm(req.POST or None)
    if form.is_valid():
        form.save()
        return HttpResponseRedirect("/virgool")
    context['form'] = form
    return render(req,'virgool/post_form.html',context)


# deletepost
def delete_view(req,id_post):
    post = get_object_or_404(Post, id =id_post)
    if req.method == "POST":
        post.delete()
        return HttpResponseRedirect("/virgool")
    context = { "object": post }
    return render(req,"virgool/delete_post.html",context)
 
def detail_update(req,id):
    context ={}
    context["data"] = Post.objects.get(id=id)
    return render(req,"virgool/detail_post.html",context)
# update post
def update_post(req,id):
    context ={}
    obj = get_object_or_404(Post, pk=id)
    form = PostForm(req.POST or None , instance = obj)
    if form.is_valid():
        form.save()
        return HttpResponseRedirect("/virgool")
    context["form"] = form
    return render(req,"virgool/update_post.html",context)

# login 
def login(req):

    if req.method == 'POST':
        form = AuthenticationForm(data=req.POST)
        if form.is_valid():
            return HttpResponseRedirect("/virgool")
    else:
        form = AuthenticationForm()
    return render(req,'virgool/login.html',{'form':form})

# signup
def createuser(req):
    context = {}
    form = UserForm(req.POST)
    if form.is_valid():
        form.save()
        username = form.cleaned_data.get('username')
        raw_password = form.cleaned_data.get('password1')
        user = authenticate(username=username, password=raw_password)
        return HttpResponseRedirect("/virgool/login/")
    context['form'] = form
    return render(req,'virgool/signup.html',context)

'''def update_post(req,id_post):
    context={}
    obj = get_object_or_404(Post,id = id_post)
    form = PostForm(req.POST or None)
    if form.is_valid():
        form.save()
        return HttpResponseRedirect("/"+str(id))
    context["form"] = form
    return render(req,"virgool/update_post.html",context)'''
