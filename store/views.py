from django.shortcuts import render
from django.http import HttpResponse,HttpResponseRedirect
from django.urls import reverse
from django.core.mail import send_mail
from django.core.mail import EmailMessage

from .models import brand,product,productvariant,userinfo,cartitem
import random

# Create your views here.
def index(request):
    oppoBrandObj=brand.objects.get(brandName="oppo")
    oppoSlide1=product.objects.filter(brand=oppoBrandObj).order_by("-mrp")[:3]
    oppoSlide2=product.objects.filter(brand=oppoBrandObj).order_by("-mrp")[3:6]
    oppoSlide3=product.objects.filter(brand=oppoBrandObj).order_by("-mrp")[6:9]
    samsungBrandObj=brand.objects.get(brandName="samsung")
    samsungSlide1=product.objects.filter(brand=samsungBrandObj).order_by("-mrp")[:3]
    samsungSlide2=product.objects.filter(brand=samsungBrandObj).order_by("-mrp")[3:6]
    samsungSlide3=product.objects.filter(brand=samsungBrandObj).order_by("-mrp")[6:9]
    appleBrandObj=brand.objects.get(brandName="apple")
    appleSlide1=product.objects.filter(brand=appleBrandObj).order_by("-mrp")[:3]
    appleSlide2=product.objects.filter(brand=appleBrandObj).order_by("-mrp")[3:6]
    appleSlide3=product.objects.filter(brand=appleBrandObj).order_by("-mrp")[6:9]
    realmeBrandObj=brand.objects.get(brandName="realme")
    realmeSlide1=product.objects.filter(brand=realmeBrandObj).order_by("-mrp")[:3]
    realmeSlide2=product.objects.filter(brand=realmeBrandObj).order_by("-mrp")[3:6]
    realmeSlide3=product.objects.filter(brand=realmeBrandObj).order_by("-mrp")[6:9]
    oneplusBrandObj=brand.objects.get(brandName="oneplus")
    oneplusSlide1=product.objects.filter(brand=oneplusBrandObj).order_by("-mrp")[:3]
    oneplusSlide2=product.objects.filter(brand=oneplusBrandObj).order_by("-mrp")[3:6]
    oneplusSlide3=product.objects.filter(brand=oneplusBrandObj).order_by("-mrp")[6:9]
    params={"opposlide1":oppoSlide1,"opposlide2":oppoSlide2,"opposlide3":oppoSlide3,"samsungslide1":samsungSlide1,"samsungslide2":samsungSlide2,"samsungslide3":samsungSlide3,"appleslide1":appleSlide1,"appleslide2":appleSlide2,"appleslide3":appleSlide3,
    "realmeslide1":realmeSlide1,"realmeslide2":realmeSlide2,"realmeslide3":realmeSlide3,
    "oneplusslide1":oneplusSlide1,"oneplusslide2":oneplusSlide2,"oneplusslide3":oneplusSlide3}
    return render(request, 'index.html',params)

def brands(request):
    obj=brand.objects.all()
    params={"brands": obj}
    return render(request, 'brands.html',params)

def products(request):
    return render(request, 'products.html')

def brandproducts(request,company):
    obj= brand.objects.all()
    availableBrands=[]
    for item in obj:
        availableBrands.append(item.brandName)  
    if company in availableBrands:
        compObj=brand.objects.get(brandName=company)
        phone=product.objects.filter(brand=compObj)
        params={"brand":compObj,"product":phone}
        # print(phone)
        return render(request, 'brandproducts.html',params)
    else:
        return HttpResponse("Invalid URL")

def individualProducts(request,company,phone,colour):
    
    try:
        obj= brand.objects.get(brandName=company)
        pro=product.objects.get(brand=obj,productName=phone,color=colour)
        colors=product.objects.filter(productName=phone)
        if 'user' not in request.session:
            params={"product":pro,"colors":colors,"ismsg":True,"msg":"Login required to use add to cart functionality"}
        else:
            params={"product":pro,"colors":colors,"ismsg":False,"msg":""}
        print(pro.brand.brandName)
        print(pro.productName)
        for item in colors:
                print(item.color)
        # print(colors)
        return render(request,'individualproducts.html',params)
    except Exception as e:
        return HttpResponse("Invalid URL")
   




