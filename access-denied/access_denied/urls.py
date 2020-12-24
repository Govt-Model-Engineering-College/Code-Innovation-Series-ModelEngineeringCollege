from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('home_page.urls'), name='home_page'),
    path('search/', include('search_page.urls'), name='search_page'),
]
