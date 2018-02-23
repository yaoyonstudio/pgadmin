from rest_framework import serializers
from rest_framework.renderers import JSONRenderer
from django.utils.six import BytesIO
from rest_framework.parsers import JSONParser

import django_filters

from django.core import serializers as django_serializers
import json
from django.forms.models import model_to_dict

from django.contrib.auth.models import User
from django.contrib.auth import authenticate
from pgsite.mainsite.models import Config, Slide, Profile, Postcate, Postimg, Post, Comment, IS_OPEN_CHOICES, IS_RECOMMEND_CHOICES


class ProfileSerializer(serializers.HyperlinkedModelSerializer):
    owner = serializers.ReadOnlyField(source='owner.username')
    highlight = serializers.HyperlinkedIdentityField(view_name='profile-highlight', format='html')
    class Meta:
        model = Profile
        fields = ('id', 'nickname', 'avatar', 'url', 'highlight', 'owner',)


class UserSerializer(serializers.Serializer):
    class Meta:
        model = User
        fields = ('id', 'username')


class PostcateSerializer(serializers.HyperlinkedModelSerializer):
    owner = serializers.ReadOnlyField(source='owner.username')
    highlight = serializers.HyperlinkedIdentityField(view_name='postcate-highlight', format='html')
    class Meta:
        model = Postcate
        fields = ('id', 'author_id', 'cate_name', 'cate_title', 'parent', 'url', 'highlight', 'owner')

    def create(self, validated_data):
        return Postcate.objects.create(**validated_data)

    def update(self, instance, validated_data):
        instance.cate_name = validated_data.get('cate_name', instance.cate_name)
        instance.cate_title = validated_data.get('cate_title', instance.cate_title)
        instance.parent_id = validated_data.get('parent_id', instance.parent_id)
        instance.save()
        return instance


# class PostSerializer(serializers.Serializer):
class PostSerializer(serializers.HyperlinkedModelSerializer):
    owner = serializers.ReadOnlyField(source='owner.username')
    highlight = serializers.HyperlinkedIdentityField(view_name='post-highlight', format='html')

    class Meta:
        model = Post
        fields = ('id', 'author_id', 'cate_id', 'cate_title', 'cate', 'author', 'post_title', 'post_description', 'post_keywords', 'post_content', 'post_source', 'post_sourcelink', 'featuredimg', 'post_isopen', 'post_isrecommend', 'url', 'highlight', 'owner')

    cate = PostcateSerializer(read_only=True)

    # 添加类别标题字段
    cate_title = serializers.SerializerMethodField()
    # 添加文章作者相关信息字段（username, nickname, avatar）
    author = serializers.SerializerMethodField(read_only=True)

    def get_cate_title(self, obj):
        return obj.cate.cate_title

    def get_author(self, obj):
        profile = Profile.objects.get(user_id=obj.author_id)
        stream = model_to_dict(profile)
        profile_dict = {
            'username': obj.author.username,
            'nickname': stream['nickname'],
            'avatar': stream['avatar'].url,
        }
        return profile_dict

    def create(self, validated_data):
        return Post.objects.create(**validated_data)

    def update(self, instance, validated_data):
        instance.cate_id = validated_data.get('cate_id', instance.cate_id)
        instance.post_title = validated_data.get('post_title', instance.post_title)
        instance.post_description = validated_data.get('post_description', instance.post_description)
        instance.post_content = validated_data.get('post_content', instance.post_content)
        instance.post_keywords = validated_data.get('post_keywords', instance.post_keywords)
        instance.post_source = validated_data.get('post_source', instance.post_source)
        instance.post_sourcelink = validated_data.get('post_sourcelink', instance.post_sourcelink)
        instance.featuredimg = validated_data.get('featuredimg', instance.featuredimg)
        instance.post_isopen = validated_data.get('post_isopen', instance.post_isopen)
        instance.post_isrecommend = validated_data.get('post_isrecommend', instance.post_isrecommend)
        instance.save()
        return instance





