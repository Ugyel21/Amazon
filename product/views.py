from django.shortcuts import render
from .models import ItemDetails, Category

def index(request):
    item_details = ItemDetails.objects.all()
    categories = Category.objects.all()
    context = {
        'item_details': item_details,
        'categories': categories
    }
    return render(request, 'index.html', context)

def item_detail(request, pk):
    categories = Category.objects.all()
    item_detail = ItemDetails.objects.get(id=pk)

    context = {
        'item_detail': item_detail,
        'categories': categories
    }
    return render(request, 'item_detail.html', context)

def category_item_detail(request, pk):
    item_details = ItemDetails.objects.filter(category=pk)
    categories = Category.objects.all()
    category = Category.objects.get(id=pk)

    context = {
        'item_details': item_details,
        'category': category,
        'categories': categories
    }
    return render(request, 'category_display.html', context)
