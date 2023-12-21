from flask import Flask
from flask import Flask, render_template, Response, redirect, request, session, abort, url_for
import os
import time
import datetime
from flask import send_file
from werkzeug.utils import secure_filename
import pandas as pd
import numpy as np
import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="",
  charset="utf8",
  database="job_db"
)
app = Flask(__name__)
##session key
app.secret_key = 'abcdef'
#######
UPLOAD_FOLDER = 'upload'
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER
#####


@app.route('/',methods=['POST','GET'])
def index():
    act=""
    msg=""
    if request.method=='POST':
        uname=request.form['uname']
        pwd=request.form['pass']
        cursor = mydb.cursor()
        cursor.execute('SELECT * FROM cr_register WHERE uname = %s AND pass = %s', (uname, pwd))
        account = cursor.fetchone()
        if account:
            session['username'] = uname
            return redirect(url_for('view_stu'))
        else:
            msg = 'Incorrect username/password! or access not provided'
    return render_template('login.html',msg=msg,act=act)

@app.route('/login_stu', methods=['GET', 'POST'])
def login_stu():
    msg=""

    
    if request.method=='POST':
        uname=request.form['uname']
        pwd=request.form['pass']
        cursor = mydb.cursor()
        cursor.execute('SELECT * FROM admin WHERE username = %s AND password = %s', (uname, pwd))
        account = cursor.fetchone()
        if account:
            session['username'] = uname
            return redirect(url_for('view_stu'))
        else:
            msg = 'Incorrect username/password! or access not provided'
    return render_template('login_stu.html',msg=msg)

@app.route('/login_comp', methods=['GET', 'POST'])
def login_comp():
    msg=""

    
    if request.method=='POST':
        uname=request.form['uname']
        pwd=request.form['pass']
        cursor = mydb.cursor()
        cursor.execute('SELECT * FROM cr_company WHERE uname = %s AND pass = %s', (uname, pwd))
        account = cursor.fetchone()
        if account:
            session['username'] = uname
            return redirect(url_for('comp_home'))
        else:
            msg = 'Incorrect username/password! or access not provided'
    return render_template('login_comp.html',msg=msg)

@app.route('/register',methods=['POST','GET'])
def register():
    msg=""
    act=""
    if request.method=='POST':
        name=request.form['name']
 
        mobile=request.form['mobile']
        email=request.form['email']
        address=request.form['address']
       
        uname=request.form['uname']
        pass1=request.form['pass']
     
        
        now = datetime.datetime.now()
        rdate=now.strftime("%d-%m-%Y")
        mycursor = mydb.cursor()

        mycursor.execute("SELECT count(*) FROM cr_register where uname=%s",(uname, ))
        cnt = mycursor.fetchone()[0]
        if cnt==0:
            mycursor.execute("SELECT max(id)+1 FROM cr_register")
            maxid = mycursor.fetchone()[0]
            if maxid is None:
                maxid=1
            sql = "INSERT INTO cr_register(id, name,mobile, email, address,uname,pass) VALUES (%s, %s, %s, %s, %s, %s, %s)"
            val = (maxid, name, mobile, email, address, uname, pass1)
            print(sql)
            mycursor.execute(sql, val)
            mydb.commit()            
            print(mycursor.rowcount, "record inserted.")
            msg='ok'
            #return redirect(url_for('register',act=act))
            #if mycursor.rowcount==1:
            #    result="Registered Success"
            
        else:
            act="Already Exist!"
    return render_template('register.html',act=act,msg=msg)

@app.route('/register_comp',methods=['POST','GET'])
def register_comp():
    msg=""
    act=""
    if request.method=='POST':
        name=request.form['name']
 
        mobile=request.form['mobile']
        email=request.form['email']
        address=request.form['address']
        city=request.form['city']
        service=request.form['service']
       
        uname=request.form['uname']
        pass1=request.form['pass']
     
        
        now = datetime.datetime.now()
        rdate=now.strftime("%d-%m-%Y")
        mycursor = mydb.cursor()

        mycursor.execute("SELECT count(*) FROM cr_company where uname=%s",(uname, ))
        cnt = mycursor.fetchone()[0]
        if cnt==0:
            mycursor.execute("SELECT max(id)+1 FROM cr_company")
            maxid = mycursor.fetchone()[0]
            if maxid is None:
                maxid=1
            sql = "INSERT INTO cr_company(id, name, mobile, email, address, city, service, uname, pass) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)"
            val = (maxid, name, mobile, email, address, city, service, uname, pass1)
            print(sql)
            mycursor.execute(sql, val)
            mydb.commit()            
            print(mycursor.rowcount, "record inserted.")
            msg='ok'
            #return redirect(url_for('register_stu',act=act))
            #if mycursor.rowcount==1:
            #    result="Registered Success"
            
        else:
            msg="fail"
            act="Company Already Exist!"
    return render_template('register_comp.html',msg=msg)



