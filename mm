from tkinter import *
from PIL import Image,ImageTk
import student as s
import staff as st
import library as lib
import exam as ex

class university:
    def __init__(self,window):
     self.master=window
     self.master.title("University managment school")
     self.width=self.master.winfo_screenwidth()
     self.height=self.master.winfo_screenheight()
     self.master.geometry("{w}x{h}+0+0".format(w=self.width,h=self.height))   
     self.master.state('zoomed')
     
     ####FRAME TOP START######
     self.frametop=Frame(self.master,bg='#1b9ea4',height=200)
     self.frametop.pack(fill=X)
     self.sms=Label(self.frametop,text='University Management System',bg='#1b9ea4',fg='white',font=('tahoma',50),pady=50)
     self.sms.pack()
     #####FRame top end######
     ####Frame center start#######"
     self.framecenter=Frame(self.master)
     self.framecenter.pack(fill=X)
     ##############Frame university#####################
     self.universityinfo=Frame(self.framecenter,padx=10,pady=10)
     self.universityinfo.grid(row=0,column=0,sticky='senw',ipady=5)
     self.img=Image.open('C:\memoire\studenicon.png')
     self.img.thumbnail((200,200))
     self.new__img=ImageTk.PhotoImage(self.img)
     self.imgUniversity=Label(self.universityinfo,image=self.new__img,padx=10,pady=10)
     self.imgUniversity.pack()
     self.buttomuniversity=Button(self.universityinfo,font=('tahoma',15,'bold'),text='About university',bg='#90CDC3',fg='#F4CFDF',padx=10,pady=10)
     self.buttomuniversity.pack()
     #################Frame student################
     self.studentframe=Frame(self.framecenter,padx=10,pady=10)
     self.studentframe.grid(row=0,column=1,sticky='senw',ipady=5)
     self.img2=Image.open('C:\memoire\studenicon.png')
     self.img2.thumbnail((200,200))
     self.new__img2=ImageTk.PhotoImage(self.img2)
     self.imgstudent=Label(self.studentframe,image=self.new__img2,padx=10,pady=10)
     self.imgstudent.pack()
     self.buttomstdn=Button(self.studentframe,command=self.openstudentwindow,font=('tahoma',15,'bold'),text='student mnagement',bg='#1b9ea4',fg='white',padx=10,pady=10)
     self.buttomstdn.pack()
     #################Frame stafft################
     self.staffframe=Frame(self.framecenter,padx=10,pady=10)
     self.staffframe.grid(row=0,column=2,sticky='senw',ipady=5)
     self.img3=Image.open('C:\memoire\staff.jpg')
     self.img3.thumbnail((200,200))
     self.new__img3=ImageTk.PhotoImage(self.img3)
     self.imgstaff=Label(self.staffframe,image=self.new__img3,padx=10,pady=10)
     self.imgstaff.pack()
     self.buttomstaff=Button(self.staffframe,font=('tahoma',15,'bold'),text='staff mnagement',bg='#1b9ea4',fg='white',padx=10,pady=10)
     self.buttomstaff.pack()
     self.framecenter.grid_columnconfigure(0,weight=1)
     self.framecenter.grid_columnconfigure(1,weight=1)
     self.framecenter.grid_columnconfigure(2,weight=1) 
     #####################buttom frame###############
     self.buttomframe=Frame(self.master,height=200)
     self.buttomframe.pack(fill=X)
     
     #####################fram library############
     self.libraryframe=Frame(self.buttomframe,padx=10,pady=10)
     self.libraryframe.grid(row=1,column=0,sticky='senw',ipady=5)
     self.img4=Image.open('C:\memoire\open book.png')
     self.img4.thumbnail((200,200))
     self.new__img4=ImageTk.PhotoImage(self.img4)
     self.imglibrary=Label(self.libraryframe,image=self.new__img4,padx=10,pady=10)
     self.imglibrary.pack()
     self.buttomlibrary=Button(self.libraryframe,font=('tahoma',10,'bold'),text='Library mnagement',bg='#1b9ea4',fg='white',padx=10,pady=10)
     self.buttomlibrary.pack()
     
     #####################fram exam#############
     self.examframe=Frame(self.buttomframe,padx=10,pady=10)
     self.examframe.grid(row=1,column=1,sticky='senw',ipady=5)
     self.img5=Image.open('C:\memoire\exam.png')
     self.img5.thumbnail((200,200))
     self.new__img5=ImageTk.PhotoImage(self.img5)
     self.imgexam=Label(self.examframe,image=self.new__img5,padx=10,pady=10)
     self.imgexam.pack()
     self.buttoexam=Button(self.examframe,font=('tahoma',10,'bold'),text='Exam mnagement',bg='#1b9ea4',fg='white',padx=10,pady=10)
     self.buttoexam.pack()
     
     self.buttomframe.grid_columnconfigure(0,weight=1)
     self.buttomframe.grid_columnconfigure(1,weight=1)

    def openstudentwindow(self):
     std=s.student()
    def openstaffwindow(self):
     stf=st.staff()
    def openlibrarywindow(self):
     libra=lib.library()
    def openexamwindow(self):
     exam=ex.exam()

 
if(__name__=='__main__'):
    window= Tk()
    std=university(window)
    mainloop()