from django import forms

class NameForm(forms.Form):
    marks = forms.IntegerField(label='mark')

class MarkForm(forms.Form):
    totmarks = forms.IntegerField(label='totmarks')