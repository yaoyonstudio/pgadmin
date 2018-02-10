from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static
from django.views.decorators.csrf import csrf_exempt
from graphene_django.views import GraphQLView


from . import  views

urlpatterns = [
    path('graphql', csrf_exempt(GraphQLView.as_view(graphiql=True))),
]
