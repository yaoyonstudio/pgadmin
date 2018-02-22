from django.shortcuts import render
from django.http import HttpResponse

def index(request):
    context = { 'title': '测试 ' }
    return HttpResponse('Hello, django!')