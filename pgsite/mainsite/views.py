from django.shortcuts import render
from django.http import HttpResponse

from .models import Config, Slide, Post


def getConfig():
    config = {}
    tmp = {}
    config['config'] = Config.objects.all().values()
    for item in config['config']:
        tmp[item['config_key']] = item['config_value']
    return tmp

def getPost():
    return Post.objects.all()[:10]

def index(request):
    context = {}
    context['title'] = 'My Django Site'
    context['sliders'] = Slide.objects.all()
    context['config'] = getConfig()
    context['posts'] = getPost()
    return render(request, 'front/home.html', context)


def post_detail(request, id):
    context = {}
    context['post'] = Post.objects.get(pk=id)
    return render(request, 'front/post_detail.html', context)


def main(request):
    context = { 'title': '测试 ' }
    return HttpResponse('Main Page!')