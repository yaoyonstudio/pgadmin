from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static
from graphene_django.views import GraphQLView


from . import  views

urlpatterns = [
    path('', views.index, name = 'bookstore.index'),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
