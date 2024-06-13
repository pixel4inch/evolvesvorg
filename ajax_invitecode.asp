<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->
<%	
							''''CHECK FOR INVITE CODE FORM invite_users TABLE (GUEST OF PERSON)
							Set rsChkInvite = Server.CreateObject("ADODB.Recordset")
							SqlInvite="Select * from invite_users where invite_code='" & trim(request("vInvite_code")) & "' and status='Y'"
							session("InfCode")= trim(request("vInvite_code"))
							rsChkInvite.Open SqlInvite,Datasource4		
							''response.write SqlInvite
							IF not rsChkInvite.EOF Then
								Invite_name="<b>GUEST OF " & ucase(rsChkInvite("Display_name")) & "</b><br/> (Not Transferable)"
								session("InfCode")=rsChkInvite("Invite_code")
							else
								Set MyCon = Server.CreateObject("ADODB.Connection")		
								MyCon.Open Datasource4
								''''CHECK FOR INVITE CODE FORM Invitee_10M_People TABLE (REQUEST TO JOIN THE CONFERENCE)
								RecChkSQL = "SELECT * FROM  Invitee_10M_People WHERE INVITE_CODE ='"&trim(request("vInvite_code"))&"'" 
								Set RecChkRS = Server.CreateObject("ADODB.Recordset")
								RecChkRS.Open RecChkSQL, MyCon
								IF not RecChkRS.EOF Then
									Invite_name="<b>INVITATION FOR " & ucase(RecChkRS("first_name")) & " " & ucase(RecChkRS("last_name")) & "</b><br/> (Not Transferable)"
									session("InfCode")=RecChkRS("INVITE_CODE")
								Else
									Invite_name="Subject to availability"
									session("InfCode")=""
								End If
								set RecChkRS = nothing
								Set MyCon = nothing
							end if
							set rsChkInvite=nothing
							response.write Invite_name
 %>