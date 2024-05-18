from django.contrib import admin
from .models import Category, ItemDetails

class CategoryAdmin(admin.ModelAdmin):
    list_display = ('category', 'created', 'updated')
    search_fields = ('category',)
    readonly_fields = ('created', 'updated')

    fieldsets = (
        (None, {
            'fields': ('category',),
        }),
        ('Dates', {
            'fields': ('created', 'updated'),
            'classes': ('collapse',),  # Add 'collapse' class to collapse this fieldset by default
        }),
    )

    add_fieldsets = ((None, {'classes': ('wide'), 'fields': ('category')}))

class ItemDetailAdmin(admin.ModelAdmin):
    list_display = ('item_name', 'contact_no', 'location', 'category', 'created', 'updated')
    readonly_fields = ('created', 'updated')
    search_fields = ('item_name', 'location', 'contact_no')

    fieldsets = (
        (None, {
            'fields': ('item_name', 'contact_no', 'location', 'category', 'image', 'description'),
        }),
        ('Dates', {
            'fields': ('created', 'updated'),
            'classes': ('collapse',),  # Add 'collapse' class to collapse this fieldset by default
        }),
    )

    ordering = ['-created']

admin.site.register(ItemDetails, ItemDetailAdmin)
admin.site.register(Category, CategoryAdmin)
