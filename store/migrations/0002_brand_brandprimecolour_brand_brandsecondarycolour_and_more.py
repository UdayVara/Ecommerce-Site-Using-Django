# Generated by Django 4.1.1 on 2022-11-16 05:51

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('store', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='brand',
            name='brandPrimeColour',
            field=models.CharField(default='', max_length=20),
        ),
        migrations.AddField(
            model_name='brand',
            name='brandSecondaryColour',
            field=models.CharField(default='', max_length=20),
        ),
        migrations.AlterField(
            model_name='brand',
            name='brandImage',
            field=models.ImageField(upload_to='brand/'),
        ),
    ]
