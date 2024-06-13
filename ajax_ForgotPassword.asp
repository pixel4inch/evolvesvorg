<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->
<!--#include file="ASPIncludes/SendEmail.asp"-->
<%	
		''' for first posting the form
	function getrndnumber()
		intHighNumber = 9999
		intLowNumber = 1111

		For m = 1 to 5
    			Randomize
    			intNumber = Int((intHighNumber - intLowNumber + 1) * Rnd + intLowNumber)
    			
		Next
		getrndnumber=intNumber
	end function	
		
		'mysubject = "mysubject"
	Dim uname,Password		
		Set RSCheck = Server.CreateObject("ADODB.Recordset")
		RSCheck.ActiveConnection = Datasource4
		usqlcheck="select * from Evolv_UserRegistration where Email='"&trim(request("vEmail"))&"'"		
		RSCheck.Open usqlcheck
		IF not RSCheck.EOF Then	
			uname = trim(RSCheck("First_Name")) &" "& trim(RSCheck("Last_Name"))
			Password = trim(RSCheck("Password"))	
			
			rmdnumber = getrndnumber()
			if trim(RSCheck("Last_Name"))<>"" then
				urndname = trim(lcase(trim(RSCheck("Last_Name"))))&trim(rmdnumber)
			else
				urndname = trim(lcase(trim(RSCheck("First_Name"))))&trim(rmdnumber)
			end if
			
			'MD5PWDSTR = md5(trim(urndname))
			MD5PWDSTR = trim(urndname)
			'' update user password in the database
			set con123=Server.CreateObject ("ADODB.Connection")
			con123.open DataSource4
			sqlupdateuser = "update Evolv_UserRegistration set Password='"&MD5PWDSTR&"' where  Email='"&trim(request("vEmail"))&"'"
			con123.execute sqlupdateuser
			set con123= nothing
			
			useremail = trim(request("vEmail"))
			mysubject=""
			mysubject = mysubject & "<font face='verdana' size='2'>Dear "&uname&",<br></font><br>"
			mysubject = mysubject & "<font face='verdana' size='2'>Your request is processed. Your reset password is <font color='blue'>"&urndname&"</font><br><br></font>"
			mysubject = mysubject & "<font face='verdana' size='2'>Thank you.</font><br>"
			mysubject = mysubject & "<font face='verdana' size='2'><br>This is an auto generated email from your Webmaster at...<br><br>Global Industry Analysts, Inc.<br>6150 Hellyer Ave.<br>San Jose, CA 95138<br>Phone: 408.528.9966<br>Fax: 408.784.7376<br><a href='http://www.StrategyR.com/'><strong>www.StrategyR.com</strong></a><br></font><br>"
			'call sendemail1("sales@StrategyR.com",useremail,"Your password request",mysubject)
			'call sendemail1("chv@resx.tech",useremail,"Your password request",mysubject)
			'call sendemail1(useremail,"saroya@strategyr.com","Your password request",mysubject)
			
		Else
			uname =""
			Password =""
		End if
		
		
		
		
		
		
		
		
		Set RSCheck = nothing
	
 ' response.write mysubject
%>
