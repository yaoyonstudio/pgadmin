from django.shortcuts import render

from .models import Customer, Author, Publisher, BookCate, Book, BookImg, BookComment, Cart, Order

# Create your views here.
def index(request):
    cates = BookCate.objects.filter(parent=None)
    for c in cates:
        c.sub = c.bookcate.all()
    # cates = BookCate.objects.filter(relation_target__in = )
    print(cates)
    context = { 'title': 'Book Store', 'cates': cates }
    return render(request, 'bookstore/index.html', context)

