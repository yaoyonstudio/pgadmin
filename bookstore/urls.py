from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static
from django.contrib.auth.views import login, logout


from . import  views

urlpatterns = [
    path('', views.index, name='bookstore.index'),
    path('profile/', views.profile, name='bookstore.profile'),
    path('register/', views.register, name='bookstore.register'),
    path('login/', login,{'template_name': 'bookstore/customer/login.html'},  name='bookstore.login'),
    path('logout/', logout, {'template_name': 'bookstore/customer/logout.html'}, name='bookstore.logout'),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)


