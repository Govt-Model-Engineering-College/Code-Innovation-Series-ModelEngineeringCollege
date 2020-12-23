#include<iostream.h>
#include<conio.h>
#include<stdio.h>
#include<fstream.h>
#include<process.h>
#include<string.h>
#include<stdlib.h>
#include<iomanip.h>
#include<dos.h>

class hstaff
    {
      public:
	       char pname[20];
	       int age;
	       char pbgroup[5];
	       int pno;
	       char phoneno[13];
	       char symptoms[30];
		hstaff()
		 {
		    strcpy(pname,"NULL");
		    age=0;
		    strcpy(pbgroup,"NULL");
		    pno=0;
		    strcpy(phoneno,"NULL");
		    strcpy(symptoms,"NULL");
		 }
		  void add()
		     {
			cout<<"Enter Patient's name ";
			gets(pname);
			cout<<"\nEnter Patient's age ";
			cin>>age;
			cout<<"\nEnter Patient's blood group ";
			gets(pbgroup);
			cout<<"\nEnter Patient no. ";
			cin>>pno;
			cout<<"\nEnter Phone number ";
			gets(phoneno);
		     }
		   void put()
		    {
		       cout<<"\n\nPatient's Name "<<pname;
		       cout<<"\nPatient's Age "<<age;
		       cout<<"\nBlood Group "<<pbgroup;
		       cout<<"\nPatient no. "<<pno;
		       cout<<"\nPhone number "<<phoneno;
		       getch();
		    }
		int returnpno()
		  {
		    return(pno);
		  }
		  void psymptoms()
			{
			clrscr();
			int page;
			cout<<"\nEnter your age ";
			cin>>page;
			   if(page<12)
			    {
			     cout<<"Dr.Ravi\n";
			     cout<<"Paediatrician";
			    }
			   else
			    {
				cout<<"\nEnter your symptoms ";
				cin>>symptoms;
				if(strcmpi(symptoms,"cough")==0)
				  {
				  cout<<"\n\nDr.Pankaj ";
				  cout<<"\n\n General Physician";
				  }
				else if(strcmpi(symptoms,"fever")==0)
				  {
				  cout<<"\n\nDr.Raghuram ";
				  cout<<"\n\n General Physician";
				  }
				else if(strcmpi(symptoms,"Redness")==0)
				  {
				  cout<<"\n\nDr.Gupta";
				  cout<<"\n\nDermatologist";
				  }
				else if(strcmpi(symptoms,"Chills")==0)
				 {
				 cout<<"\n\nDr.Neerav";
				 cout<<"\n\nPulmonologist";
				 }
				else if(strcmpi(symptoms,"Fatigue")==0)
				 {
				  cout<<"\n\nDr.Induja";
				  cout<<"\n\nPulmonologist";
				 }

				else if(strcmpi(symptoms,"Extreme hunger")==0)
				 {
				  cout<<"\n\nDr.Elizabeth";
				  cout<<"\n\nDiabetician";
				 }
				else if(strcmpi(symptoms,"Increased thirst")==0)
				 {
				  cout<<"\n\nDr.Jakes";
				  cout<<"\n\nDiabetician";
				 }
				else if(strcmpi(symptoms,"Chest pain")==0)
				 {
				  cout<<"\n\nDr.Thejus";
				  cout<<"\n\nCardiologist";
				 }
				else if(strcmpi(symptoms,"Sudden weakness")==0)
				 {
				  cout<<"\n\nDr.Ahalya";
				  cout<<"\n\nVascular Neurologist";
				 }
				else if(strcmpi(symptoms,"Nausea")==0)
				 {
				  cout<<"\n\nDr.Shaurya";
				  cout<<"\n\nHeptalogist";
				 }
				else if(strcmpi(symptoms,"Bruising")==0)
				 {
				  cout<<"\n\nDr.Anvita";
				  cout<<"\n\nHeptalogist";
				 }

				else
				{
				cout<<"\n\nDr.Tanvi";
				cout<<"\n\nGeneral Physician";
				}
			    }

			   cout<<"\n\nWould you like to make an appointment with the doctor:";
			   cout<<"\n\n1.YES";
			   cout<<"\n\n2.NO";
			   int ch;
			   cout<<"\n\nEnter choice:";
			   cin>>ch;
			   switch(ch)
			   {
			     case 1:clrscr();
				    cout<<"\n\nYour appointment with the doctor is fixed.";
				    cout<<"\n\nDate:29/12/2020";
				    cout<<"\n\nTime: 05:00pm";
				    cout<<"\n\nAs we are all going through a tough time we request you to follow social norms\nand other hospital regulations while visiting the hospital";
				    break;
			     case 2:clrscr();
				    cout<<"Thank you for using our program!!";
				    break;
			     default:cout<<"Please enter valid choice";


			    }

			}
  }p;
  int flag=0;
	void insert()
	    {
	      int n,i;
	      ofstream fout;
	      fout.open("ff.dat",ios::out|ios::binary|ios::app);
	      cout<<"Enter the number of patient's data to be entered ";
	      cin>>n;
	      for(i=0;i<n;i++)
		      {
			  p.add();
			  fout.write((char*)&p,sizeof(p));
		      }
	      fout.close();
	    }

 void edit()
   {
     ifstream fin;
     fin.open("ff.dat",ios::in|ios::binary);
     ofstream fout;
     fout.open("temp.dat",ios::in|ios::binary|ios::out|ios::app);
     int flag=0;
     int e;
     cout<<"\nEnter patient no. to be edited:";
     cin>>e;
     while(fin.read((char*)&p,sizeof(p)))
	{
	  if(p.returnpno()==e)
	    {
	      flag=1;
	      clrscr();
	      cout<<"\nPLEASE CHANGE THE PATIENT DETAILS:";
	      p.add();
	    }
	  fout.write((char*)&p,sizeof(p));

	}
     fin.close();
     fout.close();
      if(flag==0)
      {
	cout<<"\n\nPATIENT RECORD NOT FOUND!!";
	getch();
	exit(0);
      }
   remove("ff.dat");
   rename("temp.dat","ff.dat");
   clrscr();
   cout<<"\n\nPATIENT RECORD EDITED.";
 }

 void search()
 {

   int r;
   cout<<"\nEnter patient no to be searched ";
   cin>>r;
   ifstream fin;
   fin.open("ff.dat",ios::in|ios::binary);
   while(fin.read((char*)&p,sizeof(p)))
    {
      if(p.returnpno()==r)
	{
	  flag=1;
	  p.put();
	  getch();
	  break;
	}
    }
   if(flag==0)
	cout<<"Enter correct data ";
  }
  void display()
  {
	ifstream fin;
	fin.open("ff.dat",ios::in|ios::binary);
	while(fin.read((char*)&p,sizeof(p)))
	      p.put();
	fin.close();
  }
  void pat()
   {
      search();
      if(flag==1)
	{
	 p.psymptoms();
	}
   }

 void admin()
  {
    char pass[20];
    char opt;
    int n;
    cout<<"Enter the Password:\n";
    cin>>pass;
    if(strcmp(pass,"admin@123")==0)
    {
      do
       {
	clrscr();
	cout<<"1.Add a new patient's Account\n2.Edit a patient's Account\n3.View all patient Accounts\n4.Search";
	cout<<"\nEnter your Choice\n";
	cin>>n;
	switch(n)
	 {
		case 1:clrscr();
		       insert();
		       break;
		case 2:clrscr();
		       edit();
		       break;
		case 3:clrscr();
		       display();
		       break;
		case 4:clrscr();
		       search();
		       break;
		default:cout<<"select any one from the above options";break;
	 }
	 cout<<"\nDo you wish to continue (Y or N)? ";
	 cin>>opt;
       }while(opt=='Y'||opt=='y');
    }
    else
     {
      cout<<"Wrong password!! \n Please try again.";
     }
  }

  void main()
   {
   textbackground(CYAN);
   textcolor(WHITE);
   int choice;
   char ch;
   clrscr();
   do
   {
	 clrscr();
	 cout<<"\n\n\n\n\n\n\n\n\n\n\n\n"<<setw(50)<<"WELCOME TO THE PROGRAM";
	 delay(3000);
	 clrscr();
	 cout<<"\nWHO ARE YOU ?\n";
	 cout<<"\n\t1.Patient\n";
	 cout<<"\n\t2.Hospital staff\n";
	 cout<<"\n\t3.Exit\n";
	 cin>>choice;
		switch(choice)
		{
			case 1:pat();
			       break;
			case 2:admin();
			       break;
			case 3:exit(0);
			default:cout<<"Please enter correct option ";

		}
	 cout<<"\nDo you want to go back to previous menu (Y or N) ?";
	 cin>>ch;
   }while(ch=='y'||ch=='Y');
   getch();
   }
