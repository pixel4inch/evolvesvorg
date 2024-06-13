<%@ LANGUAGE="VBScript" %>
<!--#include file="adovbs.asp"-->

<%
session("UID") = ""
session("code") = ""

session("CMI_User_Access") = ""
%>
<%
	
	
dim retval
retval = 0

'''response.write "GetVal = "&gtval &"<br>"
'''response.end


''if trim(request("btnsubmit"))="GO" then
	DIM rs
	DIM SQL
	DIM prcode
	DIM company
	dim redirectVal
	dim currval
	DIM CHkDateRestriction
	Dim vIPaddress
	prcode=trim(Request("code"))
	session("prcode")=prcode	 
	vIPaddress = Request.ServerVariables("REMOTE_ADDR")
	If trim(request("code"))<>"" then
	
		Set Conncode = Server.CreateObject("ADODB.Connection")
		Set RS = Server.CreateObject("ADODB.Recordset")
		Conncode.Open Datasource1
		'SqlAccessCode="select top 1 * from eventdataCurator.dbo.GIA_cbcrawler_person_With_Speakers where AccessCode='" & trim(prcode) & "'"
		'SqlAccessCode="SELECT sno, First_name, Last_name, Email, Company_name, Headline, Image_url, LinkedIn_url, Influencer_bio, Phone, Facebook_url, Twitter_url, Company_ID, Address, City, State, Country, Zip, ID, Events_ID, Events,Company_groups, Additional_emails, Ecosystems, industry, gender, Insider_code FROM evolv_db.dbo.Curated_industry_Speakers where insider_code='" & trim(prcode) & "'"
		SqlAccessCode="SELECT ID,sno, First_name, Last_name, Email, Company_name, Headline FROM EvolveSV.dbo.Speakers_List_DO_Tool where Login_Code='" & trim(prcode) & "'"
		rs.OPEN SqlAccessCode,Datasource1
		
		If Not rs.EOF then
			''''''''''''''''''''''''''''''''''''''''''''''''''
			'' check the user in database if exists
			session("accesscode") = Trim(prcode)
			''session("cp_code")=Trim(rs("cp_code"))
			session("UID")=trim(rs("ID"))
			session("EID")=trim(rs("Email"))
			session("usrname")="Welcome "& trim(rs("first_name")) & ". "&trim(rs("Last_Name"))
			session("usrname1")= trim(rs("First_Name")) & " "&trim(rs("Last_Name"))
			session("fname")= trim(rs("First_Name"))
			session("lname")= trim(rs("Last_Name"))
			session("usrcompany1")= trim(rs("Company_name"))
			
			''response.write "Successfull"
			''response.end
			'' Invitation LOGS 
			
			InsertSQL = "Insert into EvolveSV.[dbo].[Invitation_Log_Details]([LogDateTime],[IPAddress],[ID],[SNO])VALUES(GETDATE(),'"&trim(vIPaddress)&"','"&trim(rs("ID"))&"','"&trim(rs("sno"))&"')" 
	        Conncode.Execute InsertSQL
			
			response.redirect("clicktoengage.asp?code="& Trim(prcode))
			
		else 		
			response.write "<b align='Center'>Invalid Access Code. Please check and try again. This is a secured platform.</b>" 	
			response.end
		end if	
		
		
		

End if%>

<%if (retval = 1 or retval = 2 or retval = 3 or retval = 4) then%>
<html>
<head>
<title></title>
<link href="aspincludes/globind.css" rel="stylesheet" type="text/css">
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
<!--link href="aspincludes/globind.css" rel="stylesheet" type="text/css"-->
<body  topmargin="0" leftmargin="0" onload="window.document.title='Privileged Client Platform - Global Industry Anlaysts Inc'">

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
<td colspan="4" align=right bgcolor="#D3E2DF" class="style1">Global Industry Analysts, Inc.</td>
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
            <td width="100%" height="5"><p align="center"><big><font color="#800000"><strong>Invalid email ID or expired Password. Please check and try again. This is a secured platform.  </strong></font></big></td>
          </tr>
          <%elseif retval = 3 then%>
          <!--tr>
            <td width="100%" height="5"><p align="center"><big><font color="#800000"><strong>Please use registered email ID. This is a secured platform. </font></big></td>
          </tr-->
	  <tr>
            <td width="100%" height="5"><p align="center"><big><font color="#800000"><strong><%=trim(request("TxtemailID"))%> - First you need to be registered, please click <a href="registerd.asp">here</a> to register and try again. </font></big></td>
          </tr>
          <%elseif retval = 4 then%>
          <tr>
            <td width="100%" height="5"><p align="center"><big><font color="#800000"><strong>Your access to this site has been denied. For details, please contact the site administrator by email at <a href=mailto:info411@strategyr.com>info411@strategyr.com</a> or call us on 408-528-9966 weekdays during business hours 8.00 AM through 5.00 PM Pacific Standard Time. Thank you.

<!--Your login has been blocked by site administrator, for more details contact <a href='mailto:info@StrategyR.com'>info@StrategyR.com</a-->. </strong></font></big></td>
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
            <td width="100%" align="center"><p align="center"><a href="CMI_Access.asp"><strong>Back</strong></a></td>
          </tr>
        </table>
          <!--include file="ASPIncludes/privilegebottomstrip.asp"-->
        </td>
      </tr>
      </table>
   </body>
</html>
<%End if%>
