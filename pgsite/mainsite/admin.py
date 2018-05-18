from django.contrib import admin
from django.contrib.admin import AdminSite

# Register your models here.
from django.contrib import admin
from .models import Config, Slide, Service, Timeline, Teamer, Client, Profile, Postcate, Postimg, Post, Comment
from django.apps import apps


from django.utils.safestring import mark_safe
from django.conf import settings


from functools import update_wrapper
from weakref import WeakSet

from django.apps import apps
from django.contrib.admin import ModelAdmin, actions
from django.contrib.auth import REDIRECT_FIELD_NAME
from django.core.exceptions import ImproperlyConfigured
from django.db.models.base import ModelBase
from django.http import Http404, HttpResponseRedirect
from django.template.response import TemplateResponse
from django.urls import NoReverseMatch, reverse
from django.utils.text import capfirst
from django.utils.translation import gettext as _, gettext_lazy
from django.views.decorators.cache import never_cache
from django.views.decorators.csrf import csrf_protect
from django.views.i18n import JavaScriptCatalog


class SlideAdmin(admin.ModelAdmin):
    list_display = ('slide_title', 'slide_link', 'slide_isopen', 'slide_image')

    def get_app_list(self):
        mainsite_models = apps.get_app_config('mainsite').get_models()

        _models = []
        mainsite = 'mainsite'

        for model in mainsite_models:
            info = (model._meta.app_label, model._meta.model_name)
            _models.append({
                'name': model._meta.verbose_name_plural,
                'object_name': model._meta.object_name,
                'admin_url': reverse('admin:%s_%s_changelist' % info, current_app='admin')
            })

        app_list = [
            {
                'name': mainsite,
                'app_label': mainsite,
                'app_url': reverse('admin:app_list', kwargs={'app_label': mainsite}, current_app='admin'),
                'has_module_perms': True,
                'models': _models
            }
        ]

        return app_list


    def changelist_view(self, request, extra_context=None):
        extra_context = extra_context or {}
        extra_context['app_list'] = self.get_app_list()

        return super(SlideAdmin, self).changelist_view(
            request, extra_context=extra_context
        )

    def add_view(self, request, extra_context=None):
        extra_context = extra_context or {}
        extra_context['app_list'] = self.get_app_list()

        return super(SlideAdmin, self).add_view(
            request, extra_context=extra_context
        )

    def change_view(self, request, object_id, extra_context=None):
        extra_context = extra_context or {}
        extra_context['app_list'] = self.get_app_list()

        return super(SlideAdmin, self).change_view(
            request, object_id, extra_context=extra_context
        )

    def slide_image(self, obj):
        return mark_safe('<img src="/media/%s" alt="" style="height: 60px;" /></div>' % obj.slide_img)

    # 覆写get_queryset，可以查询出数据，然后进入自定义, 此处默认按slide_isopen排序
    def get_queryset(self, request):
        queryset = super(SlideAdmin, self).get_queryset(request)
        queryset = queryset.order_by('-slide_isopen')
        return queryset

    slide_image.short_description = '滑动图图片'
    slide_image.allow_tags = True



class ServiceAdmin(admin.ModelAdmin):
    list_display = ('service_title', 'short_service_desc', 'service_image')

    def short_service_desc(self, obj):
        if (len(obj.service_desc) > 40):
            return obj.service_desc[0:40] + '...'
        return obj.service_desc
    short_service_desc.short_description = '服务项目简短描述'

    def service_image(self, obj):
        return mark_safe('<div style="background-color: #fed136; padding: 10px;"><img src="/media/%s" alt="" style="display: block; margin: 0 auto; width: 60px; height: 60px;" /></div>' % obj.service_img)

    service_image.short_description = '服务项目图标'
    service_image.allow_tags = True


class TimelineAdmin(admin.ModelAdmin):
    list_display = ('timeline_title', 'timeline_time', 'timeline_image')

    def timeline_image(self, obj):
        return mark_safe('<img src="/media/%s" alt="" style="width: 60px; height: 60px;" />' % obj.timeline_img)

    timeline_image.short_description = '时间轴图片'
    timeline_image.allow_tags = True


class TeamerAdmin(admin.ModelAdmin):
    list_display = ('admin_avatar', 'Teamer_name', 'Teamer_position')
    list_filter = ('Teamer_position', 'create_time')
    search_fields = ('Teamer_name', 'Teamer_position')


class ClientAdmin(admin.ModelAdmin):
    list_display = ('client_name', 'client_site', 'client_img')

    def client_img(self, obj):
        return mark_safe('<img src="/media/%s" alt="" style="width: 200px; height: 50px;" />' % obj.client_logo)

    client_img.short_description = '客户LOGO'
    client_img.allow_tags = True


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

    def save_model(self, request, obj, form, change):
        if not change:
            # the object is being created, so set the user
            obj.author = request.user
            # print('request:', request)
            # print('obj:', obj)
            # print('form:', form)
        obj.save()


class CommentAdmin(admin.ModelAdmin):
    fields = ['comment_content', 'comment_isopen', 'post']

    def get_readonly_fields(self, request, obj=None):
        if obj:
            print(obj)
            return self.readonly_fields + tuple('post')
        return self.readonly_fields

    def save_model(self, request, obj, form, change):
        if not change:
            # the object is being created, so set the user
            obj.author = request.user
        obj.save()

class ProfileAdmin(admin.ModelAdmin):
    fields = ['user', 'nickname', 'avatar', 'address', 'qq', 'mobile', 'sex', 'birthday']

    def save_model(self, request, obj, form, change):
        if not change:
            # the object is being created, so set the user
            obj.user = request.user
        obj.save()



admin.site.test = 'Test word'
admin.site.register(Config)
admin.site.register(Slide, SlideAdmin)
admin.site.register(Service, ServiceAdmin)
admin.site.register(Timeline, TimelineAdmin)
admin.site.register(Teamer, TeamerAdmin)
admin.site.register(Client, ClientAdmin)
admin.site.register(Profile, ProfileAdmin)
admin.site.register(Postcate, PostcateAdmin)
admin.site.register(Postimg, PostimgAdmin)
admin.site.register(Post, PostAdmin)
admin.site.register(Comment, CommentAdmin)






