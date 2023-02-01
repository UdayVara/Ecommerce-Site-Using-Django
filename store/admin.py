from django.contrib import admin
from .models import brand,product,productvariant,userinfo,cartitem


# Register your models here.
admin.site.register(brand)
admin.site.register(productvariant)
admin.site.register(product)    
admin.site.register(userinfo)    
admin.site.register(cartitem)    