# Generated by Django 4.1.1 on 2022-11-19 12:37

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('store', '0010_product_sellprice'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='product',
            name='sellprice',
        ),
    ]