@app.route('/reg_stu',methods=['POST','GET'])
def reg_stu():
    result=""
    act=""
    if request.method=='POST':
        name=request.form['name']
        gender=request.form['gender']
        dob=request.form['dob']
        mobile=request.form['mobile']
        email=request.form['email']
        dept=request.form['dept']
        year=request.form['year']
        uname=request.form['uname']
        address=request.form['address']
        city=request.form['city']
        
        now = datetime.datetime.now()
        rdate=now.strftime("%d-%m-%Y")
        mycursor = mydb.cursor()

        mycursor.execute("SELECT count(*) FROM cr_student where uname=%s",(uname, ))
        cnt = mycursor.fetchone()[0]
        if cnt==0:
            mycursor.execute("SELECT max(id)+1 FROM cr_student")
            maxid = mycursor.fetchone()[0]
            if maxid is None:
                maxid=1
            sql = "INSERT INTO cr_student(id, name, gender, dob, mobile, email, address, city, uname, dept, year) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
            val = (maxid, name, gender, dob, mobile, email, address, city, uname, dept, year)
            print(sql)
            mycursor.execute(sql, val)
            mydb.commit()            
            print(mycursor.rowcount, "record inserted.")
            act='success'
            return redirect(url_for('reg_stu',act=act))
            #if mycursor.rowcount==1:
            #    result="Registered Success"
            
        else:
            act="Register No. Already Exist!"
    return render_template('reg_stu.html',act=act)

@app.route('/reg_comp',methods=['POST','GET'])
def reg_comp():
    result=""
    act=""
    if request.method=='POST':
        name=request.form['name']
        mobile=request.form['mobile']
        email=request.form['email']
        address=request.form['address']
        city=request.form['city']
        service=request.form['service']
        
        
        now = datetime.datetime.now()
        rdate=now.strftime("%d-%m-%Y")
        mycursor = mydb.cursor()

        
        mycursor.execute("SELECT max(id)+1 FROM cr_company")
        maxid = mycursor.fetchone()[0]
        if maxid is None:
            maxid=1
        sql = "INSERT INTO cr_company(id, name, mobile, email, address,  city, service) VALUES (%s, %s, %s, %s, %s, %s, %s)"
        val = (maxid, name, mobile, email, address, city, service)
        print(sql)
        mycursor.execute(sql, val)
        mydb.commit()            
        print(mycursor.rowcount, "record inserted.")
        act='success'
        return redirect(url_for('view_comp',act=act))
        #if mycursor.rowcount==1:
        #    result="Registered Success"
            
        
    return render_template('reg_comp.html',act=act)

@app.route('/view_stu',methods=['POST','GET'])
def view_stu():
    st=""
    data=[]
    cursor = mydb.cursor()

    if request.method=='POST':
        st="1"
        dept=request.form['dept']
        batch=request.form['batch']

        if dept=="" and batch=="":
            cursor.execute("SELECT * FROM cr_student")
            data = cursor.fetchall()
        elif dept=="":
            cursor.execute("SELECT * FROM cr_student where year=%s",(batch,))
            data = cursor.fetchall()
        elif batch=="":
            cursor.execute("SELECT * FROM cr_student where dept=%s",(dept,))
            data = cursor.fetchall()
            
    else:
        cursor.execute("SELECT * FROM cr_student")
        data = cursor.fetchall()
    return render_template('view_stu.html',data=data,st=st)

@app.route('/view_studet',methods=['POST','GET'])
def view_studet():
    sid = request.args.get('sid')
    cursor = mydb.cursor()
    cursor.execute("SELECT * FROM cr_student where id=%s",(sid, ))
    data = cursor.fetchone()
    return render_template('view_studet.html',data=data,sid=sid)

