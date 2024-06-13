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




if trim(request("txtUser"))="cii-evolv2023"then
	if trim(request("txtpwd"))="MISSIONCONTROL3210" then		
		session("STcode")=trim(request("txtUser"))
		''' Create cookie variable
               Response.Cookies("STcode") = trim(request("txtUser"))
               Response.Cookies("STcode").Expires=DateAdd("h", 1, now())

		response.redirect("home.htm")
	else
		response.write ("Please enter correct values.")
		response.redirect("home.htm")
	end if
else
       response.write ("Please enter correct values.")
       response.redirect("home.htm")
end if
%>