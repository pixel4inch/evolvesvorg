<!--#include file="ADOVBS.asp"-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!DOCTYPE html>
<html>
<body>
   
    <div id='showData'></div>
</body>
<% 
Function JSONtoXML_Email(jsonText)
  'read data from client
 records = jsonText
 'convert the JSON string to an array
 Set oRegExpre = new RegExp
 oRegExpre.Global = true
 oRegExpre.Pattern = "[\[\]\{\}""]+"
 records = replace(records, "},{","||")
 records = oRegExpre.Replace(records, "" )
 aRecords = split(records,"||")
 'iterate the array and do some cleanup
 for each rec in aRecords
   aRecord = split(rec,",")
   id          = split(aRecord(1),":")(1)
   field       = split(aRecord(0),":")(0)
   updateValue = split(aRecord(0),":")(3)
   updateValue = replace(updateValue,chr(10),"\n")
   updateValue = replace(updateValue,chr(13),"\r")
   updateValue = replace(updateValue,"'","''")
  
next
JSONtoXML_Email = updateValue
End Function

Function JSONtoXML_Other(jsonText)
  'read data from client
 records = jsonText
 'convert the JSON string to an array
 Set oRegExpre = new RegExp
 oRegExpre.Global = true
 oRegExpre.Pattern = "[\[\]\{\}""]+"
 records = replace(records, "},{","||")
 records = oRegExpre.Replace(records, "" )
 aRecords = split(records,"||")
 'iterate the array and do some cleanup
 for each rec in aRecords
   aRecord = split(rec,",")
   id          = split(aRecord(1),":")(1)
   field       = split(aRecord(0),":")(0)
   updateValue = split(aRecord(0),":")(3)
   updateValue = replace(updateValue,chr(10),"\n")
   updateValue = replace(updateValue,chr(13),"\r")
   updateValue = replace(updateValue,"'","''")
  JSONtoXML_Other = updateValue
  ''response.write field &" = """&updateValue&"""<br>"
next
End Function
Set Conchk = Server.CreateObject("ADODB.Connection")
Conchk.Open DataSource4


''redirect_uri="https://www.evolv.cc/LogInUsingLinkedinApp/getLinkedinData.asp"
redirect_uri="https://www.evolv.cc/getLinkedinData.asp?UsID="&request("UsID")&"&rcode="&request("rcode")&"&ecode="&request("ecode")&""

client_id="776mq7f8zjs87n"
client_secret="V6hXNRRgPVy75bWZ"

''''client_id="863umkwobrkxju"
'''client_secret="fXLp5dVEFajq6ti9"

urlname="https://www.linkedin.com/oauth/v2/accessToken?grant_type=authorization_code&code="&request("code") &"&redirect_uri="&redirect_uri&"&client_id="&client_id&"&client_secret="&client_secret&""

	Set objXML = Server.CreateObject("MSXML2.ServerXMLHTTP.6.0")
	objXML.Open "GET", urlname, false 
	objXML.Send 
	'objXML.WaitForResponse 60
	jsonString= objXML.responseText				
	replACCTOKEN=replace(jsonString,"{""access_token"":""","")
	Atoken=InStr(replACCTOKEN,",""expires_in"":")
	''response.write replACCTOKEN & "<br>"	
	maintoken= left(replACCTOKEN,(Atoken-2))
	urlAccesstoken="https://api.linkedin.com/v2/me Authorization: Bearer " & maintoken  & ""
	
				
	''' Email Address
	url_email="https://api.linkedin.com/v2/emailAddress?q=members&projection=(elements*(handle~))&oauth2_access_token="& maintoken
	urlAccesstoken="https://api.linkedin.com/v2/me?access_token="& maintoken&"format=json"
	Set objXML2 = Server.CreateObject("MSXML2.ServerXMLHTTP.6.0")
	objXML2.Open "GET", url_email, false 
	objXML2.Send  ''"'Authorization: Bearer " & maintoken & "'"
	''objXML1.Send "'Authorization: Bearer AQUgoAJNfXzz-RWgbh8xcDLJ8MQv9Q_vvRFF2SRGP9FaI6FklWno6P5TBl85PljskhnCLTd5Fy8hsud7GhrJknMdt90ZWBQu-nqYRbsnK-G_hlSoTwaHDyxlDVT5dUfDvs529igx1Jqrk9EH7LpPPR0kvzhBo-0h4as80Oecc7DjyqEnNaEp820XnXIJLcuDGJWQbR9zdEUnUXnZAGzamVM5SSSFO3nV6WU47TV_WAysIYNEtpuHuPNVBLiIDtF4EUtXh7ugKsO_QO7dJx9Oi7nL8VwoUtGATaIjXs8DggXvztSw-odAzaJTg35lUJcplurnBexcyfUCP7OqreKfhtNCVzWJ6g'"
	returnData2= objXML2.responseText	
	emailexists=InStr(returnData2,"""emailAddress"":")
	
	'''"emailAddress":
	if emailexists >0 then
		emailid= JSONtoXML_Email(returnData2)
	else
		emailid=""
	end if
			
	url="https://api.linkedin.com/v2/me?projection=(id,firstName,lastName,profilePicture(displayImage~:playableStreams))&oauth2_access_token="& maintoken
	urlAccesstoken="https://api.linkedin.com/v2/me?access_token="& maintoken&"format=json"
	Set objXML1 = Server.CreateObject("MSXML2.ServerXMLHTTP.6.0")
	objXML1.Open "GET", url, false 
	objXML1.Send  ''"'Authorization: Bearer " & maintoken & "'"
	returnData= objXML1.responseText	
	''response.write returnData&"<br/<br/><br>"
	sqldisplaQry="select " & session.sessionid & " as Session_id,'' as inf_reference,'" & session("GeteMail") & "' as Session_email,Linkedin_id,firstname,lastname,'" & emailid & "' as email,profilePicture,country,'linkedin' as Profile_type,getdate() as Created_Date,'Y' as status,'" & session("InfCode") & "' as infcode from openjson('" & returnData & "') WITH ([Linkedin_id] varchar(20) '$.id',[firstname] VARCHAR(20) '$.firstName.localized.en_US', [lastname] VARCHAR(20) '$.lastName.localized.en_US' ,[profilePicture] VARCHAR(500) '$.profilePicture.""displayImage~"".elements[3].identifiers[0].identifier' ,[country] VARCHAR(10) '$.firstName.preferredLocale.country' );"
	''response.write sqldisplaQry
	''response.end
	Set RSRex = Server.CreateObject("ADODB.Recordset")
	RSRex.Open sqldisplaQry, DataSource4
	If Not RSRex.EOF Then
		linkid= RSRex("Linkedin_id")
		linkImage= RSRex("profilePicture")
		chkRecqry="SELECT  *  FROM tbl_Influence_Linkedin_Profile where linkedin_email='" & emailid & "'"
		response.write chkRecqry & "<br>"
		Set RScheck = Server.CreateObject("ADODB.Recordset")
		RScheck.Open chkRecqry, DataSource4
		If  RScheck.EOF Then
		  ''response.write " INSERT INTO [tbl_Influence_Linkedin_Profile] " & sqldisplaQry
		  Conchk.execute " INSERT INTO [tbl_Influence_Linkedin_Profile] " & sqldisplaQry
		  ''response.end
		end if 
		set RScheck=nothing
	end if
	set RSRex=nothing
	''response.end
	getvalue=linkImage
	''response.write getvalue
	''"https://media-exp1.licdn.com/dms/image/C4D03AQFE_oeDqX731g/profile-displayphoto-shrink_800_800/0/1517041889293?e=1634774400&v=beta&t=EHVUTAl3H_-D9GYh9Ajy_tiJFqbvGn7lz4rZg4174Hs"
	dim xHttp: Set xHttp = createobject("Microsoft.XMLHTTP")
	xHttp.Open "GET", getvalue, False
	xHttp.Send
	dim bStrm: Set bStrm = createobject("Adodb.Stream")
	with bStrm
		.type = 1 '//binary
		.open
		.write xHttp.responseBody
		.savetofile server.mappath("\Linkedin_Profile_Images\" &linkid & ".jpg"), 2 '//overwrite
	end with
	''if trim(session("Eid"))=trim(emailid) then %>
	<script>
		alert("Your request has been received. We will get back to you shortly. Thank you - Host committee")
	</script>
	<%
	'' InsertSQL = "Insert into Evolv_Request_invite (First_Name, Last_Name, Linkedin, Position, Company, Email, Country, Login_ID, created_Date, Status, Source_Page) VALUES	 ('"&trim(request("vfirst_name"))&"','"&trim(request("vlast_name"))&"','"&trim(request("vLinkedin"))&"','"&trim(request("vPosition"))&"','"&trim(request("vCompany"))&"','"&trim(request("vEmail"))&"','"&trim(request("vCountry"))&"','',GETDATE(),'Y','"& trim(request("vSource_Page"))&"')" 
		 
	If trim(session("GeteMail"))<>"" Then
		Set RSRetrieve = Server.CreateObject("ADODB.Recordset")
		sqldisData = "Select * from [Evolv_Request_invite] where Email='"&session("GeteMail")&"'"
		RSRetrieve.Open sqldisData, DataSource4
		If Not RSRetrieve.EOF Then
			''' update query
			dim LinkedIn_Image_path
			LinkedIn_Image_path = linkid & ".jpg"
			updateSql_Li = "Update [Evolv_Request_invite] set LinkedIn_Email='" & emailid & "',LinkedIn_Image='"&LinkedIn_Image_path&"' where Email='"&session("GeteMail")&"'"
			Conchk.execute updateSql_Li
		End If
		Set RSRetrieve = Nothing
	End If
	Set RSRetrieve = Nothing
	''response.redirect("https://www.evolv.cc/Influencer_1.asp?code="&trim(session("Company_CP_Code"))&"&infcode=" & trim(session("infcode"))&"&GTAct="&linkid)
	%>
	
	<%''	end if
	session("InfCode") = ""
    %>
	  <script>
	  window.close();
	  </script>
	  </html>