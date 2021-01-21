from django.contrib import admin
from .models import User,Post,Category

# Register your table for admin dashboard.
admin.site.register(User)
admin.site.register(Post)
admin.site.register(Category)
