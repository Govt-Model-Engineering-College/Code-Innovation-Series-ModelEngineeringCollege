from django import forms

class SearchDonar(forms.Form):
    group_choice=( ("empty" , "Select blood group"),("A+","A+"),("A-","A-"),("B+","B-"),("AB+","AB-"),("O+","O-"))
    blood_group=forms.ChoiceField(choices=group_choice,widget=forms.Select( attrs={'class':'form-control','required':'True',}, ),)
    location=forms.CharField(widget=forms.TextInput(
            attrs={'class':'form-control', 'required':'True', 'placeholder':'Address?' } ),)