def user(request):
    
    if 'user' in request.session:
        active=True
        message=""
        userObj=userinfo.objects.get(userId=request.session.get('user'))
        params={"loginStatus":active,"msg":message,"user":userObj}
        print("Logged in block")
        return render(request, 'user.html', params)
    else:
        if request.method == 'POST':

            mail=request.POST.get('email')
            passw=request.POST.get('password')

            try:
                userObj = userinfo.objects.get(email=mail,password=passw)
                print(f"{mail} {passw} {userObj}")
                if userObj:
                    request.session['user']=str(userObj.userId)
                    active=True
                    message=""
                    params={"loginStatus":active,"msg":message,"user":userObj}
                    print(request.session['user'])
                    return render(request, 'user.html', params)
            except Exception as e:
                active=False
                message="Invalid Credentials"
                params={"loginStatus":active,"msg":message}
                print("Invalid Credentials block")
                return render(request, 'user.html', params)
        else:
            active=False
            message=""
            params={"loginStatus":active,"msg":message}
            print("Default block")
            return render(request, 'user.html', params)

def update(request):
    if  'user' in request.session:
        fname=request.POST.get('fname')
        lname=request.POST.get('lname')
        phonen=request.POST.get('phno')
        mail=request.POST.get('email')
        pin=request.POST.get('pin')
        passw=request.POST.get('pass')
        shipment=request.POST.get('shipping')
        obj=userinfo.objects.get(userId=request.session.get('user'))
        print(fname)
        print(obj)
        obj.firstname=fname
        obj.lastname=lname
        obj.phone=phonen
        obj.email=mail
        obj.shippingAddress=shipment
        obj.pincode=pin
        obj.password=passw
        try:
            obj.save()
            params={"loginStatus":True,"user":obj}
            return render(request,'user.html',params)
        except Exception as e:
            return HttpResponse("failed")
        
        # otp = random.randrange(100000,999999,1)
        # print(otp)
        # email=EmailMessage("Your OTP for updating mobshop account info",
        # f"Your OTP for updating your account info in your mobshop account is : {otp}",
        # mail)
        # email.send()
        # print("sended")
        
def cart(request):
    isempty=True
    
    if 'user' not in request.session :
        params={"msg": "Login required to use add to cart functionality","ismsg":False,"isLoggedIn":False}
        return render(request, 'cart.html',params)
    else:
        userObj=request.session.get('user')
        cartItemsObj=cartitem.objects.filter(user=userObj)
        isempty=True
        # print(cartItemsObj[0].item.variant.variantName)
        cartDetailNumber=cartitem.objects.filter(user=userObj).count()
        mrp=0
        discount=0
        print(cartDetailNumber)
        if cartDetailNumber != 0:
            for value in cartItemsObj:
                mrp+=value.item.mrp
                discount=int((discount+(value.item.discount*value.item.mrp)/100).__round__())
            print(mrp)
            print(discount)
            finalamount=mrp-discount
            isempty=False
            params={"numberOfItems":cartDetailNumber,"products":cartItemsObj,"isEmpty":isempty,"totalMrp":mrp,"totalDiscount":discount,"finalAmount":finalamount,"isLoggedIn":True}
            return render(request, 'cart.html',params)
        else:
            isempty=True
            params={"isEmpty":isempty,"isLoggedIn":True}
            return render(request, 'cart.html',params)
    
def add2cart(request,id,color):
    if 'user' not in request.session:
        params={"msg": "Login required to use add to cart functionality","ismsg":False}
        return render(request, 'cart.html',params)
    else:
        proObj=product.objects.get(id=id)
        userObj=userinfo.objects.get(userId=request.session.get('user'))
        cartDetailNumber=cartitem.objects.filter(user=userObj).count()
        print(cartDetailNumber)
        print(proObj)
        print(userObj)
        if(cartDetailNumber<5):
            cartObj=cartitem(item=proObj,user=userObj)
            try:
                cartObj.save()
                return HttpResponseRedirect(reverse('store:cart'))
            except Exception as e:
                return HttpResponse("unexpected error")
        else:
            params={"msg": f"you are adding {id} and with {color}","ismsg":True,"msgTheme":"danger"}
            return render(request,'cart.html',params)


def delcart(request,id):
    proObj=product.objects.get(id=id)
    delObj=cartitem.objects.filter(item=proObj)
    delObj[0].delete()
    return HttpResponseRedirect(reverse('store:cart'))


def logout(request):
    del request.session['user'] 
    return HttpResponseRedirect(reverse('store:user'))
    # params={"loginStatus":active,"msg":message}
    # return render(request, 'user.html', params)    

