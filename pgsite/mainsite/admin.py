from django.contrib import admin

# Register your models here.
from django.contrib import admin
from .models import Config, Slide, Profile, Postcate, Postimg, Post, Comment

class PostcateAdmin(admin.ModelAdmin):
    exclude = ('author',)
    fields = ['cate_title', 'cate_name', 'parent']

    def save_model(self, request, obj, form, change):
        if not change:
            # the object is being created, so set the user
            obj.author = request.user
        obj.save()

class PostAdmin(admin.ModelAdmin):
    exclude = ('author',)
    fields = ['cate', 'featuredimg', 'post_title', 'post_keywords', 'post_description', 'post_isopen', 'post_isrecommend', 'post_source', 'post_sourcelink', 'post_content']

    def save_model(self, request, obj, form, change):
        if not change:
            # the object is being created, so set the user
            obj.author = request.user
        obj.save()

class PostimgAdmin(admin.ModelAdmin):
    exclude = ('author',)
    fields = ['img_title', 'img']

class CommentAdmin(admin.ModelAdmin):
    fields = ['comment_content', 'comment_isopen']

class ProfileAdmin(admin.ModelAdmin):
    fields = ['user', 'nickname', 'avatar', 'address', 'qq', 'mobile', 'sex', 'birthday']

    def save_model(self, request, obj, form, change):
        if not change:
            # the object is being created, so set the user
            obj.user = request.user
        obj.save()

admin.site.register(Config)
admin.site.register(Slide)
admin.site.register(Profile, ProfileAdmin)
admin.site.register(Postcate, PostcateAdmin)
admin.site.register(Postimg, PostimgAdmin)
admin.site.register(Post, PostAdmin)
admin.site.register(Comment, CommentAdmin)