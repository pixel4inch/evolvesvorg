
<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->

<%
Function FormatCookieDateTime(interval, value, tz)
  Dim dt: dt = DateAdd(interval, value, Date())
  Dim tm: tm = Time()
  Dim result: result = WeekDayName(WeekDay(dt), True) & ", " & _
    Right("00" & Day(dt), 2) & "-" & _
    MonthName(Month(dt), True) & "-" & _
    Year(dt) & " " & _
    Right("00" & Hour(Time()), 2) & ":" & _
    Right("00" & Minute(Time()), 2) & ":" & _
    Right("00" & Second(Time()), 2) & " " & tz
  
  FormatCookieDateTime = result
End Function

response.write trim(request("txtUser"))
response.write trim(request("txtpwd"))

	
	RecChkSQL = "SELECT * FROM Evolv_UserRegistration WHERE Email ='" & trim(request("txtUser"))&"' and password='" & trim(request("txtpwd")) & "'" 
	response.write RecChkSQL & "<br>"
	
		
''	Set MyCon = Server.CreateObject("ADODB.Connection")		
  ''  MyCon.Open Datasource4
	dim RecChkRS
	''response.end
	Set RecChkRS = Server.CreateObject("ADODB.Recordset")
	
	RecChkRS.Open RecChkSQL, Datasource4	
		
	
	If Not RecChkRS.EOF Then

	''	session("STcode")=trim(request("txtUser"))
		session("fullName")=trim(RecChkRS("first_name")) & " " & trim(RecChkRS("last_name"))
		session("email")=trim(RecChkRS("email"))
		''response.write 	session("fullName")
	''response.end
		''' Create cookie variable
		Response.Cookies("STcode") = trim(request("txtUser"))
		Response.Cookies("STcode").Expires=DateAdd("h", 1, now())

		response.redirect("https://evolvesv.org/")
	else
		 response.write ("Please enter correct values.")
		 response.redirect("signin.html")
	end if
	set RecChkRS = nothing

%>