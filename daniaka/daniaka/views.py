from django.shortcuts import render


def home(req):
    return render(req,'daniaka/home.html')
