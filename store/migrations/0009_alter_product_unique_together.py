# Generated by Django 4.1.1 on 2022-11-17 12:20

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('store', '0008_remove_product_price'),
    ]

    operations = [
        migrations.AlterUniqueTogether(
            name='product',
            unique_together={('productName', 'color', 'variant')},
        ),
    ]
