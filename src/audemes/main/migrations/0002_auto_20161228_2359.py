# -*- coding: utf-8 -*-
# Generated by Django 1.10.4 on 2016-12-29 04:59
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='audeme',
            name='file_location',
            field=models.CharField(default=1, max_length=1000),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='audeme',
            name='id',
            field=models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID'),
        ),
    ]
