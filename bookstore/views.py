from django.shortcuts import render, redirect
from django.contrib.auth.forms import UserCreationForm
from bookstore.forms import RegistrationForm
from django.contrib.auth.decorators import login_required

from .models import Customer, Author, Publisher, BookCate, Book, BookImg, BookComment, Cart, Order

def index(request):
    cates = BookCate.objects.filter(parent=None)
    for c in cates:
        c.sub = c.bookcate.all()
        if c.sub:
            for s in c.sub:
                s.books = Book.objects.filter(cate_id=s.id)
                for b in s.books:
                    b.img = BookImg.objects.filter(book_id=b.id).first()

    context = { 'customer': request.user, 'cates': cates }
    return render(request, 'bookstore/index.html', context)



def register(request):
    if request.method == 'POST':
        form = RegistrationForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('/bookstore/login')
    else:
        form = RegistrationForm()
        context = {'form': form}
        return render(request, 'bookstore/customer/register.html', context)


@login_required
def profile(request):
    context = { 'customer': request.user }
    return render(request, 'bookstore/customer/profile.html', context)
