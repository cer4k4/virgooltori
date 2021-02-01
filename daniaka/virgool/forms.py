from django import forms
from .models import Post,User
from django.contrib.auth.forms import UserCreationForm

# create a form for post
class PostForm(forms.ModelForm):
    class Meta:
        model = Post
        fields = [
                "author",
                "sub_title",
                "header",
                "detail",
                "image",
                ]
# create a form for signup
class UserForm(UserCreationForm):
    first_name = forms.CharField(max_length=30, required=False, help_text='Optional.')
    last_name = forms.CharField(max_length=30, required=False, help_text='Optional.')
    email = forms.EmailField(max_length=254, help_text='Required. Inform a valid email address.')
    class Meta:
        model = User
        fields = [
                "username",
                "password1",
                "password2",
                "first_name",
                "last_name",
                "email",
                ]
