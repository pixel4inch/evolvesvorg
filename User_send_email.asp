<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="evolv">
    <title>evolv send mail</title>
    <!---css---->
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/custom.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css" rel="stylesheet" />
	<style>
.dataTables_paginate {
    margin: 2px 0;
    white-space: nowrap;
    justify-content: flex-end;
    display: flex;
    padding-left: 0;
    list-style: none;
    border-radius: 0.25rem;
}
.dataTables_paginate span{
     justify-content: flex-end;
    display: flex;   
    list-style: none;
   
}

.paginate_button {
    position: relative;
    display: block;
    padding: 0.5rem 0.75rem;
    margin-left: -1px;
    line-height: 1.25;
    color: #656565;
    background-color: #fff;
    border: 1px solid #dee2e6;
	cursor:pointer;
	text-decoration:none !important;
}

.dataTables_paginate .paginate_button.current{
    z-index: 3;
    color: #fff;
    background-color: #007bff;
    border-color: #007bff;
}

</style>
</head>

<body>

<!--#include file="ASPIncludes/TopStripInner.asp"-->	
<!--#include file="ASPIncludes/TopStrip.asp"-->	
<!--#include file="adovbs.asp"-->
<!--#include file="ASPIncludes/sendemail.asp"-->	

    <main role="main" class="container main">
          <div class="row pb-5">
            <div class="col-12 shadow  mx-auto bg-white px-0 mt-3">
                
					
					<div class="alert bg-secondary text-white px-3  py-2 rounded-0 my-0 font-weight-bold" role="alert">
                    <!--<div class="user_icon bg-white float-left mr-3">
                        <img src="img/2.jpg" class="img-fluid" />
                    </div>-->
                    <h5 class="mb-0"><%=Trim(session("username"))%></h5>
                </div>
                <div class="w-100  py-1 px-3">
                    <form name="frmGRP1" method="post" >
					  <div class="w-100" style="margin-bottom:40px;"> 
					
						<!--Panelist--> 
						<!--<%'=uname%><br> <%'=company%>&nbsp;<br><%'=Replace(FormatDateTime(Now,1),daydisplay,"")%><br>-->
						<div class="w-100  text-center  modules_page_title text-center"> <h3>ENGAGEMENTS MESSAGING</h3></div>
						
						
						
						<%
						If trim(UserMSG)<>"" then
						''UserMSG
						''response.write trim(UserMSG)
						End If
						userSUB="EVOLV Admin" '' trim(request("fname")) & ",&#013; &#010;"
						UserMSG = UserMSG &"Greetings " & trim(request("fname")) & ",&#013; &#010;"
						UserMSG = UserMSG &"Thanks for your interest and registering on EVOLV Platform.&#013; &#010;" 
						UserMSG = UserMSG &"We`re looking forward to serving you.&#013; &#010;"
						UserMSG = UserMSG &"Team EVOLV.&#013; &#010;"
						client = trim(request("uEmail"))
						fromClient = Source_Email
						'response.write "testing " & client
						'response.end
						%>				
						
						<div >
						<div class="mb-3"><p class="font-weight-bold mb-1 ">To Email:</p> 
							<input type="text" placeholder="Email" id="musermail" name="musermail" readonly class='form-control border' style="width:100% !important" value="<%=client%>">
						</div>
						<div class="mb-3"><p class="font-weight-bold mb-1 ">Subject:</p> <input type="text" class="w-100 mt-2" placeholder="Subject" id="mUsersubject" name="mUsersubject"  value="<%=UserSUB%>"></div>
						<div><p class="font-weight-bold mb-1">Message:</p><textarea class="w-100" placeholder="Message here..." id="mUserMessage" name="mUserMessage"  rows="8"><%=UserMSG%></textarea></div>
						<div  class="text-center">
						<!--<input type="submit" class="btntext" name="btnsubmit" onclick="return validateform();" value="SAVE & NEXT" style="width:130px; display:block; margin:0 auto !important; float:none; font-weight:bold; font-size:15px;">-->
						<button type="submit" class="btn btn-primary rounded-0 mx-auto" name="btnsendMSG" onclick="return resend_message();" value="SENDMESSAGE"><small>SEND MESSAGE</small></button>
						</div>
						</div>
						</div>
						
			<%if trim(request("btnsendMSG"))="SENDMESSAGE" Then
				'response.write fromClient
				fromClient = "contact@evolv.cc"
				client= trim(request("musermail"))
				''client= trim(request("data-email"))
				subject_line= trim(request("mUsersubject"))  ''&"<br>"
				MessageBody= "<pre>" & trim(request("mUserMessage"))&"</pre>"
				''response.write client & "<BR>" &  subject_line& "<BR>" &MessageBody
			    ''response.end
				if ( trim(client)<>"" and trim(subject_line) <> ""  and trim(MessageBody) <> "") then
					Set ConMsg = Server.CreateObject("ADODB.Connection")
					''	ConMsg.Open DataSource1
						''sqlMsgInst="INSERT INTO [App_User_Collaborate_Messages] ([From_ID],[To_ID],[Message_Subject],[Message_Text],[Date_Sent],[Message_Status],[Message_Type]) VALUES  ('" & fromClient & "','" & client & "','" & replace(subject_line,"'","`") & "','" & replace(MessageBody,"'","`") & "',getdate(),'N','SENDMESSAGE')" 
					''	response.write sqlMsgInst
					''	ConMsg.execute(sqlMsgInst)
					set ConMsg=nothing					
					
					call sendemail1(fromClient,client,subject_line,MessageBody)
					''call sendemail1(client,"contact@evolv.cc",subject_line,MessageBody)
					''response.redirect("Get_user_Logs.asp?code=" & cid&"&encID=" & EncID)
					
					''response.write "Email Sent"
					''response.end
				end if
		END IF
		%>
						</form>


                </div>
            </div>


        </div>
        <!---BEGIN:INPUT SECTION--->



    </main>

     <!--#include file="ASPIncludes/BottomStrip.htm"-->	
</body>
<!---script--->
<script src="https://code.jquery.com/jquery-3.5.1.js "></script>
<script src="js/bootstrap.bundle.js "></script>
<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js "></script>
<script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js "></script>
<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/buttons/1.6.4/js/dataTables.buttons.min.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/buttons/1.6.4/js/buttons.flash.min.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/buttons/1.6.4/js/buttons.html5.min.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/buttons/1.6.4/js/buttons.print.min.js"></script>
<script>
    $(document).ready(function() {
        $('#example').DataTable({
		pageLength : 50,
            "footerCallback": function(row, data, start, end, display) {
                var api = this.api(),
                    data;

                // Remove the formatting to get integer data for summation
                var intVal = function(i) {
                    return typeof i === 'string' ?
                        i.replace(/[\$,]/g, '') * 1 :
                        typeof i === 'number' ?
                        i : 0;
                };

                // Total over all pages
                total = api
                    .column(4)
                    .data()
                    .reduce(function(a, b) {
                        return intVal(a) + intVal(b);
                    }, 0);

                // Total over this page
                pageTotal = api
                    .column(4, {
                        page: 'current'
                    })
                    .data()
                    .reduce(function(a, b) {
                        return intVal(a) + intVal(b);
                    }, 0);

                // Update footer
                $(api.column(4).footer()).html(
                    '$' + pageTotal + ' ( $' + total + ' total)'
                );
            }
        });
    });

</script>

</html>