@app.route('/add_school',methods=['POST','GET'])
def add_school():
    sid = request.args.get('sid')
    cursor = mydb.cursor()
    cursor.execute("SELECT * FROM cr_student where id=%s",(sid, ))
    data = cursor.fetchone()
    if request.method=='POST':
        sid=request.form['sid']
        school1=request.form['school1']
        mark1=request.form['mark1']
        school2=request.form['school2']
        mark2=request.form['mark2']
        mycursor = mydb.cursor()
        mycursor.execute("update cr_student set school1=%s,mark1=%s,school2=%s,mark2=%s where id=%s", (school1,mark1,school2,mark2,sid))
        mydb.commit()
        return redirect(url_for('view_studet',sid=sid))
        
    
    return render_template('add_school.html',data=data,sid=sid)

@app.route('/add_parent',methods=['POST','GET'])
def add_parent():
    sid = request.args.get('sid')
    cursor = mydb.cursor()
    cursor.execute("SELECT * FROM cr_student where id=%s",(sid, ))
    data = cursor.fetchone()
    if request.method=='POST':
        sid=request.form['sid']
        father=request.form['father']
        occu=request.form['occu']
        jobtype=request.form['jobtype']
        location=request.form['location']
        income=request.form['income']
        mother=request.form['mother']
        occu2=request.form['occu2']
        jobtype2=request.form['jobtype2']
        location2=request.form['location2']
        income2=request.form['income2']

        
        mycursor = mydb.cursor()
        mycursor.execute("update cr_student set father=%s,occu=%s,jobtype=%s,location=%s,income=%s,mother=%s,occu2=%s,jobtype2=%s,location2=%s,income2=%s where id=%s", (father,occu,jobtype,location,income,mother,occu2,jobtype2,location2,income2,sid))
        mydb.commit()
        return redirect(url_for('view_studet',sid=sid))
        
    
    return render_template('add_parent.html',data=data,sid=sid)

@app.route('/add_sport',methods=['POST','GET'])
def add_sport():
    sid = request.args.get('sid')
    cursor = mydb.cursor()
    cursor.execute("SELECT * FROM cr_student where id=%s",(sid, ))
    data = cursor.fetchone()
    if request.method=='POST':
        sid=request.form['sid']
        sport=request.form.getlist('sport')
        extra_cur=request.form.getlist('extra_cur')
        skill=request.form.getlist('skill')

        sport1=','.join(sport)
        extra_cur1=','.join(extra_cur)
        skill1=','.join(skill)
        #print(skill1)
        mycursor = mydb.cursor()
        mycursor.execute("update cr_student set sport=%s,extra_cur=%s,skill=%s where id=%s", (sport1,extra_cur1,skill1,sid))
        mydb.commit()
        return redirect(url_for('view_studet',sid=sid))
        
    
    return render_template('add_sport.html',data=data,sid=sid)

@app.route('/add_mark',methods=['POST','GET'])
def add_mark():
    sid = request.args.get('sid')
    data1=[]
    semester="yes"
    sem=""
    mr=0
    nr=0
    tot=0
    ar=0
    cr=0
    cursor = mydb.cursor()
    cursor.execute("SELECT * FROM cr_student where id=%s",(sid, ))
    data = cursor.fetchone()
    regno=data[8]
    dept=data[6]

    cursor.execute("SELECT * FROM cr_mark where regno=%s",(regno, ))
    data2 = cursor.fetchall()
        
    if request.method=='POST':
        semester=request.form['semester']
        sum1=0
        k=0
        ans=0
        cursor.execute("SELECT * FROM cr_subject where dept=%s && semester=%s",(dept, semester))
        data1 = cursor.fetchall()
        #print(semester)
        
        
        
        try:
            btn=request.form['btn']
            if btn=="Add":
                sem_mark=request.form.getlist('sem_mark')
                num_arrear=request.form['num_arrear']
                clear_arr=request.form['clear_arr']

                sem_mark1=','.join(sem_mark)
                for ss in sem_mark:
                    k+=1
                    sum1+=int(ss)

                ans=float(sum1/k)
                #print("sum="+str(sum1)+", "+str(ans))
                mycursor = mydb.cursor()
                mycursor.execute("SELECT count(*) FROM cr_mark where regno=%s and semester=%s",(regno, semester))
                cnt = mycursor.fetchone()[0]
                if cnt==0:
                    mycursor.execute("SELECT max(id)+1 FROM cr_mark")
                    maxid = mycursor.fetchone()[0]
                    if maxid is None:
                        maxid=1
                    sql = "INSERT INTO cr_mark(id, regno, semester, marks, percent, num_arrear, clear_arr) VALUES (%s, %s, %s, %s, %s, %s, %s)"
                    val = (maxid, regno, semester, sem_mark1, ans, num_arrear, clear_arr)
                    print(sql)
                    mycursor.execute(sql, val)
                    mydb.commit()
                else:
                    mycursor = mydb.cursor()
                    mycursor.execute("update cr_mark set marks=%s,num_arrear=%s,clear_arr=%s where id=%s", (sem_mark1,num_arrear,clear_arr,sid))
                    mydb.commit()

                    mycursor.execute("SELECT * FROM cr_mark where regno=%s",(regno, ))
                    data3 = mycursor.fetchall()
                    for rs3 in data3:
                        mr+=rs3[4]
                        nr+=1
                        ar+=rs3[5]
                        cr+=rs3[6]
                        
                    tot=float(mr/nr)
                    mycursor.execute("update cr_student set mark=%s,arrear=%s,clear=%s where id=%s", (tot,ar,cr,sid))
                    mydb.commit()
                    
                return redirect(url_for('add_mark',sid=sid))
                
        except:
            print("none")
        
        
    
    return render_template('add_mark.html',data=data,sid=sid,data1=data1,data2=data2,semester=semester)

