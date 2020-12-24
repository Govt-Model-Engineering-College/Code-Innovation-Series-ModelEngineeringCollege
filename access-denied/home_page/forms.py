from django.forms import ModelForm
from .models import DonorDetails


class DetailsCollectionForm(ModelForm):
    class Meta:
        model = DonorDetails
        fields = ['name','gender','blood_group','date_of_birth','phone_number','email','address','location','last_donation_date','disease']