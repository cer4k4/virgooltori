from django import forms
from virgool.models import User
from django.contrib.auth.forms import UserCreationForm



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

