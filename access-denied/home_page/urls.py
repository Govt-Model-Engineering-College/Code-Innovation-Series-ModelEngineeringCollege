from django.urls import path
from . import views


urlpatterns = [
    path('', views.home, name='home'),

    path('register/', views.register, name='register'),
    path('login/', views.loginuser, name='loginuser'),
    path('logout/', views.logoutuser, name='logoutuser'),

    path('donor/details/', views.donor_details, name='donor_details'),
    path('donor/edit/', views.create_donor, name='edit_donor'),
]
