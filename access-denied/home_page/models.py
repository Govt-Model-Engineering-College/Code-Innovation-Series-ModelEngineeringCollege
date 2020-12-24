from django.db import models
from django.contrib.auth.models import User


gender_choices=(("male","Male"),("female","Female"),("other","other"))
group_choice=(("A+","A+"),("A-","A-"),("B+","B+"),("B-","B-"),("AB+","AB+"),("AB-","AB-"),("O+","O+"),("O-","O-"))


class DonorDetails(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    name=models.CharField(max_length=20,blank=True,null=True)
    gender=models.CharField(max_length=10,blank=True,null=True)
    blood_group=models.CharField(max_length=3,blank=True,null=True)
    date_of_birth=models.DateField(blank=True,null=True)
    phone_number=models.IntegerField(blank=True,null=True)
    email=models.EmailField(max_length=50,blank=True,null=True,unique=True)
    address=models.TextField(blank=True,null=True)
    location=models.CharField(max_length=25,blank=True,null=True)
    last_donation_date=models.DateField(blank=True,null=True)
    disease=models.TextField(blank=True,null=True)


    def __str__(self):
        return self.name