@app.route('/view_comp',methods=['POST','GET'])
def view_comp():
    
    cursor = mydb.cursor()
    cursor.execute("SELECT * FROM cr_company")
    data = cursor.fetchall()
    return render_template('view_comp.html',data=data)

@app.route('/comp_home',methods=['POST','GET'])
def comp_home():
    sid = request.args.get('sid')

    if 'username' in session:
        uname = session['username']

    mycursor = mydb.cursor()
    mycursor.execute("SELECT * FROM cr_company where uname=%s",(uname, ))
    dd = mycursor.fetchone()
    sid=dd[0]
    
    
    mycursor.execute("SELECT * FROM cr_company where id=%s",(sid, ))
    data = mycursor.fetchone()
    if request.method=='POST':
        gender=request.form['gender']
        mark1=request.form['mark1']
        mark2=request.form['mark2']
        dept=request.form['dept']
        mark3=request.form['mark3']
        arrear=request.form['arrear']
        clear=request.form['clear']
        sport=request.form['sport']
        extra_cur=request.form['extra_cur']
        skill=request.form['skill']
        income=request.form['income']
        jobtype=request.form['jobtype']
        
        
        
        
        mycursor.execute("update cr_company set gender=%s,mark1=%s,mark2=%s,dept=%s,mark3=%s,arrear=%s,clear=%s,sport=%s,extra_cur=%s,skill=%s,income=%s,jobtype=%s where id=%s", (gender,mark1,mark2,dept,mark3,arrear,clear,sport,extra_cur,skill,income,jobtype,sid))
        mydb.commit()
        return redirect(url_for('comp_home'))
    
    return render_template('comp_home.html',data=data)

@app.route('/view_comdet',methods=['POST','GET'])
def view_comdet():
    sid = request.args.get('sid')
    cursor = mydb.cursor()
    cursor.execute("SELECT * FROM cr_company where id=%s",(sid, ))
    data = cursor.fetchone()
    if request.method=='POST':
        gender=request.form['gender']
        mark1=request.form['mark1']
        mark2=request.form['mark2']
        dept=request.form['dept']
        mark3=request.form['mark3']
        arrear=request.form['arrear']
        clear=request.form['clear']
        sport=request.form['sport']
        extra_cur=request.form['extra_cur']
        skill=request.form['skill']
        income=request.form['income']
        jobtype=request.form['jobtype']
        
        
        
        mycursor = mydb.cursor()
        mycursor.execute("update cr_company set gender=%s,mark1=%s,mark2=%s,dept=%s,mark3=%s,arrear=%s,clear=%s,sport=%s,extra_cur=%s,skill=%s,income=%s,jobtype=%s where id=%s", (gender,mark1,mark2,dept,mark3,arrear,clear,sport,extra_cur,skill,income,jobtype,sid))
        mydb.commit()
        return redirect(url_for('view_comdet',sid=sid))
    
    return render_template('view_comdet.html',data=data)


