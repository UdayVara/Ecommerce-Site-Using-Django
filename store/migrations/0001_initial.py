# Generated by Django 4.1.1 on 2022-11-16 04:59

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='brand',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('brandName', models.CharField(max_length=50, unique=True)),
                ('brandImage', models.ImageField(upload_to='<django.db.models.fields.CharField>/')),
                ('brandDescription', models.CharField(max_length=100)),
            ],
        ),
    ]
