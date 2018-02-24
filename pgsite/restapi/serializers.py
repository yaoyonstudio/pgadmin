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
    cate = serializers.SlugRelatedField(queryset=Postcate.objects.all(), slug_field='id')

    class Meta:
        model = Post
        fields = ('id', 'author_id', 'cate_id', 'cate_title', 'cate', 'author', 'post_title', 'post_description', 'post_keywords', 'post_content', 'post_source', 'post_sourcelink', 'featuredimg', 'post_isopen', 'post_isrecommend', 'comments', 'url', 'highlight', 'owner')
        read_only_fields = ('cates',)

    # 添加类别标题字段
    cate_title = serializers.SerializerMethodField()

    # 添加文章作者相关信息字段（username, nickname, avatar）
    author = serializers.SerializerMethodField(read_only=True)
    comments = serializers.SerializerMethodField(read_only=True)

    def get_cate_title(self, obj):
        return obj.cate.cate_title

    def get_author(self, obj):
        if obj.author_id:
            profile = Profile.objects.get(user_id=obj.author_id)
            if profile is not None:
                stream = model_to_dict(profile)
                profile_dict = {
                    'author_id': stream['id'],
                    'username': obj.author.username,
                    'nickname': stream['nickname'],
                    'avatar': stream['avatar'].url,
                }
                return profile_dict
        else:
            return ''

    def get_comments(self, obj):
        comments = Comment.objects.filter(post_id=obj.id)
        comment_json = []
        for item in comments:
            comment_json.append({
                'post_id': item.post_id,
                'author_id': item.author_id,
                'comment_content': item.comment_content,
                'comment_isopen': item.comment_isopen,
                'comment_thumbup': item.comment_thumbup,
                'comment_thumbdown': item.comment_thumbdown,
                'create_time': item.create_time,
            })
        return comment_json

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




class CommentSerializer(serializers.HyperlinkedModelSerializer):
    owner = serializers.ReadOnlyField(source='owner.username')
    highlight = serializers.HyperlinkedIdentityField(view_name='comment-highlight', format='html')
    post = serializers.SlugRelatedField(queryset=Post.objects.all(), slug_field='id')

    class Meta:
        model = Comment
        fields = ('id', 'author_id', 'post_id', 'post', 'comment_content', 'comment_isopen', 'comment_thumbup', 'comment_thumbdown', 'create_time', 'url', 'highlight', 'owner',)
        read_only_fields = ('post', 'comment_thumbup', 'comment_thumbdown',)

    def create(self, validated_data):
        return Comment.objects.create(**validated_data)

    def update(self, instance, validated_data):
        instance.comment_content = validated_data.get('comment_content', instance.comment_content)
        instance.comment_isopen = validated_data.get('comment_isopen', instance.comment_isopen)
        instance.save()
        return instance


