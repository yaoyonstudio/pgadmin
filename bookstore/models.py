from django.db import models
import binascii
import os
import datetime
from django.contrib.auth.models import User
from ckeditor_uploader.fields import RichTextUploadingField
from django.utils.safestring import mark_safe
from django.db.models.signals import post_save


SEX_CHOICES = (
    (1, '男'),
    (0, '女')
)

BOOK_SIZE_CHOICES = (
    (1, '64开'),
    (2, '42开'),
    (3, '36开'),
    (4, '32开'),
    (5, '24开'),
    (6, '20开'),
    (7, '16开'),
    (8, '12开'),
    (9, '8开'),
    (10, '6开'),
    (11, '4开'),
    (12, '对开'),
)

BOOK_PACKING_CHOICES = (
    (1, '平装'),
    (2, '精装'),
    (3, '套装'),
)

BOOK_ISABLE_CHOICES = (
    (1, '显示'),
    (0, '不显示')
)

BOOK_RECOMMEND_CHOICES = (
    (0, '不推荐'),
    (1, '推荐')
)

BOOK_ORDER_STATUS = (
    (1, '未支付'),
    (2, '已支付'),
    (3, '已发货'),
    (4, '已完成'),
    (5, '退款中'),
    (6, '已退款'),
)


def get_years(initial=1970):
    return [(year, year) for year in range(datetime.datetime.now().year, initial, -1)]


# 客户 Customer
class Customer(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE, verbose_name='客户')
    nickname = models.CharField('昵称', max_length=20, null=True)
    avatar = models.FileField('头像', max_length=255, null=True)
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
        verbose_name = '客户信息'
        verbose_name_plural = '客户信息'

    def __str__(self):
        return self.nickname


# 定义创建档案方法
def create_customer(sender, **kwargs):
    if kwargs['created']:
        user_customer = Customer.objects.create(user=kwargs['instance'])

# 关联用户和档案创建行为
post_save.connect(create_customer, sender=User)


# 作者 Author
class Author(models.Model):
    author_name = models.CharField('姓名', max_length=100, null=False)
    author_nickname = models.CharField('作者', max_length=100, null=False)
    author_country = models.CharField('国家', max_length=100, null=False)
    author_desc = RichTextUploadingField('作者简介')

    create_time = models.DateTimeField('发布日期', auto_now=True)
    update_time = models.DateTimeField('更新日期', auto_now=True)

    class Meta:
        verbose_name = '作者信息'
        verbose_name_plural = '作者信息'

    def __str__(self):
        return self.author_nickname


# 出版社 Publisher
class Publisher(models.Model):
    publisher_name = models.CharField('出版社', max_length=100, null=False)
    publisher_logo = models.FileField(upload_to='logo/%Y/%m/%d/', null=True, verbose_name='出版社LOGO', blank=True)
    publisher_desc = models.CharField('出版社介绍', max_length=200, null=False)

    create_time = models.DateTimeField('发布日期', auto_now=True)
    update_time = models.DateTimeField('更新日期', auto_now=True)

    class Meta:
        verbose_name = '出版社信息'
        verbose_name_plural = '出版社信息'

    def __str__(self):
        return self.publisher_name


# 书籍分类 BookCate
class BookCate(models.Model):
    bookcate_name = models.CharField('分类名', max_length=100, null=False)
    bookcate_parent = models.ForeignKey('self', blank=True, null=True, on_delete=None, parent_link=True, related_name='children')

    create_time = models.DateTimeField('发布日期', auto_now=True)
    update_time = models.DateTimeField('更新日期', auto_now=True)

    class Meta:
        managed = False
        verbose_name = '书籍分类'
        verbose_name_plural = '书籍分类'

    def __str__(self):
        return self.bookcate_name


