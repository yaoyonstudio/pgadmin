from django_filters.rest_framework import DjangoFilterBackend
from rest_framework import filters

from django.shortcuts import render
from django.views.decorators.csrf import csrf_exempt

from rest_framework import mixins
from rest_framework import generics

from rest_framework import renderers
from rest_framework.response import Response

from rest_framework.decorators import api_view
from rest_framework.reverse import reverse

from pgsite.mainsite.models import Config, Slide, Profile, Postcate, Postimg, Post, Comment, IS_OPEN_CHOICES, IS_RECOMMEND_CHOICES
from pgsite.restapi.serializers import PostSerializer, PostcateSerializer, CommentSerializer, ProfileSerializer


@api_view(['GET'])
def api_root(request, format=None):
    return Response({
        'posts': reverse('post-list', request=request, format=format),
        'postcates': reverse('postcate-list', request=request, format=format),
        'comments': reverse('comment-list', request=request, format=format),
        'profiles': reverse('profile-list', request=request, format=format),
    })

class ProfileList(generics.ListCreateAPIView):
    queryset = Profile.objects.all()
    serializer_class = ProfileSerializer


class ProfileDetail(generics.RetrieveAPIView):
    queryset = Profile.objects.all()
    serializer_class = ProfileSerializer


class ProfileHighlight(generics.GenericAPIView):
    queryset = Profile.objects.all()
    renderer_classes = (renderers.StaticHTMLRenderer,)

    def get(self, request, *args, **kwargs):
        profile = self.get_object()
        return Response(profile.nickname)



class CommentList(generics.ListCreateAPIView):
    queryset = Comment.objects.all()
    serializer_class = CommentSerializer

    def perform_create(self, serializer):
        serializer.save(author_id=self.request.user.id)


class CommentDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Comment.objects.all()
    serializer_class = CommentSerializer


class CommentHighlight(generics.GenericAPIView):
    queryset = Comment.objects.all()
    renderer_classes = (renderers.StaticHTMLRenderer,)

    def get(self, request, *args, **kwargs):
        comment = self.get_object()
        return Response(comment.comment_content)



class PostcateList(generics.ListCreateAPIView):
    queryset = Postcate.objects.all()
    serializer_class = PostcateSerializer

    def perform_create(self, serializer):
        serializer.save(author_id=self.request.user.id)


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
    # 添加过滤和搜索
    # 过滤：http://127.0.0.1:8888/restapi/posts/?cate_id=1
    # 搜索：http://127.0.0.1:8888/restapi/posts/?search=关键词
    filter_backends = (DjangoFilterBackend, filters.SearchFilter,)
    filter_fields = ('cate_id',)
    search_fields = ('post_title',)

    def perform_create(self, serializer):
        serializer.save(author_id=self.request.user.id)


class PostDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Post.objects.all()
    serializer_class = PostSerializer


class PostHighlight(generics.GenericAPIView):
    queryset = Post.objects.all()
    renderer_classes = (renderers.StaticHTMLRenderer,)

    def get(self, request, *args, **kwargs):
        post = self.get_object()
        return Response(post.post_title)




