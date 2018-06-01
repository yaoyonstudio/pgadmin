"""pgsite URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include

from rest_framework_jwt.views import obtain_jwt_token
from rest_framework_jwt.views import refresh_jwt_token
from rest_framework_jwt.views import verify_jwt_token

from pgsite.mainsite import views

urlpatterns = [
    path('', views.index, name = 'index'),
    path('post/<int:id>/', views.post_detail, name = 'post_detail'),
    path('jet/', include('jet.urls', 'jet')),
    path('jet/dashboard/', include('jet.dashboard.urls', 'jet-dashboard')),
    path('admin/', admin.site.urls),
    path('', include('pgsite.mainsite.urls')),
    path('', include('pgsite.graphqlapi.urls')),
    path('restapi/', include('pgsite.restapi.urls')),
    path('bookstore/', include('bookstore.urls')),
    path('api-token-auth', obtain_jwt_token),
    path('api-token-refresh', refresh_jwt_token),
    path('api-token-verify', verify_jwt_token),
]
