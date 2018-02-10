# 不使用Relay(Plain)
import graphene
from graphene_django.types import DjangoObjectType

# --------------------------------------------------------------

# 使用Relay
from graphene import relay, ObjectType, Mutation
from graphene_django import DjangoObjectType
from graphene_django.filter import DjangoFilterConnectionField

# 导入Model
from django.contrib.auth.models import User
from django.contrib.auth import authenticate
from pgsite.mainsite.models import Config, Slide, Profile, Postcate, Postimg, Post, Comment

import django_filters

# --------------------------------------------------------------

# Plain方式创建PostcateType
# class PostcateType(DjangoObjectType):
#     class Meta:
#         model = Postcate
# Plain方式创建PostType
# class PostType(DjangoObjectType):
#     class Meta:
#         model = Post

# class Query(object):
#     # 使用plain方式创建catePlain/catesPlain/postPlain/postsPlain查询
#     catePlain = graphene.Field(PostcateType, id=graphene.Int())
#     postPlain = graphene.Field(PostType, id=graphene.Int())
#     catesPlain = graphene.List(PostcateType)
#     postsPlain = graphene.List(PostType)
#
#     def resolve_catePlain(self, info, **kwargs):
#         id = kwargs.get('id')
#         if id is not None:
#             return Postcate.objects.get(pk=id)
#
#     def resolve_postPlain(self, info, **kwargs):
#         id = kwargs.get('id')
#         if id is not None:
#             return Post.objects.get(pk=id)
#
#     def resolve_catesPlain(self, info, **kwargs):
#         return Postcate.objects.all()
#
#     def resolve_postsPlain(self, info, **kwargs):
#         return Post.objects.all()


# --------------------------------------------------------------

class UserNode(DjangoObjectType):
    class Meta:
        model = User
        only_fields = ['id', 'last_login', 'username', 'email', 'profile']
        interfaces = (relay.Node,)

class ProfileNode(DjangoObjectType):
    class Meta:
        model = Profile
        exclude_fields = ['token', 'openid', 'mobile']
        interfaces = (relay.Node,)

class Login(Mutation):
    user = graphene.Field(UserNode)

    class Arguments:
        username = graphene.String()
        password = graphene.String()

    def mutate(self, info, **input):
        user = authenticate(username=input['username'], password = input['password'])
        print('input:', input)
        print('user:', user)
        if not user:
            raise Exception('Invalid username or password')

        info.context.session['token'] = user.token
        return Login(user=user)


# 使用Relay创建PostcateNode
class PostcateNode(DjangoObjectType):
    class Meta:
        model = Postcate
        filter_fields = ['cate_name', 'cate_title']
        interfaces = (relay.Node,)

# 使用Relay创建PostNode
class PostNode(DjangoObjectType):
    class Meta:
        model = Post
        filter_fields = {
            'post_title': ['exact', 'icontains', 'istartswith'],
            'cate': ['exact'],
            'cate__cate_name': ['exact']
        }
        interfaces = (relay.Node,)

class CreatePostcate(Mutation):
    class Arguments:
        cate_title = graphene.String()
        cate_name = graphene.String()
        parent_id = graphene.Int()

    form_errors = graphene.String()
    postcate = graphene.Field(PostcateNode)

    @staticmethod
    def mutate(root, info, **input):
        # context will reference to the Django request
        if info.context.user.is_anonymous:
            return CreatePostcate(form_errors='please login')
        postcate = Postcate.objects.create(author_id=1, cate_title=input['cate_title'], cate_name=input['cate_name'], parent_id=input['parent_id'])
        return CreatePostcate(postcate=postcate, form_errors=None)

class Mutation(ObjectType):
    create_postcate = CreatePostcate.Field()
    login = Login.Field()

class Query(ObjectType):
    # 使用Relay方式可以非常简便地创建创建cate/cates/post/posts查询
    cate = relay.Node.Field(PostcateNode)
    cates = DjangoFilterConnectionField(PostcateNode)
    post = relay.Node.Field(PostNode)
    posts = DjangoFilterConnectionField(PostNode)

    # 过滤
    def resolve_posts(self, info):
        return Post.objects.filter(post_isopen=1)


