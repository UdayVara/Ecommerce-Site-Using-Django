# Generated by Django 4.1.1 on 2022-11-16 13:27

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('store', '0004_alter_brand_branddescription'),
    ]

    operations = [
        migrations.CreateModel(
            name='productvariant',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ram', models.IntegerField()),
                ('storage', models.IntegerField()),
                ('variantName', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='product',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('productName', models.CharField(max_length=50)),
                ('color', models.CharField(max_length=50)),
                ('productimage', models.ImageField(upload_to='phones/')),
                ('brand', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='products', to='store.brand')),
                ('variant', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='productconfgs', to='store.productvariant')),
            ],
        ),
    ]
