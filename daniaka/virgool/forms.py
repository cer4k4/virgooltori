from django import forms
from .models import Post

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

