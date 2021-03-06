# Generated by Django 2.0.2 on 2018-06-02 09:08

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('bookstore', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='book',
            name='book_alias',
            field=models.CharField(max_length=250, null=True, verbose_name='别名'),
        ),
        migrations.AddField(
            model_name='book',
            name='book_excerpt',
            field=models.CharField(max_length=250, null=True, verbose_name='简介'),
        ),
        migrations.AddField(
            model_name='book',
            name='book_ishot',
            field=models.BooleanField(choices=[(0, '正常'), (1, '热门')], default=0, verbose_name='是否热门'),
        ),
        migrations.AddField(
            model_name='bookcate',
            name='alias',
            field=models.CharField(max_length=100, null=True, verbose_name='分类别名'),
        ),
        migrations.AddField(
            model_name='bookcate',
            name='featured_img',
            field=models.ImageField(blank=True, null=True, upload_to='bookcate_img/%Y/%m/%d/', verbose_name='类别特色图像'),
        ),
        migrations.AddField(
            model_name='bookcate',
            name='is_recommend',
            field=models.BooleanField(choices=[(0, '不推荐'), (1, '推荐')], default=0, verbose_name='是否推荐'),
        ),
        migrations.AlterField(
            model_name='bookimg',
            name='book',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='bookimgs', to='bookstore.Book', verbose_name='书籍'),
        ),
        migrations.AlterField(
            model_name='bookimg',
            name='bookimg_img',
            field=models.ImageField(max_length=255, null=True, upload_to='book_photo', verbose_name='图片'),
        ),
        migrations.AlterField(
            model_name='customer',
            name='avatar',
            field=models.ImageField(max_length=255, null=True, upload_to='customer', verbose_name='头像'),
        ),
        migrations.AlterField(
            model_name='publisher',
            name='publisher_logo',
            field=models.ImageField(blank=True, null=True, upload_to='publisher', verbose_name='出版社LOGO'),
        ),
    ]
