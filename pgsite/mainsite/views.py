from django.shortcuts import render
from django.http import HttpResponse

from .models import Config, Slide


def getConfig():
    config = {}
    tmp = {}
    config['config'] = Config.objects.all().values()
    for item in config['config']:
        tmp[item['config_key']] = item['config_value']
    return tmp

def index(request):
    context = {}
    context['title'] = 'My Django Site'
    context['sliders'] = Slide.objects.all()
    context['config'] = getConfig()
    return render(request, 'front/index.html', context)


def main(request):
    context = { 'title': '测试 ' }
    return HttpResponse('Main Page!')