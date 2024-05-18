from django.contrib import admin
from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('item-detail/<str:pk>/', views.item_detail, name='item-detail'),
    path('category/<str:pk>/', views.category_item_detail, name='category'),
]
