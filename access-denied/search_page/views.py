from django.shortcuts import render

from home_page.models import DonorDetails
from .form import SearchDonar


def search_donor(request):
    forms=SearchDonar()
    context={'search':forms}
    
    if request.method=='POST':
        forms=SearchDonar(request.POST)
        if forms.is_valid():
            blood_group = forms.cleaned_data['blood_group']
            location = forms.cleaned_data['location']
            d_filter = DonorDetails.objects.filter(blood_group=blood_group, location=location)
            context = {'d_filter' : d_filter}
            return render(request, 'search_result.html', context)

    return render(request,'search.html',context)

def donor_list_detail(request, email):
    email = email
    detail = DonorDetails()
    detail = DonorDetails.objects.get(email=email)
    context = {
        'details' : detail
    }
    return render(request, 'information.html', context)