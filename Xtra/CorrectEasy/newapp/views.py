import io
import os
from django.core.files.storage import FileSystemStorage
from django.core.files.storage import Storage
from django.core.files.base import ContentFile
from django.shortcuts import render
from google.cloud import vision
from newapp.models import history,Totalmarks
from .forms import NameForm,MarkForm

# Create your views here.
def home(request):
    return render(request,'home.html')
def index(request):
    return render(request,'index.html')

def info(request):
    #vision api code which also saves data to db.
    os.environ["GOOGLE_APPLICATION_CREDENTIALS"]="C:/Users/malav/Downloads/key.json"
    client = vision.ImageAnnotatorClient()
    myfile = request.FILES["key"]
    fs = FileSystemStorage()
    filename = fs.save(myfile.name, myfile)
    file_name = os.path.abspath('media/'+filename)
    with io.open(file_name, "rb") as image_file:
        content = image_file.read()
    image = vision.Image(content=content)
    response = client.document_text_detection(image=image)
    key=[]
    for page in response.full_text_annotation.pages:
        for block in page.blocks:
            print('\nBlock confidence: {}\n'.format(block.confidence))
            k=''
            for paragraph in block.paragraphs:
                print('Paragraph confidence: {}'.format(
                    paragraph.confidence))

                for word in paragraph.words:
                    word_text = ''.join([
                        symbol.text for symbol in word.symbols
                    ])
                    print('Word text: {} (confidence: {})'.format(
                        word_text, word.confidence))

                    for symbol in word.symbols:
                        print('\tSymbol: {} (confidence: {})'.format(
                            symbol.text, symbol.confidence))
                    k+=''.join(word_text)+' '
            k=k.lower()
            l=k.split(' ')
            key.extend(l)
    myfile = request.FILES["pic"]
    fs = FileSystemStorage()
    filename = fs.save(myfile.name, myfile)
    file_name = os.path.abspath('media/'+filename)
    with io.open(file_name, "rb") as image_file:
        content = image_file.read()
    image = vision.Image(content=content)
    response = client.document_text_detection(image=image)
    words=[]
    S=''
    for page in response.full_text_annotation.pages:
        for block in page.blocks:
            print('\nBlock confidence: {}\n'.format(block.confidence))
            S=''
            for paragraph in block.paragraphs:
                print('Paragraph confidence: {}'.format(
                    paragraph.confidence))

                for word in paragraph.words:
                    word_text = ''.join([
                        symbol.text for symbol in word.symbols
                    ])
                    print('Word text: {} (confidence: {})'.format(
                        word_text, word.confidence))

                    for symbol in word.symbols:
                        print('\tSymbol: {} (confidence: {})'.format(
                            symbol.text, symbol.confidence))
                    S+=''.join(word_text)+' '
            S=S.lower()
            l=S.split(' ')
            words.extend(l)
    detected=[]
    while '' in key:
       key.remove('')
    while '' in words:
       words.remove('')
    for i in words:
        for j in i.split(' '):
            if j in key :
                if j not in detected:
                   detected.append(j)
    Form = NameForm(request.POST)
    mark = int(Form.data['marks'])
    r=int(Form.data['roll'])
    name=Form.data['name']
    classs=Form.data['class']
    q=Form.data['qno']
    marks=int(len(detected)/len(key)*mark)
    if response.error.message:
        raise Exception(
            '{}\nFor more info on error messages, check: '
            'https://cloud.google.com/apis/design/errors'.format(
                response.error.message))
    f='/media/'+myfile.name
    request.session['rno']=r
    request.session['clname']=classs
    request.session['fullmarks']=mark
    record=history(rno= int(r),marks=marks,imageurl=f,name=name,clname=classs,qno=q,totalmarks=mark)
    record.save()
    try:
       listing = Totalmarks.objects.get(rno=int(r),clname=classs)
    except Totalmarks.DoesNotExist:
       listing = Totalmarks(rno= int(r),name=name,clname=classs)
       listing.save()
    print("Keys : \n", key)
    print("Words : \n",words)
    print("Marks : \n", marks)
    print("Detected : \n", detected)

    print(f)
    return render(request,'results.html',{"keys":key,'mark':marks,'detect':detected,'total':mark ,'kc':len(detected),'tc':len(key),'file': f})

def getHistory(request):
    previous_searches=history.objects.all()
    prev=history.objects.all().last()
    form = MarkForm(request.POST)
    print(int(form.data['totmarks']))
    prev.tmarks=int(form.data['totmarks'])
    prev.save()
    listing = Totalmarks.objects.get(rno=request.session['rno'],clname=request.session['clname'])
    listing.totmarks=listing.totmarks+int(form.data['totmarks'])
    listing.fullmarks+=request.session['fullmarks']
    listing.save()
    return render(request,'history.html',{"data":previous_searches})

def History(request):
    previous_searches=history.objects.all()
    return render(request,'finalhistory.html',{"data":previous_searches})

def display(request):
    previous_searches=Totalmarks.objects.all()
    return render(request,'marklist.html',{"data":previous_searches})
