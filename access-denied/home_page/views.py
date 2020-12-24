from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib.auth.models import User
from django.db import IntegrityError
from django.contrib.auth import login, logout, authenticate
from .forms import DetailsCollectionForm
from .models import DonorDetails
from django.contrib.auth.decorators import login_required


def home(request):
    return render(request, 'home_page/home.html')


def register(request):
    if request.method == 'GET':
        context =  {'form': UserCreationForm()}
        return render(request, 'home_page/register.html', context)
    else:
        if request.POST['password1'] == request.POST['password2']:
            try:
                user = User.objects.create_user(request.POST['username'], password=request.POST['password1'])
                user.save()
                login(request, user)
                return redirect('donor_details')
            except IntegrityError:
                context = {'form': UserCreationForm(), 
                            'error': 'That username has already been taken. Please '
                                                                    'choose a new username'}
                return render(request, 'home_page/register.html', context)

        else:
            context = {'form': UserCreationForm(), 
                       'error': 'Passwords did not match'}
            return render(request, 'home_page/register.html', context)


def loginuser(request):
    if request.method == 'GET':
        context = {'form': AuthenticationForm()}
        return render(request, 'home_page/loginuser.html')
    else:
        user = authenticate(request, username=request.POST['username'], password=request.POST['password'])
        if user is None:
            context = {'form': AuthenticationForm(),
                       'error': 'Username and password did not match'}
            return render(request, 'home_page/loginuser.html', context)
        else:
            login(request, user)
            return redirect('donor_details')


@login_required
def logoutuser(request):
    if request.method == 'POST':
        logout(request)
        return redirect('home')


@login_required
def create_donor(request):
    if request.method == 'GET':
        context = {'form': DetailsCollectionForm()}
        return render(request, 'home_page/create_donor.html',context)
    else:
        try:
            form = DetailsCollectionForm(request.POST)
            new_donor = form.save(commit=False)
            new_donor.user = request.user
            new_donor.save()
            return redirect('donor_details')
        except ValueError:
            context = {'form': form, 'error':'Something wrong with the data'}
            return render(request, 'home_page/create_donor.html', context)


@login_required
def donor_details(request):
    donor = DonorDetails.objects.filter(user=request.user)
    context = {'donor': donor}
    return render(request, 'home_page/details.html', context)

            
def edit_donor(request):
    donor = get_object_or_404(DonorDetails, user=request.user)
    if request.method == 'GET':
        form = DetailsCollectionForm(instance=donor)
        context = {'donor': donor, 'form': form}
        return render(request, 'home_page/edit_donor.html', context)
    else:
        try:
            form = DetailsCollectionForm(request.POST, instance=donor)
            form.save()
            return redirect('donor_details')
        except ValueError:
            context = {'donor': donor, 'form': form, 'error':'Something wrong with the data'}
            return render(request, 'home_page/edit_donor.html', context)

