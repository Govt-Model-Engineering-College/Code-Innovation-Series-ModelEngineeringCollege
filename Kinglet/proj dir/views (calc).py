from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.
def home(request):
    return render(request,'home.html',{'name':'Nayantara'})

def add(request):
    val1 = float(request.POST["num2"])
    val2 = float(request.POST["num3"])
    res = val1/(val2**2)
    return render(request,"result.html",{'bmi':res})