@app.route('/upload',methods=['POST','GET'])
def upload():
    msg=""
    if request.method=='POST':
        #cursor1 = mydb.cursor()
        #cursor1.execute("delete from cr_student")
        #mydb.commit()
        file = request.files['file']
        try:
            if file.filename == '':
                flash('No selected file')
                return redirect(request.url)
            if file:
                fn="datafile.csv"
                fn1 = secure_filename(fn)
                file.save(os.path.join(app.config['UPLOAD_FOLDER'], fn1))
                #return redirect(url_for('view_data'))
                filename2 = 'upload/datafile.csv'
                data1 = pd.read_csv(filename2, header=0)
                data2 = list(data1.values.flatten())
                data=[]
                i=0
                sd=len(data1)
                rows=len(data1.values)
                
                #print(str(sd)+" "+str(rows))
                for ss in data1.values:
                    mycursor = mydb.cursor()
                    #print(ss[1]+" "+ss[2]+" "+ss[3])
                    i+=1        
                    #print(str(i))
                    mycursor.execute("SELECT max(id)+1 FROM cr_student")
                    maxid = mycursor.fetchone()[0]
                    if maxid is None:
                        maxid=1

                    cgp=float(ss[13])/9.5
                    cgpa=round(cgp,2)
                    sql = "INSERT INTO cr_student(id, name, gender, dob, mobile, email, dept, year, uname, pass, address,  city, school1, mark1, school2, mark2, father, occu, jobtype, location, income, mother, occu2, jobtype2, location2, income2, mark, sport, extra_cur, skill, arrear, clear,cgpa) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s,%s)"
                    val = (maxid, ss[1], ss[2], ss[3], ss[4], ss[5], ss[6], ss[7], ss[8], ss[9], ss[10], ss[11], ss[12], ss[13], ss[14], ss[15], ss[16], ss[17], ss[18], ss[19], ss[20], ss[21], ss[22], ss[23], ss[24], ss[25], ss[26], ss[27], ss[28], ss[29], ss[30], ss[31],cgpa)
                    mycursor.execute(sql, val)
                    mydb.commit()
        
                msg="Uploaded Success"
        except:
            print("dd")
    return render_template('upload.html',msg=msg)

@app.route('/upload2',methods=['POST','GET'])
def upload2():
    msg2=""
    if request.method=='POST':
        #cursor1 = mydb.cursor()
        #cursor1.execute("delete from cr_company")
        #mydb.commit()
        file = request.files['file2']
        try:
            if file.filename == '':
                flash('No selected file')
                return redirect(request.url)
            if file:
                fn="company.csv"
                fn1 = secure_filename(fn)
                file.save(os.path.join(app.config['UPLOAD_FOLDER'], fn1))
                #return redirect(url_for('view_data'))
                filename2 = 'upload/company.csv'
                data1 = pd.read_csv(filename2, header=0)
                data2 = list(data1.values.flatten())
                data=[]
                i=0
                sd=len(data1)
                rows=len(data1.values)
                
                #print(str(sd)+" "+str(rows))
                for ss in data1.values:
                    mycursor = mydb.cursor()
                    #print(ss[1]+" "+ss[2]+" "+ss[3])
                    i+=1        
                    #print(str(i))
                    mycursor.execute("SELECT max(id)+1 FROM cr_company")
                    maxid = mycursor.fetchone()[0]
                    if maxid is None:
                        maxid=1
                    sql = "INSERT INTO cr_company(id, name, mobile, email, address, city, service, gender, mark1, mark2, dept, mark3, arrear, clear, sport, extra_cur, skill, income, jobtype) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
                    val = (maxid, ss[1], ss[2], ss[3], ss[4], ss[5], ss[6], ss[7], ss[8], ss[9], ss[10], ss[11], ss[12], ss[13], ss[14], ss[15], ss[16], ss[17], ss[18])
                    mycursor.execute(sql, val)
                    mydb.commit()
        
                msg2="Uploaded Success"
        except:
            print("dd")
    return render_template('upload.html',msg2=msg2)

class SVM:
    def fit(self, X, y):
        n_samples, n_features = X.shape
        # P = X^T X
        K = np.zeros((n_samples, n_samples))
        for i in range(n_samples):
            for j in range(n_samples):
                K[i,j] = np.dot(X[i], X[j])
                P = cvxopt.matrix(np.outer(y, y) * K)
                # q = -1 (1xN)
        q = cvxopt.matrix(np.ones(n_samples) * -1)
        # A = y^T 
        A = cvxopt.matrix(y, (1, n_samples))
        # b = 0 
        b = cvxopt.matrix(0.0)
        # -1 (NxN)
        G = cvxopt.matrix(np.diag(np.ones(n_samples) * -1))
        # 0 (1xN)
        h = cvxopt.matrix(np.zeros(n_samples))
        solution = cvxopt.solvers.qp(P, q, G, h, A, b)
        # Lagrange multipliers
        a = np.ravel(solution['x'])
        # Lagrange have non zero lagrange multipliers
        sv = a > 1e-5
        ind = np.arange(len(a))[sv]
        self.a = a[sv]
        self.sv = X[sv]
        self.sv_y = y[sv]# Intercept
        self.b = 0
        for n in range(len(self.a)):
            self.b += self.sv_y[n]
            self.b -= np.sum(self.a * self.sv_y * K[ind[n], sv])
        self.b /= len(self.a)# Weights
        self.w = np.zeros(n_features)
        for n in range(len(self.a)):
            self.w += self.a[n] * self.sv_y[n] * self.sv[n]
        
    def project(self, X):
        return np.dot(X, self.w) + self.b
    
    
    def predict(self, X):
        return np.sign(self.project(X))
