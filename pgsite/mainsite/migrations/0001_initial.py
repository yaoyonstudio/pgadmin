# Generated by Django 2.0.2 on 2018-02-09 17:58

import ckeditor_uploader.fields
from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Comment',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('comment_content', models.TextField(verbose_name='评论内容')),
                ('comment_isopen', models.BooleanField(choices=[(1, '显示'), (0, '不显示')], default=1, verbose_name='是否显示')),
                ('comment_thumbup', models.IntegerField(default=0)),
                ('comment_thumbdown', models.IntegerField(default=0)),
                ('create_time', models.DateTimeField(auto_now=True, verbose_name='发布日期')),
                ('update_time', models.DateTimeField(auto_now=True, verbose_name='更新日期')),
                ('author', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': '文章评论',
                'verbose_name_plural': '管理文章评论',
            },
        ),
        migrations.CreateModel(
            name='Config',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('config_key', models.CharField(max_length=255, verbose_name='配置键名')),
                ('config_value', models.TextField(verbose_name='配置键值')),
                ('config_desc', models.CharField(max_length=255, null=True, verbose_name='配置描述')),
                ('create_time', models.DateTimeField(auto_now=True, verbose_name='发布日期')),
                ('update_time', models.DateTimeField(auto_now=True, verbose_name='更新日期')),
            ],
            options={
                'verbose_name': '配置',
                'verbose_name_plural': '管理配置',
            },
        ),
        migrations.CreateModel(
            name='Post',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('featuredimg', models.FileField(null=True, upload_to='featured/%Y/%m/%d/', verbose_name='特色图像')),
                ('post_title', models.CharField(max_length=255, verbose_name='标题')),
                ('post_description', models.TextField(null=True, verbose_name='摘要')),
                ('post_source', models.CharField(max_length=255, null=True, verbose_name='来源')),
                ('post_sourcelink', models.URLField(max_length=255, null=True, verbose_name='来源链接')),
                ('post_hits', models.IntegerField(default=0)),
                ('post_thumbup', models.IntegerField(default=0)),
                ('post_thumbdown', models.IntegerField(default=0)),
                ('post_keywords', models.CharField(max_length=255, null=True, verbose_name='关键词')),
                ('post_content', ckeditor_uploader.fields.RichTextUploadingField(verbose_name='内容')),
                ('post_isopen', models.BooleanField(choices=[(1, '显示'), (0, '不显示')], default=1, verbose_name='是否发布')),
                ('post_isrecommend', models.BooleanField(choices=[(1, '推荐'), (0, '不推荐')], default=0, verbose_name='是否推荐')),
                ('create_time', models.DateTimeField(auto_now=True, verbose_name='发布日期')),
                ('update_time', models.DateTimeField(auto_now=True, verbose_name='更新日期')),
                ('author', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': '文章',
                'verbose_name_plural': '管理文章',
            },
        ),
        migrations.CreateModel(
            name='Postcate',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cate_title', models.CharField(max_length=255, verbose_name='类别标题')),
                ('cate_name', models.CharField(max_length=255, verbose_name='类别名称')),
                ('create_time', models.DateTimeField(auto_now=True, verbose_name='发布日期')),
                ('update_time', models.DateTimeField(auto_now=True, verbose_name='更新日期')),
                ('author', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
                ('parent', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='mainsite.Postcate', verbose_name='父级类别')),
            ],
            options={
                'verbose_name': '文章类别',
                'verbose_name_plural': '管理文章类别',
            },
        ),
        migrations.CreateModel(
            name='Postimg',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('img_title', models.CharField(max_length=255, null=True, verbose_name='标题')),
                ('img', models.FileField(max_length=255, null=True, upload_to='', verbose_name='图片')),
                ('img_thumburl', models.CharField(max_length=255, null=True, verbose_name='')),
                ('img_commonurl', models.CharField(max_length=255, null=True)),
                ('img_originurl', models.CharField(max_length=255, null=True)),
                ('create_time', models.DateTimeField(auto_now=True, verbose_name='发布日期')),
                ('update_time', models.DateTimeField(auto_now=True, verbose_name='更新日期')),
                ('author', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': '文章图片',
                'verbose_name_plural': '管理文章图片',
            },
        ),
        migrations.CreateModel(
            name='Profile',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nickname', models.CharField(max_length=20, null=True, verbose_name='昵称')),
                ('avatar', models.FileField(max_length=255, null=True, upload_to='', verbose_name='头像')),
                ('address', models.CharField(max_length=255, null=True, verbose_name='地址')),
                ('token', models.CharField(max_length=255, null=True)),
                ('openid', models.CharField(max_length=255, null=True)),
                ('qq', models.CharField(max_length=20, null=True, verbose_name='QQ')),
                ('mobile', models.CharField(max_length=20, null=True, verbose_name='手机')),
                ('sex', models.BooleanField(choices=[(1, '男'), (0, '女')], default=1, verbose_name='性别')),
                ('ip', models.GenericIPAddressField(null=True, verbose_name='IP')),
                ('birthday', models.DateField(null=True, verbose_name='生日')),
                ('create_time', models.DateTimeField(auto_now=True, verbose_name='发布日期')),
                ('update_time', models.DateTimeField(auto_now=True, verbose_name='更新日期')),
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL, verbose_name='用户')),
            ],
            options={
                'verbose_name': '用户信息',
                'verbose_name_plural': '用户信息',
            },
        ),
        migrations.CreateModel(
            name='Slide',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('slide_title', models.CharField(max_length=255, verbose_name='标题')),
                ('slide_link', models.URLField(max_length=255, null=True, verbose_name='链接地址')),
                ('slide_img', models.FileField(max_length=255, upload_to='', verbose_name='图片')),
                ('create_time', models.DateTimeField(auto_now=True, verbose_name='发布日期')),
                ('update_time', models.DateTimeField(auto_now=True, verbose_name='更新日期')),
            ],
            options={
                'verbose_name': '滑动图',
                'verbose_name_plural': '滑动图',
            },
        ),
        migrations.AddField(
            model_name='post',
            name='cate',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='mainsite.Postcate', verbose_name='文章类别'),
        ),
        migrations.AddField(
            model_name='comment',
            name='post',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='mainsite.Post'),
        ),
    ]