# 书籍 Book
class Book(models.Model):
    book_name = models.CharField('书名', max_length=250, null=False)
    book_isbn = models.CharField('ISBN', max_length=50, null=False)
    book_version = models.CharField('版本', max_length=10, null=True, blank=True)
    book_lang = models.CharField('语言', max_length=100, null=True, blank=True)
    book_paper = models.CharField('用纸', max_length=100, null=True, blank=True)
    book_size =models.BooleanField('开本', choices=BOOK_SIZE_CHOICES, default=4)
    book_packing =models.BooleanField('装帧', choices=BOOK_PACKING_CHOICES, default=1)
    book_able =models.BooleanField('是否上架', choices=BOOK_ISABLE_CHOICES, default=1)
    book_recommend =models.BooleanField('是否推荐', choices=BOOK_RECOMMEND_CHOICES, default=1)
    book_publish_year = models.CharField(blank=False, max_length=4, choices=get_years(),
                                         default=datetime.datetime.now().year)
    book_pages = models.PositiveIntegerField('页数', null=True, blank=True)
    book_words = models.PositiveIntegerField('字数', null=True, blank=True)
    book_desc = RichTextUploadingField('书籍介绍', null=True, blank=True)
    book_content = RichTextUploadingField('目录', null=True, blank=True)
    book_preface = RichTextUploadingField('前言', null=True, blank=True)
    book_comments = RichTextUploadingField('书籍评价', null=True, blank=True)
    book_original_price = models.FloatField('原价')
    book_sale_price = models.FloatField('优惠价')
    book_sale_nums = models.PositiveIntegerField('销售数量', null=True, blank=True)

    author = models.ForeignKey('Author', on_delete=models.CASCADE, verbose_name='书籍作者')
    cate = models.ForeignKey('BookCate', on_delete=models.CASCADE, verbose_name='书籍类别')

    create_time = models.DateTimeField('发布日期', auto_now=True)
    update_time = models.DateTimeField('更新日期', auto_now=True)

    class Meta:
        verbose_name = '书籍信息'
        verbose_name_plural = '书籍信息'

    def __str__(self):
        return self.book_name



# 书籍相片 BookImg
class BookImg(models.Model):
    book = models.ForeignKey('Book', on_delete=models.CASCADE, verbose_name='书籍')
    bookimg_title = models.CharField('标题', max_length=255, null=True)
    bookimg_img = models.FileField('图片', max_length=255, null=True)
    bookimg_thumburl = models.CharField('', max_length=255, null=True)
    bookimg_commonurl = models.CharField(max_length=255, null=True)
    bookimg_originurl = models.CharField(max_length=255, null=True)
    create_time = models.DateTimeField('发布日期', auto_now=True)
    update_time = models.DateTimeField('更新日期', auto_now=True)

    class Meta:
        verbose_name = '文章图片'
        verbose_name_plural = '管理文章图片'

    def __str__(self):
        return self.img_title


# 书籍评论 BookComment
class BookComment(models.Model):
    customer = models.ForeignKey('Customer', on_delete=models.CASCADE, verbose_name='客户')
    book = models.ForeignKey('Book', on_delete=models.CASCADE,verbose_name='书籍')
    bookcomment_content = models.TextField('评论内容')
    bookcomment_isopen = models.BooleanField('是否显示', choices=BOOK_ISABLE_CHOICES, default=1)
    bookcomment_thumbup = models.IntegerField('点赞数', default=0)
    bookcomment_thumbdown = models.IntegerField('点踩数', default=0)
    create_time = models.DateTimeField('发布日期', auto_now=True)
    update_time = models.DateTimeField('更新日期', auto_now=True)

    class Meta:
        verbose_name = '文章评论'
        verbose_name_plural = '管理文章评论'

    def __str__(self):
        return self.comment_content


# 购物车 Cart
class Cart(models.Model):
    book = models.ForeignKey('Book', on_delete=models.CASCADE, verbose_name='书籍')
    customer = models.ForeignKey('Customer', on_delete=models.CASCADE, verbose_name='客户')
    nums = models.PositiveIntegerField('数量', default=1)

    create_time = models.DateTimeField('发布日期', auto_now=True)
    update_time = models.DateTimeField('更新日期', auto_now=True)


# 订单 Order
class Order(models.Model):
    customer = models.ForeignKey('Customer', on_delete=models.CASCADE, verbose_name='客户')
    goods = models.CharField('商品', max_length=250, null=False)
    status = models.BooleanField('订单状态', choices=BOOK_ORDER_STATUS, default=1)

    create_time = models.DateTimeField('发布日期', auto_now=True)
    update_time = models.DateTimeField('更新日期', auto_now=True)















