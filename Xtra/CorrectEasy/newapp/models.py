from __future__ import unicode_literals

from django.db import models

# Create your models here.
class history(models.Model):
    class Meta:
        unique_together = (('rno', 'clname','qno'),)
    rno=models.IntegerField()
    marks=models.IntegerField(default=0)
    qno=models.IntegerField()
    name=models.CharField(max_length=100,default='')
    clname=models.CharField(max_length=100)
    imageurl=models.CharField(max_length=100,default='')
    tmarks=models.IntegerField(default=0)
    totalmarks=models.IntegerField(default=0)

class Totalmarks(models.Model):
    class Meta:
        unique_together = (('rno', 'clname'),)
    rno=models.IntegerField(default=0)
    totmarks=models.IntegerField(default=0)
    name=models.CharField(max_length=100,default='')
    clname=models.CharField(max_length=100,default='')
    fullmarks=models.IntegerField(default=0)


