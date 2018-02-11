import binascii
import os

from django.db import models
from django.contrib.auth.models import User
# from django.contrib.auth.models import AbstractUser
from ckeditor_uploader.fields import RichTextUploadingField


# class User(AbstractUser):
#     token = models.CharField(max_length=40)
#
#     def save(self, *args, **kwargs):
#         if not self.token:
#             self.token = binascii.hexlify(os.urandom(20)).decode()
#         return super().save(*args, **kwargs)
#

SEX_CHOICES = (
    (1, '男'),
    (0, '女')
)
IS_OPEN_CHOICES = (
    (1, '显示'),
    (0, '不显示')
)
IS_RECOMMEND_CHOICES = (
    (1, '推荐'),
    (0, '不推荐')
)

class Config(models.Model):
    config_key = models.CharField('配置键名', max_length=255)
    config_value = models.TextField('配置键值')
    config_desc = models.CharField('配置描述', max_length=255, null=True)
    create_time = models.DateTimeField('发布日期', auto_now=True)
    update_time = models.DateTimeField('更新日期', auto_now=True)

    class Meta:
        verbose_name = '配置'
        verbose_name_plural = '管理配置'

    def __str__(self):
        return self.config_key

class Slide(models.Model):
    slide_title = models.CharField('标题', max_length=255)
    slide_link = models.URLField('链接地址', max_length=255, null=True)
    slide_img = models.FileField('图片', max_length=255)
    create_time = models.DateTimeField('发布日期', auto_now=True)
    update_time = models.DateTimeField('更新日期', auto_now=True)

    class Meta:
        verbose_name = '滑动图'
        verbose_name_plural = '滑动图'

    def __str__(self):
        return self.slide_title


class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE, verbose_name='用户')
    nickname = models.CharField('昵称', max_length=20, null=True)
    avatar = models.FileField('头像', max_length=255, null=True)
    address = models.CharField('地址', max_length=255, null=True)
    token = models.CharField(max_length=255, null=True)
    openid = models.CharField(max_length=255, null=True)
    qq = models.CharField('QQ', max_length=20, null=True)
    mobile = models.CharField('手机', max_length=20, null=True)
    sex = models.BooleanField('性别', choices=SEX_CHOICES, default=1)
    ip = models.GenericIPAddressField('IP', null=True)
    birthday = models.DateField('生日', null=True)
    create_time = models.DateTimeField('发布日期', auto_now=True)
    update_time = models.DateTimeField('更新日期', auto_now=True)

    class Meta:
        verbose_name = '用户信息'
        verbose_name_plural = '用户信息'

    def __str__(self):
        return self.nickname


class Postcate(models.Model):
    cate_title = models.CharField('类别标题', max_length=255)
    cate_name = models.CharField('类别名称', max_length=255)
    author = models.ForeignKey(User, on_delete=models.CASCADE, null=True, blank=True)
    parent = models.ForeignKey('Postcate', on_delete=models.CASCADE, null=True, blank=True, verbose_name='父级类别')
    create_time = models.DateTimeField('发布日期', auto_now=True)
    update_time = models.DateTimeField('更新日期', auto_now=True)

    class Meta:
        verbose_name = '文章类别'
        verbose_name_plural = '管理文章类别'

    def __str__(self):
        return self.cate_title

class Postimg(models.Model):
    author = models.ForeignKey(User, on_delete=models.CASCADE, null=True, blank=True)
    img_title = models.CharField('标题', max_length=255, null=True)
    img = models.FileField('图片', max_length=255, null=True)
    img_thumburl = models.CharField('', max_length=255, null=True)
    img_commonurl = models.CharField(max_length=255, null=True)
    img_originurl = models.CharField(max_length=255, null=True)
    create_time = models.DateTimeField('发布日期', auto_now=True)
    update_time = models.DateTimeField('更新日期', auto_now=True)

    class Meta:
        verbose_name = '文章图片'
        verbose_name_plural = '管理文章图片'

    def __str__(self):
        return self.img_commonurl



class Post(models.Model):
    author = models.ForeignKey(User, on_delete=models.CASCADE, null=True, blank=True)
    cate = models.ForeignKey('Postcate', on_delete=models.CASCADE, null=True, verbose_name='文章类别')
    # featuredimg = models.ForeignKey('Postimg', on_delete=models.CASCADE, null=True)
    featuredimg = models.FileField(upload_to='featured/%Y/%m/%d/', null=True, verbose_name='特色图像')
    post_title = models.CharField('标题', max_length=255)
    post_description = models.TextField('摘要', null=True)
    post_source = models.CharField('来源', max_length=255, null=True)
    post_sourcelink = models.URLField('来源链接', max_length=255, null=True)
    post_hits = models.IntegerField(default=0)
    post_thumbup = models.IntegerField(default=0)
    post_thumbdown = models.IntegerField(default=0)
    post_keywords = models.CharField('关键词', max_length=255, null=True)
    post_content = RichTextUploadingField('内容')
    post_isopen = models.BooleanField('是否发布', choices=IS_OPEN_CHOICES, default=1)
    post_isrecommend = models.BooleanField('是否推荐', choices=IS_RECOMMEND_CHOICES, default=0)
    create_time = models.DateTimeField('发布日期', auto_now=True)
    update_time = models.DateTimeField('更新日期', auto_now=True)

    class Meta:
        verbose_name = '文章'
        verbose_name_plural = '管理文章'

    def __str__(self):
        return self.post_title


class Comment(models.Model):
    author = models.ForeignKey(User, on_delete=models.CASCADE, null=True, blank=True)
    post = models.ForeignKey('Post', on_delete=models.CASCADE, null=True)
    comment_content = models.TextField('评论内容')
    comment_isopen = models.BooleanField('是否显示', choices=IS_OPEN_CHOICES, default=1)
    comment_thumbup = models.IntegerField(default=0)
    comment_thumbdown = models.IntegerField(default=0)
    create_time = models.DateTimeField('发布日期', auto_now=True)
    update_time = models.DateTimeField('更新日期', auto_now=True)

    class Meta:
        verbose_name = '文章评论'
        verbose_name_plural = '管理文章评论'

    def __str__(self):
        return self.comment_content
