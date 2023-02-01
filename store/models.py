from django.db import models
import uuid

# Create your models here.
class brand(models.Model):
    brandName=models.CharField(max_length=50,unique=True)
    brandImage=models.ImageField(upload_to="brand/")
    brandDescription=models.TextField(max_length=800)
    brandPrimeColour=models.CharField(max_length=20,default="")
    brandSecondaryColour=models.CharField(max_length=20,default="")

    def __str__(self):
        return (self.brandName).capitalize()  

class productvariant(models.Model):
    ram=models.IntegerField()
    storage=models.IntegerField()
    variantName=models.CharField(max_length=50)

    def __str__(self):
        return f"( {self.ram} / {self.storage} ) GB"


class product(models.Model):
    brand=models.ForeignKey(brand,on_delete=models.CASCADE,related_name="products")
    productName = models.CharField(max_length=50)
    variant=models.ForeignKey(productvariant,on_delete=models.CASCADE,related_name="productconfgs")
    color=models.CharField(max_length=50)
    productimage=models.ImageField(upload_to="phones/")
    specs=models.TextField(max_length=1000,default="")
    mrp=models.IntegerField(default=0)
    discount=models.IntegerField(default=0)
    class Meta:
        unique_together = ('productName', 'color' , 'variant')


    def __str__(self):
        return f"{self.productName}   ( {self.variant.ram} / {self.variant.storage} ) GB {self.color}"

class userinfo(models.Model):
    userId=models.UUIDField(primary_key=True,default=uuid.uuid4,editable=False)
    firstname=models.CharField(max_length=50)
    lastname=models.CharField(max_length=50)
    email=models.EmailField(max_length=100,unique=True)
    phone=models.CharField(max_length=10,unique=True)
    password=models.CharField(max_length=100)
    pincode=models.IntegerField(default=0)
    shippingAddress=models.TextField(max_length=500,default='')
    profileImage=models.ImageField(upload_to="user/",default="")

    def __str__(self):
        return f"{self.firstname.capitalize()} {self.lastname.capitalize()}"

class cartitem(models.Model):
    item=models.ForeignKey(product,on_delete=models.CASCADE,related_name="cartproduct")
    user=models.ForeignKey(userinfo,on_delete=models.CASCADE,related_name="cartholder")

    def __str__(self):
        return f"User : {self.user.firstname} {self.user.lastname} / Product :- {self.item.productName} {self.item.variant.variantName} {self.item.color}"