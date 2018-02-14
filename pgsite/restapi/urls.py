from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from rest_framework.urlpatterns import format_suffix_patterns

from . import  views

urlpatterns = format_suffix_patterns([
    path('', views.api_root),
    path('test', views.test),
    path('posts/', views.PostList.as_view(), name='post-list'),
    path('posts/<int:pk>/', views.PostDetail.as_view(), name='post-detail'),
    path('posts/<int:pk>/highlight/', views.PostHighlight.as_view(), name='post-highlight'),
])
# urlpatterns = format_suffix_patterns(urlpatterns)
