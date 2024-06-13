<%@ LANGUAGE="VBScript" %>
<!--#include file="adovbs.asp"-->

<%

session("UID") = ""
session("code") = ""

''response.write trim(request("btnsubmit"))
''response.end
%>
<%

	dim gtval, gtval1
	Set Connpre = Server.CreateObject("ADODB.Connection")
	Set RS = Server.CreateObject("ADODB.Recordset")
	Connpre.Open DataSource4
	

'''''*** NEWLY ADDED CHECK TO SEE IF THE USER IS AVAILABLE IN TABLE "USER_UPDATES_SIGNUP"''
''*************************DATE ADDED: 14 FEB, 2012''''''''''''''''''''''''''''''''''''''''
gtval1 = 0


dim retval
retval = 0

If trim(ucase(request("btnsubmit")))="GO" then	
	dim mypage
	Set rsUserLogin = Server.CreateObject("ADODB.Recordset")
	rsUserLogin.ActiveConnection = DataSource4  
	
	usql="SELECT sno, First_name, Last_name, Email, Company_name, Headline, Image_url, LinkedIn_url, Influencer_bio, Phone, Facebook_url, Twitter_url, Company_ID, Address, City, State, Country, Zip, ID, Events_ID, Events,Company_groups, Additional_emails, Ecosystems, industry, gender, Insider_code FROM dbo.Curated_industry_Speakers WHERE   insider_code= '"&trim(request("Code"))&"'"
	
	''response.write usql
	''response.end
	rsUserLogin.Open usql
		IF not rsUserLogin.EOF THEN					
				session("UID")=trim(rsUserLogin("sno"))
				session("EID")=trim(rsUserLogin("Email"))
				''session("PrevAccess")=trim(rsUserLogin("Sending_status"))
				session("fname")=trim(rsUserLogin("First_Name"))
				session("FirstName")=trim(rsUserLogin("First_Name"))
				session("lname")=trim(rsUserLogin("Last_Name"))
				session("LastName")=trim(rsUserLogin("Last_Name"))
				session("User_Company")=trim(rsUserLogin("Company_name"))
				session("Company")=trim(rsUserLogin("Company_name"))
				session("Events_ID")=trim(rsUserLogin("Events_ID"))
		
				Dim CMP_code, CMP_MD5
				''CMP_code = trim(rsUserLogin("Cmp_hidden_code"))
				''CMP_MD5 = trim(rsUserLogin("Filename_MD5"))
				insider_code = trim(rsUserLogin("insider_code"))
				'''ADD 20% discount
				''session("RPPDiscValue") = "20"
				'''''''''''''''''''''''''''''''''''''''''''''''''''
					dim ipaddress
					ipaddress = Request.ServerVariables("HTTP_X_FORWARDED_FOR")
					if ipaddress = "" then
					    ipaddress = Request.ServerVariables("REMOTE_ADDR")
					end if
					response.write "in RS dsp"
	''	response.end
					''' write a log file for the user
				''	set cmdEdit=server.CreateObject("ADODB.Command")
				''	cmdEdit.ActiveConnection = DataSource1			
				''		with cmdEdit 				
				''			.CommandText = "SP_TBL_User_Log"
				''			.CommandType = adcmdStoredProc
				''			.Parameters.Append .CreateParameter ("@MyOption",advarchar,adparamInput,10,"INSERT")
				''			.Parameters.Append .CreateParameter ("@MyLog_ID",adInteger,adparamInputOutput,,1)
				''			.Parameters.Append .CreateParameter ("@MyUserID",adInteger,adparamInputOutput,,Trim(session("UID")))
				''			.Parameters.Append .CreateParameter ("@MyLogin_IP",advarchar,adparamInputOutput,15,ipaddress)
				''			.Parameters.Append .CreateParameter ("@MyLogin_Date",adDate,adparamInputOutput,8,now())
				''			.Parameters.Append .CreateParameter ("@MyLog_Type",advarchar,adparamInputOutput,10,"EVOLV")
				''			.Parameters.Append .CreateParameter ("@MyEmailID",advarchar,adparamInputOutput,100,trim(rsUserLogin("Email")))
				''			.Parameters.Append .CreateParameter ("@MyResult",adInteger,adparamInputOutput,,1)
				''			.Execute
				''		end with
				''	loadedval = cmdEdit.Parameters("@MyResult")
				''	session("LogID")=cmdEdit.Parameters("@MyLog_ID")
				''	set cmdEdit = nothing
					''response.redirect("CompanyInsider.asp?Code="&trim(CMP_MD5)&"&cmpID="&trim(CMP_code)&"&encID="&trim(request("Code"))&"")
					response.redirect("https://www.evolv.cc/clicktoengage.asp?Code="&trim(insider_code)&"&Events_ID="&trim(Events_ID)&"&encID="&trim(request("insider_code"))&"")
				
			
	else
		'' not a valid user id or password 
		retval = 2
	END IF	
End if%>

<%if (retval = 1 or retval = 2 or retval = 3 or retval = 4) then%>
<html>
<head>
<title></title>

<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.style1 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	font-weight: bold;
}
.style2 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 11px;
	font-weight: bold;
}
.style3 {color: #999999}
-->
</style>
</head>

<body  topmargin="0" leftmargin="0" onload="window.document.title='Privileged Client Platform - Evolv.cc'">

<table  border="0" cellpadding="0" cellspacing="0" width="100%">
  <!--DWLayoutTable-->
  <tr>
  
    <td height="64" colspan="5" valign="top"><table border="0" width="100%" cellspacing="0" cellpadding="0">
      <!--DWLayoutTable>
        <tr>
          <td colspan="5"><img src="images/prev01.gif"></td>
        </tr-->
<tr bgcolor="#006377">
          <td colspan="5"  height=30>&nbsp;</td>
        </tr>
        <tr>
          <td width="50%" bgcolor="#D3E2DF" align=left><div align="left"><!--span class="style1">&nbsp;&nbsp;Privileged Access </span--></div></td>
          <!--td width="17"><img src="images/prev02.gif" width="17" height="26"></td>
          <td width="70"><img src="images/prev03.gif" width="70" height="26"></td>
          <td width="251">&nbsp;</td>
          <td width="171"><img src="images/prev04.gif" width="171" height="26"></td-->
<td colspan="4" align=right bgcolor="#D3E2DF" class="style1">Evolv.cc</td>
        </tr>
        <tr bgcolor="#D3E2DF">
          <td height="1" colspan="5"></td>
        </tr>
        </table></td>
  </tr>
          <tr>
            <td width="100%" height="10">&nbsp;&nbsp;&nbsp; </td>
          </tr>                  
		  <%if retval = 1 then%>
          <tr>
            <td width="100%" height="5"><p align="center"><big><font color="#800000"><strong>Invalid or expired Password. Please check and try again. This is a secured platform.</strong></font></big></td>
          </tr>
          <%elseif retval = 2 then%>
          <tr>
            <td width="100%" height="5"><p align="center"><big><font color="#800000"><strong>Invalid Code. Please check and try again. This is a secured platform.  </strong></font></big></td>
          </tr>
          <%elseif retval = 3 then%>
          
	  <tr>
            <td width="100%" height="5"><p align="center"><big><font color="#800000"><strong><%=trim(request("TxtemailID"))%> - First you need to be registered, please click <a href="registerd.asp">here</a> to register and try again. </font></big></td>
          </tr>
          <%elseif retval = 4 then%>
          <tr>
            <td width="100%" height="5"><p align="center"><big><font color="#800000"><strong>Your access to this site has been denied. For details, please contact the site administrator. Thank you.

 </strong></font></big></td>
          </tr>
          <%end if%>
          <tr>
            <td width="100%" height="2">&nbsp;&nbsp; </td>
          </tr>
          <tr>
            <td width="100%" height="2">&nbsp; </td>
          </tr>
          <tr>
            <td width="100%" height="1">&nbsp; </td>
          </tr>
            <tr><td height=127>&nbsp;</td>
          <tr>
            <td width="100%" align="center"><p align="center"><a href="insider.html"><strong>Back</strong></a></td>
          </tr>
        </table>
         
        </td>
      </tr>
      </table>
   </body>
</html>
<%End if%>
