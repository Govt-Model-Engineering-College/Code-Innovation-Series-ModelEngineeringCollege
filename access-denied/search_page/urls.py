from django.urls import path
from . import views


urlpatterns = [
    path('', views.search_donor, name='search_donor'),
    path('list/', views.search_donor, name='search_donor_list'),
    path('list/detalils', views.donor_list_detail, name='donor_list_detail'),
]