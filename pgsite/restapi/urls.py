from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from rest_framework.urlpatterns import format_suffix_patterns

from . import  views

urlpatterns = format_suffix_patterns([
    path('restapi/', views.api_root),
    path('restapi/posts/', views.PostList.as_view(), name='post-list'),
    path('restapi/posts/<int:pk>/', views.PostDetail.as_view(), name='post-detail'),
    path('restapi/posts/<int:pk>/highlight/', views.PostHighlight.as_view(), name='post-highlight'),
])
