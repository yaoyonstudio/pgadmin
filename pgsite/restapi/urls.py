from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from rest_framework.urlpatterns import format_suffix_patterns

from . import  views

urlpatterns = format_suffix_patterns([
    path('', views.api_root),

    path('profiles/', views.ProfileList.as_view(), name='profile-list'),
    path('profiles/<int:pk>/', views.ProfileDetail.as_view(), name='profile-detail'),
    path('profiles/<int:pk>/highlight/', views.ProfileHighlight.as_view(), name='profile-highlight'),

    path('comments/', views.CommentList.as_view(), name='comment-list'),
    path('comments/<int:pk>/', views.CommentDetail.as_view(), name='comment-detail'),
    path('comments/<int:pk>/highlight/', views.CommentHighlight.as_view(), name='comment-highlight'),

    path('postcates/', views.PostcateList.as_view(), name='postcate-list'),
    path('postcates/<int:pk>/', views.PostcateDetail.as_view(), name='postcate-detail'),
    path('postcates/<int:pk>/highlight/', views.PostcateHighlight.as_view(), name='postcate-highlight'),

    path('posts/', views.PostList.as_view(), name='post-list'),
    path('posts/<int:pk>/', views.PostDetail.as_view(), name='post-detail'),
    path('posts/<int:pk>/highlight/', views.PostHighlight.as_view(), name='post-highlight'),
])
