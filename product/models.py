from django.db import models
import uuid

class Category(models.Model):
    id = models.UUIDField(default=uuid.uuid4, primary_key=True, unique=True, editable=False)
    category = models.CharField(max_length=50, null=True, blank=False)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.category

class ItemDetails(models.Model):
    id = models.UUIDField(default=uuid.uuid4, primary_key=True, unique=True, editable=False)
    item_name = models.CharField(max_length=50, blank=False, null=False)
    price = models.IntegerField(default=0)
    location = models.CharField(max_length=50, blank=False, null=False)
    category = models.ForeignKey('Category', related_name='category_type', on_delete=models.CASCADE)
    description = models.TextField(max_length=500, blank=True, null=True)
    contact_no = models.IntegerField(default=0)
    image = models.ImageField(blank=False, null=False, upload_to='images/', default='images/user-default.png')
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.item_name

