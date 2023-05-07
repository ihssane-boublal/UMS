from tkinter import *
class student:
    def __init__(self):
       self.master = Toplevel()
       self.master.title('Student Management System')
       self.master.geometry("1200x600+0+0")
      #################Frame left##################
       self.frameleft = Frame(self.master, width=400)
       self.frameleft.pack(side=LEFT, fill=BOTH)
       #################Frame lest##################
       self.firstname=Label(self.frameleft,text="First Name", fg='#4F4F4F',font=('tahoma',12,'bold'))
       self.firstname.place(x=10, y=20,width=100,height=40)
       self.lastname=Label(self.frameleft,text="Last Name", fg='#4F4F4F',font=('tahoma',12,'bold'))
       self.lastname.place(x=10, y=70,width=100,height=40)
       self.Email=Label(self.frameleft,text="Email", fg='#4F4F4F',font=('tahoma',12,'bold'))
       self.Email.place(x=10, y=120,width=100,height=40)

           
       self.firstname=Entry(self.frameleft,text="Last Name", fg='#4F4F4F',font=('tahoma',12,'bold'))
       self.firstname.place(x=10, y=70,width=100,height=40)    
       self.lastname=Entry(self.frameleft,text="Last Name", fg='#4F4F4F',font=('tahoma',12,'bold'))
       self.lastname.place(x=10, y=70,width=100,height=40)    
       self.Email=Entry(self.frameleft,text="Last Name", fg='#4F4F4F',font=('tahoma',12,'bold'))
       self.Email.place(x=10, y=70,width=100,height=40)    


       self.add=Button(self.frameleft,text='ADD',font=('tahoma',10,'bold'))
       self.add.place(x=40,y=300,width=60,height=60)
       
       self.add2=Button(self.frameleft,text='UPDATE',font=('tahoma',10,'bold'))
       self.add.place(x=170,y=300,width=60,height=60)
       
       self.add3=Button(self.frameleft,text='DELETE',font=('tahoma',10,'bold'))
       self.add.place(x=290,y=300,width=60,height=60)


       

       
