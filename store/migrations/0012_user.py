# Generated by Django 4.1.1 on 2022-11-22 12:12

from django.db import migrations, models
import uuid


class Migration(migrations.Migration):

    dependencies = [
        ('store', '0011_remove_product_sellprice'),
    ]

    operations = [
        migrations.CreateModel(
            name='user',
            fields=[
                ('userId', models.UUIDField(default=uuid.UUID('f2435314-1dba-4a16-9942-c77aac411c2d'), editable=False, primary_key=True, serialize=False)),
                ('firstname', models.CharField(max_length=50)),
                ('lastname', models.CharField(max_length=50)),
                ('email', models.EmailField(max_length=100, unique=True)),
                ('phone', models.CharField(max_length=10, unique=True)),
                ('password', models.CharField(max_length=100)),
            ],
        ),
    ]
