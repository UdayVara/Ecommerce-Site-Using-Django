from django.contrib import admin
from django.urls import path
from . import views
from django.conf import settings
from django.conf.urls.static import static

app_name="store"
urlpatterns = [
    path('', views.index,name="home"),
    path('brands', views.brands,name="brands"),
    path('products', views.products,name="products"),
    path('products/<str:company>', views.brandproducts,name="brandproducts"),
    path('products/<str:company>/<str:phone>/<str:colour>', views.individualProducts,name="individualproducts"),
    path('cart', views.cart,name="cart"),
    path('add2cart/<str:id>/<str:color>', views.add2cart,name="addcart"),
    path('delcart/<str:id>', views.delcart,name="delcart"),
    path('logout', views.logout,name="logout"),
    path('user', views.user,name="user"),
    path('update-account-info', views.update,name="update"),
]+ static(settings.MEDIA_URL, document_root = settings.MEDIA_ROOT)
