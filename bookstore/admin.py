from django.contrib import admin

# Register your models here.
from django.contrib import admin
from django import forms

from .models import Customer, Author, Publisher, BookCate, Book, BookImg, BookComment, Cart, Order
from django.apps import apps


from django.utils.safestring import mark_safe
from django.conf import settings


class BookAdmin(admin.ModelAdmin):
    # author = forms.Mu
    list_display = ('book_name', 'cate', 'author', 'publisher')
    list_display_links = ('book_name', 'cate', 'author', 'publisher')


admin.site.register(Customer)
admin.site.register(Author)
admin.site.register(Publisher)
admin.site.register(BookCate)
admin.site.register(Book, BookAdmin)
admin.site.register(BookImg)
admin.site.register(BookComment)
admin.site.register(Cart)
admin.site.register(Order)