@app.route('/prediction',methods=['POST','GET'])
def prediction():
    s1=""
    s2=""
    s3=""
    s4=""
    s5=""
    s6=""
    s7=""
    data=[]
    data3=[]
    st=""
    mycursor = mydb.cursor()
    if request.method=='POST':
        dept=request.form['dept']
        year=request.form['year']

        
        
        if dept!="" and year!="":
            mycursor.execute("SELECT * FROM cr_student where dept=%s && year=%s",(dept,year))
            data = mycursor.fetchall()
        elif dept!="":
            mycursor.execute("SELECT * FROM cr_student where dept=%s",(dept,))
            data = mycursor.fetchall()
        elif year!="":
            mycursor.execute("SELECT * FROM cr_student where year=%s",(year,))
            data = mycursor.fetchall()
        else:
            mycursor.execute("SELECT * FROM cr_student")
            data = mycursor.fetchall()

        
        
        
        
        
        for rs in data:
            print(rs[1])
            
            mycursor.execute("SELECT * FROM cr_company")
            data1 = mycursor.fetchall()
            dd1=[]
            f=0
            k=0
            for rs1 in data1:
                
                ##gender
                if rs1[7]=="Any":
                    s1="1"
                elif rs1[7]==rs[2]:
                    s1="1"
                else:
                    s1="2"
                ##mark1
                if rs1[8]<=rs[13]:
                    s2="1"
                else:
                    s2="2"
                ##mark2
                if rs1[9]<=rs[15]:
                    s3="1"
                else:
                    s3="2"
                ##dept
                if rs1[10]=="Any":
                    s4="1"
                elif rs1[10]==rs[6]:
                    s4="1"
                else:
                    s4="2"
                ##mark
                if rs1[11]<=rs[33]:
                    s5="1"
                else:
                    s5="2"
                ##arrear
                if rs[30]<=rs1[12]:
                    s6="1"
                else:
                    s6="2"
                ##clear
                if rs[31]<=rs1[13]:
                    s7="1"
                else:
                    s7="2"

                if s1=="1" and s2=="1" and s3=="1" and s4=="1" and s5=="1" and s6=="1" and s7=="1":
                    #print(rs[8]+" "+rs1[1])
                    #dd1.append(rs[8])
                    #dd1.append(rs[1])
                    #dd1.append(rs1[1])
                    #data4.append(dd1)
                    #print(rs1[1])
                    if f<=3:
                        dd1.append(rs1[1])
                    #print(dd1)
                f+=1
            #if k<3:
            str1 = ", ".join(dd1)
            print(str1)
            #data4.append(str1)
            '''cp=""
            mycursor.execute("SELECT * FROM cr_student where id=%s", (rs[0], ))
            dc1 = mycursor.fetchone()
            if dc1[32]=="":
                cp=str1
            else:
                cp=dc1[32]+", "+str1'''
            mycursor.execute("update cr_student set company=%s where id=%s", (str1, rs[0] ))
            mydb.commit()
            #k+=1
            
        #print(data4)
                
                

        mycursor.execute("SELECT * FROM cr_student limit 0,3")
        dat1 = mycursor.fetchall()
        st="1"
        for ds1 in dat1:
            dt=[]
            email=ds1[5]
            mess="Dear "+ds1[1]+", Selected Companies: "+ds1[32]
            print(mess)
            dt.append(email)
            dt.append(mess)
            data3.append(dt)
        
    
    return render_template('prediction.html',data=data,st=st,data3=data3)


@app.route('/logout')
def logout():
    # remove the username from the session if it is there
    #session.pop('username', None)
    return redirect(url_for('index'))



if __name__ == "__main__":
    app.secret_key = os.urandom(12)
    app.run(debug=True,host='0.0.0.0', port=5000)
