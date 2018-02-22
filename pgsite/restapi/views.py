from django.shortcuts import render
from django.views.decorators.csrf import csrf_exempt

from rest_framework import mixins
from rest_framework import generics

from rest_framework import renderers
from rest_framework.response import Response

from rest_framework.decorators import api_view
from rest_framework.reverse import reverse

from pgsite.mainsite.models import Config, Slide, Profile, Postcate, Postimg, Post, Comment, IS_OPEN_CHOICES, IS_RECOMMEND_CHOICES
from pgsite.restapi.serializers import PostSerializer, PostcateSerializer


@api_view(['GET'])
def api_root(request, format=None):
    return Response({
        'posts': reverse('post-list', request=request, format=format),
        'postcates': reverse('postcate-list', request=request, format=format),
    })


class PostcateList(generics.ListCreateAPIView):
    queryset = Postcate.objects.all()
    serializer_class = PostcateSerializer


class PostcateDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Postcate.objects.all()
    serializer_class = PostcateSerializer


class PostcateHighlight(generics.GenericAPIView):
    queryset = Postcate.objects.all()
    renderer_classes = (renderers.StaticHTMLRenderer,)

    def get(self, request, *args, **kwargs):
        cate = self.get_object()
        return Response(cate.cate_title)



class PostList(generics.ListCreateAPIView):
    queryset = Post.objects.all()
    serializer_class = PostSerializer


class PostDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Post.objects.all()
    serializer_class = PostSerializer


class PostHighlight(generics.GenericAPIView):
    queryset = Post.objects.all()
    renderer_classes = (renderers.StaticHTMLRenderer,)

    def get(self, request, *args, **kwargs):
        post = self.get_object()
        return Response(post.post_title)



