from django.shortcuts import (get_object_or_404,render,HttpResponseRedirect)
from django.contrib.auth import login, authenticate
from django.contrib.auth.forms import AuthenticationForm
from virgool.models import User
from .forms import UserForm
from django.db import connection

# login 
def login(req):

    if req.method == 'POST':
        form = AuthenticationForm(data=req.POST)
        if form.is_valid():
            return HttpResponseRedirect("/virgool/")
    else:
        form = AuthenticationForm()
    return render(req,'account/login.html',{'form':form})


# signup
def createuser(req):
    context = {}
    form = UserForm(req.POST)
    if form.is_valid():
        form.save()
        username = form.cleaned_data.get('username')
        raw_password = form.cleaned_data.get('password1')
        user = authenticate(username=username, password=raw_password)
        return HttpResponseRedirect("/account/login/")
    context['form'] = form
    return render(req,'account/signup.html',context)


# dashboard user
def dashboard(req,user):
    try:
<<<<<<< HEAD
        #count of users
        con = connection.cursor()
        con.execute('select * from countrealyuser')
        getdata = con.fetchall()
        template = getdata[0]
        count = template[0]


        #get information about users
        con.execute('select * from costofpost')
        getdata = con.fetchall()
        names=[]
        words=[]
        cost=[]
        for c in range(0,count):
            data = getdata[c]
            names.append(data[0])
            words.append(int(data[1]))
            cost.append(int(data[2]))
        user = User.objects.get(username=user)
        context = {'user' : user,'count' : count,'names' : names,'words' :words,'cost' : cost}
    except User.DoesNotExist:
=======
        con = connection.cursor()
        con.execute('call test()')
        result = con.fetchall()
        user = User.objects.get(username=user)
        context = {'user' : user,'result':result}
    except Category.DoesNotExist:
>>>>>>> 89671f70ae0a290a972fccb5aaa5b96063ad7163
        raise Http404("user Does not exist")
    return render(req,'account/dashboard.html',context)

