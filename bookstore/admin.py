from django.contrib import admin

# Register your models here.
from django.contrib import admin
from django import forms

from .models import Customer, Author, Publisher, BookCate, Book, BookImg, BookComment, Cart, Order
from django.apps import apps
from django.db import models

from django.utils.safestring import mark_safe
from django.conf import settings

class CustomerAdmin(admin.ModelAdmin):
    list_display = ('customer_image', 'show_name', 'sex', 'mobile',)
    fields = ('user', 'customer_image', 'avatar', 'nickname', 'mobile', 'birthday', 'sex', 'qq',)
    readonly_fields = ('user', 'customer_image',)

    def show_name(self, obj):
        return obj.nickname if obj.nickname else obj.user

    def customer_image(self, obj):
        img = obj.avatar if obj.avatar else 'user.png'
        return mark_safe('<div style=""><img src="/media/%s" alt="" style="display: block; width: auto; height: 60px;" /></div>' % img)

    show_name.short_description = '用户'
    customer_image.short_description = '客户头像'
    customer_image.allow_tags = True


class BookImgInline(admin.StackedInline):
    model = BookImg
    extra = 0

    # list_display = ('image_tag', 'book', 'bookimg_title',)
    # list_display_links = ('image_tag', 'book', 'bookimg_title',)
    fields = ('book', 'bookimg_title', 'bookimg_img', 'image_tag',)
    readonly_fields = ('image_tag',)

    def image_tag(self, obj):
        return mark_safe('<img src="/media/%s" style="height: 100px;" />' % obj.bookimg_img)

    image_tag.short_description = '原图片预览'
    image_tag.allow_tags = True


class PublisherAdmin(admin.ModelAdmin):
    list_display = ('publisher_name', 'publisher_image', 'publisher_desc')

    def publisher_image(self, obj):
        return mark_safe('<div style=""><img src="/media/%s" alt="" style="display: block; width: auto; height: 60px;" /></div>' % obj.publisher_logo)

    publisher_image.short_description = '出版社LOGO'
    publisher_image.allow_tags = True


class AuthorAdmin(admin.ModelAdmin):
    list_display = ('author_name', 'author_image', 'author_country')

    def author_image(self, obj):
        return mark_safe('<div style=""><img src="/media/%s" alt="" style="display: block; width: auto; height: 60px;" /></div>' % obj.author_avatar)

    author_image.short_description = '作者头像'
    author_image.allow_tags = True


class BookCateAdmin(admin.ModelAdmin):
    list_display = ('name', 'parent', 'is_recommend')


class BookImgAdmin(admin.ModelAdmin):
    list_display = ('image_tag', 'book', 'bookimg_title',)
    list_display_links = ('image_tag', 'book', 'bookimg_title',)
    fields = ('book', 'bookimg_title', 'image_tag',)
    readonly_fields = ('image_tag',)

    def image_tag(self, obj):
        return mark_safe('<img src="/media/%s" style="height: 100px;" />' % obj.bookimg_img)

    image_tag.short_description = '图片预览'
    image_tag.allow_tags = True


class BookAdmin(admin.ModelAdmin):
    exclude = ('book_sale_nums',)
    list_display = ('book_name', 'cate', 'publisher')
    list_display_links = ('book_name', 'cate', 'publisher')
    inlines = [BookImgInline]

    def save_model(self, request, obj, form, change):
        super(BookAdmin, self).save_model(request, obj, form, change)
        # print(obj[])
        for afile in request.FILES.getlist('book_imgs'):
            obj.bookimgs.create(bookimg_title=obj, bookimg_img=afile)

    def book_image(self, obj):
        return mark_safe('<div style=""><img src="/media/%s" alt="" style="display: block; width: auto; height: 60px;" /></div>' % obj.bookimgs)

    book_image.short_description = '书籍图片'
    book_image.allow_tags = True


class BookCommentAdmin(admin.ModelAdmin):
    fields = ['customer', 'book', 'bookcomment_content', 'bookcomment_isopen']

    def get_readonly_fields(self, request, obj=None):
        if obj:
            return self.readonly_fields + ('bookcomment_thumbup', 'bookcomment_thumbdown')
        return self.readonly_fields



admin.site.register(Customer, CustomerAdmin)
admin.site.register(Author, AuthorAdmin)
admin.site.register(Publisher, PublisherAdmin)
admin.site.register(BookCate, BookCateAdmin)
admin.site.register(Book, BookAdmin)
admin.site.register(BookImg, BookImgAdmin)
admin.site.register(BookComment, BookCommentAdmin)
admin.site.register(Cart)
admin.site.register(Order)
