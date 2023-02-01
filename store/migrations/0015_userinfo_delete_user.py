# Generated by Django 4.1.1 on 2022-11-22 13:29

from django.db import migrations, models
import uuid


class Migration(migrations.Migration):

    dependencies = [
        ('store', '0014_user_pincode'),
    ]

    operations = [
        migrations.CreateModel(
            name='userinfo',
            fields=[
                ('userId', models.UUIDField(default=uuid.uuid4, editable=False, primary_key=True, serialize=False)),
                ('firstname', models.CharField(max_length=50)),
                ('lastname', models.CharField(max_length=50)),
                ('email', models.EmailField(max_length=100, unique=True)),
                ('phone', models.CharField(max_length=10, unique=True)),
                ('password', models.CharField(max_length=100)),
                ('pincode', models.IntegerField(default=0)),
                ('shippingAddress', models.TextField(default='', max_length=500)),
            ],
        ),
        migrations.DeleteModel(
            name='user',
        ),
    ]