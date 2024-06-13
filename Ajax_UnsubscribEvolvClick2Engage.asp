<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->

<%
	Set MyCon = Server.CreateObject("ADODB.Connection")		
    MyCon.Open Datasource4		
	
	RecChkSQL = "SELECT * FROM Curated_industry_Speakers WHERE insider_code='"&trim(request("code"))&"'" 
	Set RecChkRS = Server.CreateObject("ADODB.Recordset")
	RecChkRS.Open RecChkSQL, MyCon	
	
	If Not RecChkRS.EOF Then		
		
updateSQL = "UPDATE Curated_industry_Speakers SET Unsubscribe_email = '"&trim(request("vtxtunsubscribeemail"))&"',UnsubFrm_Marketing_Communications = '"&trim(request("vchkMarketing_Communications"))&"', No_email_required = '"&trim(request("vchkNo_email"))&"', UnsubFrm_Speaker_Pool = '"&trim(request("vchkSpeaker_Pool"))&"' WHERE insider_code='"&trim(request("code"))&"'"
		MyCon.Execute updateSQL

		 '''INSERT DATA INTO Companies_Removed_MCPs
		
	End If
	
	set MyCon = Nothing
		
	response.write updateSQL
%>