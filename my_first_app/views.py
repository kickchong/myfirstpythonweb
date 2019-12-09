from django.shortcuts import render

from django.http import HttpResponse

def hi(request):
    # return HttpResponse('<h1>This is test</h1>')
    return render(request,'my_first_app/hi.html')
# Create your views here.
