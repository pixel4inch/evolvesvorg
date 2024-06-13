<!DOCTYPE html>
<html lang="en">

<!--#include file="aspincludes/dbopen.asp"-->
<!--#include file="adovbs.asp"-->
<head>
  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>Speaker Invite - Evolv.cc</title>

  <!-- Mobile Specific Metas
  ================================================== -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="Evolv">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
  <meta name="author" content="Evolv ">
  <meta name="generator" content="Evolv">

  <!-- theme meta -->
  <meta name="theme-name" content="Evolv" />

  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
  <!-- PLUGINS CSS STYLE -->
  <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css" />
  <link rel="stylesheet" href="plugins/themify-icons/themify-icons.css" />
  <link rel="stylesheet" href="plugins/slick/slick.css" />
  <link rel="stylesheet" href="plugins/slick/slick-theme.css" />
  <link rel="stylesheet" href="plugins/fancybox/jquery.fancybox.min.css" />
  <link rel="stylesheet" href="plugins/aos/aos.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">



  <!-- CUSTOM CSS -->
  <link href="css/style.css" rel="stylesheet" />
  <link href="css/custome.css" rel="stylesheet" />
  <link href="./plugins/jsvectormap-master/dist/css/jsvectormap.css" rel="stylesheet" />


  <!---WEB COMPONETNS-->
  <script src="./webcomponts/headerComponents.js"></script>
  <script src="./webcomponts/FooterComponent.js"></script>
  <script src="./webcomponts/ScrollToTop.js"></script>
  <script src="./webcomponts/dummytext.js"></script>

  <script>
function SaveData(){ 
			var vFirst_Name = $("#first_name").val();
			var vLast_Name = $("#last_name").val();
			var vEmail = $("#email").val();	
			var vPhone = $("#phone").val();
			var vLinkedin = $("#linkedInLink").val();
			var vlocation = $("#location").val();
			var vInvite_code = $("#Invite_code").val();
			
			var vDesignation = $("#designation").val();
			var vCompany = $("#company_name").val();
			
			//participant_type participantBio
			var vMembershipType = $('input[name="participant_type"]:checked').val();
			//var vMembershipType = 'SPEAKER_INVITE';
			var vParticipantBio = $("#participantBio").val();
			
			var vSource_Page = '';		
			var checkbox1_check = 1;
			//alert (vMembershipType);
			
			//alert (vParticipantBio);
			

			if (vEmail != null && vEmail != '' && vFirst_Name != null && vFirst_Name != '' && vLast_Name != null && vLast_Name != '' && vCompany != null && vCompany != '' && vDesignation != null && vDesignation != '' )	 
			{
				if (checkbox1_check == 1)
				{
					//alert(vReportName);
					$.ajax({
								url: "Ajax_Add_Corporate_Membership.asp",
								type: "POST",						
								data:'vPhone='+encodeURIComponent(vPhone)+'&vEmail='+encodeURIComponent(vEmail)+'&vFirst_Name='+encodeURIComponent(vFirst_Name)+'&vLast_Name='+encodeURIComponent(vLast_Name)+'&vLinkedin='+encodeURIComponent(vLinkedin)+'&vlocation='+encodeURIComponent(vlocation)+'&vDesignation='+encodeURIComponent(vDesignation)+'&vCompany='+encodeURIComponent(vCompany)+'&vMembershipType='+encodeURIComponent(vMembershipType)+'&vInvite_code='+encodeURIComponent(vInvite_code)+'&vParticipantBio='+encodeURIComponent(vParticipantBio)+'',
								success: function(data){
									alert(data);
									//alert('Thanks for submitting!');
									document.getElementById('first_name').value = "";
									document.getElementById('last_name').value = "";
									document.getElementById('linkedInLink').value = "";
									document.getElementById('location').value = "";
									document.getElementById('email').value = "";
									document.getElementById('phone').value = "";
									document.getElementById('designation').value = "";
									document.getElementById('company_name').value = "";
									document.getElementById('participantBio').value = "";
									
									$('#ddiv').append(data);
									$("html, body").animate({ scrollTop: 0 }, "slow");
														  
								},
								error: function (xhr, ajaxOptions, thrownError) {
								alert(xhr.status);
								alert(thrownError);
								alert(xhr.responseText);
								}
							});	
				 } 
				 else
				 {
					alert("Please accept our privacy policy to continue");
				 }
			 }
			 else
			 {			    
				alert("Fields marked with * are mandatory");			  
			 }
			}
			
			function SaveCheckBox(fieldname){ 
				//var vInvite_code = $("#Invite_code").val();
				var vInvite_code = $("#Invite_code1").val();
				//alert (vInvite_code);
				var vCheckbox_check = '';
				if ($('#chk1').is(':checked')) {
					vCheckbox_check = 'CHECKED';
				}
				else
				{
					vCheckbox_check = '';
				}
				
				var vSourceType = $("#chk"+fieldname).val();
				//vInvite_code ='';
				
				if (vInvite_code != null && vInvite_code != '')
				{
				//alert(vReportName);
					$.ajax({
								url: "Ajax_Add_invite_form.asp",
								type: "POST",						
								data:'&vInvite_code='+encodeURIComponent(vInvite_code)+'&vSourceType='+encodeURIComponent(vSourceType)+'&vCheckbox_check='+encodeURIComponent(vCheckbox_check)+'&vInvite_code1='+encodeURIComponent(vInvite_code)+'',
								success: function(data){
									alert(data);
									//alert('Thanks for submitting!');
									
								},
								error: function (xhr, ajaxOptions, thrownError) {
								alert(xhr.status);
								alert(thrownError);
								alert(xhr.responseText);
								}
							});	
				}
				else
				{
					alert("Invite code cannot be empty");
				}
				
			
			}
</script>

</head>

<body class="body-wrapper" id="container" data-spy="scroll" data-target=".privacy-nav" ><!--onBeforePrint="document.body.style.display='none';" onAfterPrint="document.body.style.display='block';" onContextmenu="return false" onSelectstart="return false" onDragstart="return false"  topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0"-->

  <!--============================
=            HEADER           =
=============================-->
  <header-component></header-component>
  <!--============================
    PLACEKEEPTER BANNER
=============================-->    
<div class="body-content">
        <section class="section  pt-4 page-title">
    <%
	''' FOR CII SV EVENT FOR NOV 14 & 15
	If trim(request("Invite_code"))="CIISV@EVOLV1123" Then
		response.redirect "CIISV_VIP_CODE.asp?login_Invite_code=CIISV@EVOLV1123"
	End if
	
	If trim(request("Invite_code"))="EVOLVDTE82423" Then
		'response.redirect "check_login_code.asp?login_Invite_code=EVOLVDTE82423"
	End if
	
	If trim(request("Invite_code"))="EVOLVSPLREG82423" Then
		'response.redirect "check_login_code.asp?login_Invite_code=EVOLVSPLREG82423"
	End if
	
	If trim(request("Invite_code"))="CII-VIP-82423" Then
		'response.redirect "check_vip_code.asp?login_Invite_code=CII-VIP-82423"
	End if
	
	If trim(request("Invite_code"))="CII-VIR-82425" Then
		'response.redirect "check_virtual_code.asp?login_Invite_code=CII-VIR-82425"
	End if
	
	Dim GTFirst_Name, GTLast_Name, GTDesignation, GTCompany, GTLinkedIn, GTEmail
	''InviteQry = "SELECT [Result],[SNO],[FirstName],[LastName],[Title],[CompanyName],[CODE]  FROM [evolvDB].[dbo].[Deep_Tech_UL_People_Verified] where Code='"&trim(request("Invite_code"))&"'"
	InviteQry = "SELECT [Result],[SNO],[FirstName],[LastName],[Title],[CompanyName],[CODE]  FROM [evolvDB].[dbo].[Deep_Tech_UL_People_Verified] where Code='"&trim(request("Invite_code"))&"'"
	Set RSInvite = Server.CreateObject("ADODB.Recordset")
	RSInvite.CursorType = 3				
	''RSInvite.PageSize = cdbl(rec_per_page)	
	RSInvite.Open InviteQry, Datasource4
	
	If Not RSInvite.EOF Then
		'''response.write "Name = "& trim(RSInvite("FirstName"))
		GTFirst_Name = trim(RSInvite("FirstName"))
		GTLast_Name = trim(RSInvite("LastName"))
		GTDesignation = trim(RSInvite("Title"))
		GTCompany = trim(RSInvite("CompanyName"))
	Else
		''' CHECK to see in the other table [Evolv_DB1].[dbo].[UL_Indian_CXOs_10M_Above]
		InviteQry_CXO = "SELECT [SNO],[FirstName],[LastName],[Title],[Email],[CompanyName],[ContactLinkedIn],[CODE]  FROM [Evolv_DB1].[dbo].[UL_Indian_CXOs_10M_Above] where Code='"&trim(request("Invite_code"))&"'"
		Set RSInvite_CXO = Server.CreateObject("ADODB.Recordset")
		RSInvite_CXO.CursorType = 3				
		''RSInvite.PageSize = cdbl(rec_per_page)	
		RSInvite_CXO.Open InviteQry_CXO, Datasource4
		
		If Not RSInvite_CXO.EOF Then
			response.redirect "check_Invite_code.asp?login_Invite_code="&trim(request("Invite_code"))&""
		Else
			''' CHECK to see in the other table [Evolv_DB1].[dbo].[UL_Indian_CXOs_10M_Above]
			InviteQry_Virtual = "SELECT [SNO],[FirstName],[LastName],[Title],[Email],[CompanyName],[ContactLinkedIn],[CODE] FROM [Evolv_DB1].[dbo].[Uplead_India_People_List] where Code='"&trim(request("Invite_code"))&"'"
			Set RSInvite_Virtual = Server.CreateObject("ADODB.Recordset")
			RSInvite_Virtual.CursorType = 3				
			''RSInvite.PageSize = cdbl(rec_per_page)					
			RSInvite_Virtual.Open InviteQry_Virtual, Datasource4
			
			''response.write "InviteQry_Virtual = "&InviteQry_Virtual
			If Not RSInvite_Virtual.EOF Then
				
				''response.redirect "check_virtual_code.asp?login_Invite_code="&trim(request("Invite_code"))&""
				response.write "-- PLEASE CHECK YOUR CODE. IT IS NOT VALID.--"
			Else
				response.write "-- PLEASE CHECK YOUR CODE. IT IS NOT VALID. --"
				Set RSInvite_Virtual = nothing
				response.end
			End If
		End If
	End If
	Set RSInvite = nothing
	
	%>
  
	<!-- START OF MEMBERSHIP-->
	
            <div class="container">
                <div class="row">
                    <div class="w-100">
						<div class="border-bottom pb-4 mt-4">
                            <h1 class="font-display1 text-center  mx-auto"
                                style="margin-bottom:7px !important; text-transform: capitalize; font-size: 32px !important;">
                                Evolv™ NextTech
                            </h1>
                            <h5 class="para-display2 mb-0" style="font-weight:600">New Delhi | August 24, 2023</h5>
							 <p class="para-display1 mb-0 mt-3" ><b>Sessions are live-streamed to 30,000+ decision-makers and again amplified post-event to 800,000+ influencers globally.</b></p>
							
                            <!---p class="para-display1 mb-0 mt-3" style="font-style: italic;">All Evolv™ NextTech delegates
                                are also registered to attend B20 India 2023 Summit without any additional delegate
                                fees. Both events are consecutively Presented by the Confederation of Indian Industry.
                            </p--->
							<p class="para-display1 mb-0 mt-3" ><b>World’s Greatest B2B Powerball Is Coming!</b><br/>
1700+ decision-makers @ 1100+ companies, mostly CXOs and prominent government leaders in trade and industry from 46 countries (19 countries and the EU comprised of 27 sovereign nations) will converge into New Delhi August 24-27. About 40% are from India. Evolv™ NextTech is a one-day event focused on showcasing some of the world’s leading-edge deep-tech startups and scale-ups at the B20 Summit.</p>
                        </div>
						<br/>
						<div class="col-sm-12 col-md-12  col-lg-12 col-xl-11  mb-4 m-auto">
							 <h1 class="font-display2 text-center main-font-color">SPECIAL INVITEE REGISTRATION</h1>
						</div>
						<div id="ddiv" name="ddiv" style="color:#FF8000"></div>
						<div class="col-sm-12 col-lg-11 m-auto">                       
							<div class="w-100">                            
									 <p class="text-left para-display2 mb-3 text-center">									
											<span class="text-center "> <b>Name:</b> <%=GTFirst_Name%>&nbsp;<%=GTLast_Name%> </span><br/>
											<span class="text-center"> <b>Designation:</b> <%=GTDesignation%> </span><br/>
											<span class="text-center"> <b>Company:</b> <%=GTCompany%></span>
									  </p>
							  </div>
							  
						<hr class="divider" style="margin-top: 10px !important;"/>
						
						<div class="col-xl-8 col-lg-9 col-md-11 col-sm-12 mx-auto">
						<div class="row mx-auto mt-4 mb-3">
						<div class="col-12 col-lg-6 col-md-6   px-2 py-1">
							<input type="checkbox" id="chk1" name="chk1" value="Company_Participate" onclick="SaveCheckBox('1')"> Our Company Will Participate
						</div>
						
						<div class="col-12 col-lg-6 col-md-6  px-2 py-1">
							<input type="checkbox" id="chk2" name="chk2" value="Company_Showcase" onclick="SaveCheckBox('2')"> Please Showcase Our Company 
						</div>
						
						<div class="col-12 col-lg-6 col-md-6 px-2 py-1">
							<input type="checkbox" id="chk3" name="chk3" value="Annual_Membership" onclick="SaveCheckBox('3')"> Send me Annual Membership Details 
						</div>
						
						<div class="col-12 col-lg-6 col-md-6  px-2 py-1">
							<input type="checkbox" id="chk4" name="chk4" value="Annual_Sponsorship" onclick="SaveCheckBox('4')"> Send me Annual Sponsorship Details 
						</div>
						</div>
						
						<input type="hidden" id="Invite_code1" name="Invite_code1" value="<%=trim(request("Invite_code"))%>">
					
						</div>
                        <p class="text-left para-display2 mb-3 text-center"><a id="CorporateCheck" class="form-check-labe ml-0  main-font-color font-weight-bold para-display2" style="cursor:pointer" >ADD PRESENTER/ATTENDEE REPRESENTING YOUR COMPANY</a>
                        </p>
						 <p class="text-left para-display2 mb-3 text-center">NOTE: You can add multiple Presenter/Attendee below.
                        </p>
                        <div class="mt-4" id="collapseExample">
                            <div class="w-100">
                            
                                 <div class="row mx-0">
                                    
                                     <div class="col-sm-6 mb-2 p-1">
                                         <span class="floating-label"> First Name <span class="text-danger">*</span> </span>
                                         <input class="form-control main mb-1 " type="text"  id="first_name" name="first_name" required="">
                                     </div>
                                    
                                     <div class="col-sm-6 mb-3 p-1">
                                        <span class="floating-label"> Last Name <span class="text-danger">*</span> </span>
                                         <input class="form-control main mb-1" type="text" id="last_name" name="last_name" required="">
                                     </div>
                                   
                                     <div class="col-sm-6 mb-3 p-1">
                                         <span class="floating-label"> Email  <span class="text-danger">*</span> </span>
                                         <input class="form-control main mb-1" type="email"  id="email" name="email" required="">
                                     </div>
                                    
                                     <div class="col-sm-6 mb-3 p-1">
                                          <span class="floating-label"> Phone  </span>
                                         <input class="form-control main mb-1" type="number"  id="phone" name="phone" >
                                     </div>
									 
									  <div class="col-sm-6 mb-3 p-1">
                                         <span class="floating-label"> Designation  <span class="text-danger">*</span> </span>
                                         <input class="form-control main mb-1" type="text"  id="designation" name="designation" required="">
                                     </div>
									 
									  <div class="col-sm-6 mb-3 p-1">
                                         <span class="floating-label"> Company  <span class="text-danger">*</span> </span>
                                         <input class="form-control main mb-1" type="text"  id="company_name" name="company_name" required="">
                                     </div>
                                   
                                     <div class="col-sm-6 mb-3 p-1">
                                          <span class="floating-label"> LinkedIn Link </span>
                                         <input class="form-control main mb-1" type="text" id="linkedInLink" name="linkedInLink" >
                                     </div>
									 
									<div class="col-sm-6 mb-3 p-1">
                                         <span class="floating-label"> Participant Type  <span class="text-danger">*</span> </span>
                                         <!--select class="form-control main mb-1" id="participant_type" name="participant_type">
										 <option value="SPEAKER_INVITE">Speaker</option>
										 <option value="PARTICIPANT_INVITE">Participant</option>
										 </select-->
										  
										  <input type="radio" id="PRESENTER" name="participant_type" value="PRESENTER" checked>&nbsp;&nbsp;<label for="html">PRESENTER</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" id="ATTENDEE" name="participant_type" value="ATTENDEE">&nbsp;&nbsp;<label for="html">ATTENDEE</label>
                                     </div>
									 
									 <div class="col-sm-12 mb-3 p-1">
                                          <span class="floating-label"> Participant Bio </span>
                                         <textarea class="form-control main mb-1" id="participantBio" name="participantBio" ></textarea>
                                     </div>
                                    
									<input type="hidden" id="Invite_code" name="Invite_code" value="<%=trim(request("Invite_code"))%>">
                                    
                                     <p class="text-left  mb-3 mandatory-msg">Fields marked with <span style="color:red">*</span> are mandatory</p>
                                                                     
                                     <div class="col-12 text-center">
                                         <button class="btn btn-main-md mx-auto py-2 px-2 my-4" id="submitbtn1" onclick="SaveData()" >Submit</button>
								    </div>
								     
                                 </div>
								 
								 <% SPKRInviteQry = "SELECT [Sno],[First_Name],[Last_Name],[Email],[Mobile],[LinkedInLink],[Location],[Member_Type],[Tech_Innovator_Stage],[SubmittedDate],[loginId],[Status],[Designation],[Company_Name],[Invite_Code] FROM [evolvDB].[dbo].[Evolv_Membership] where Invite_Code='"&trim(request("Invite_code"))&"'"
									Set RSInviteSPKR = Server.CreateObject("ADODB.Recordset")
									RSInviteSPKR.CursorType = 3				
									RSInviteSPKR.Open SPKRInviteQry, Datasource4
									If not RSInviteSPKR.eof then%>
										<hr class="divider" style="margin-top: 10px !important;"/>
										 <p class="text-left para-display2 mb-3 text-center font-weight-bold">VIEW PRESENTER/ATTENDEE DETAILS</p>
										<%While not RSInviteSPKR.eof%>
										
										
										<div class=" col-xl-7  col-lg-8 col-mx-12 col-sm-12 col-12 mx-auto">
										<div class="w-100">                            
										 <div class="row mx-0">                                    
											 <div class="col-md-6  p-1">
													 <p>First Name: <span class="font-weight-bold ml-1"> <%=trim(RSInviteSPKR("First_Name"))%></span> </p>
											 </div>                                    
											 <div class="col-md-6   p-1">
													<p>  Last Name:<span class="font-weight-bold ml-1"> <%=trim(RSInviteSPKR("Last_Name"))%> </span></p>									
											 </div>                                   
											 <div class="col-md-6   p-1">
												  <p>  Email: <span class="font-weight-bold ml-1">  <%=trim(RSInviteSPKR("Email"))%> </span> </p>                                       
											 </div>									 
											 <div class="col-md-6   p-1">
												 <p>  Designation:<span class="font-weight-bold ml-1"><%=trim(RSInviteSPKR("Designation"))%></span> </p>
											 </div>
											 <div class="col-md-6   p-1">
												 <p>  Participant Type:<span class="font-weight-bold ml-1"><%=trim(RSInviteSPKR("Member_Type"))%></span> </p>
											 </div>
										 </div>                            
										</div>	
										</div>
										<hr class="divider" style="margin-top: 10px !important;"/>
										<%RSInviteSPKR.movenext
										Wend%>
										
									<%End If
									set RSInviteSPKR=nothing%>
                            
                              </div>
                          </div>
						  
						  <hr class="divider" style="margin-top: 10px !important;"/>
						  
						  <h3 class="font-weight-bold  mt-4 mb-4 w-100 text-center">CII POWER INFLUENCERS & PROMINENT PARTICIPANTS</h3>
						  
						  <script  src="https://code.jquery.com/jquery-3.7.0.js"></script>
						  
						   <div class="w-100">
                                <div id="influencer_speakers"
                                    class="speaker-evolv-submit  d-flex flex-wrap  justify-content-lg-center  justify-content-xl-center justify-content-md-center justify-content-center">

                                    <script>
                                        $(document).ready(function () {
                                            $.getJSON("./data/InfluencerSpeakersList.json", function (data) {
                                                var output = '';
                                                console.log(data)
                                                $.each(data, function (key, value) {

                                                    output += `
                                                    <div class="card-md card-style1  ">
                                                           <div class="img-block">
                                                               <img src="./images/evolv/INFLUENCERS_PROMINENT/`+ value.image_link + `" alt=" ` + value.Name + `" title=" ` + value.Name + `">																</a>
                                                           </div>
                                                           <div class="card-content">
                                                           <h3 title=" ` + value.Name + `"> ` + value.Name + `</h3>
                                                           <h4 title=" ` + value.Designation + ` "> ` + value.Designation + `</h4>
                                                           <h4 title=" ` + value.Company + `"> ` + value.Company + `</h4>
                                                           </div>
                                                       </div>
                                                    
                                                    
                                                    `;

                                                });
                                                $('#influencer_speakers').html(output);
                                            }).fail(function () {
                                                document.write("An error has occurred.");
                                            });
                                        });
                                    </script>
                                </div>
                            </div>
                       
                    </form><br/>
                </div>
            </div>
        </div>
	<!-- END OF MEMBERSHIP-->
  </section>
</div>

  <!--====  End of Page Title  ====-->

  <!--============================
	           Footer            
=============================-->
  <footer-component></footer-component>


  <!---============================
           ScrollTop        
=============================--->

  <scrolltop-component></scrolltop-component>




  <!-- JAVASCRIPTS -->
  <script src="plugins/jquery/jquery.min.js"></script>
  <script src="plugins/bootstrap/bootstrap.min.js"></script>
  <script src="plugins/slick/slick.min.js"></script>
  <script src="plugins/fancybox/jquery.fancybox.min.js"></script>
  <script src="plugins/syotimer/jquery.syotimer.min.js"></script>
  <script src="plugins/aos/aos.js"></script>
  <!-- google map -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAgeuuDfRlweIs7D6uo4wdIHVvJ0LonQ6g"></script>
  <script src="plugins/google-map/gmap.js"></script>

  <script src="js/script.js"></script>
  <script src="./js/submenu_select.js"></script>

  <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>

<script type="text/javascript">
    $(document).ready(function(){
$('#google_translate_element').bind('DOMNodeInserted', function(event) {
$('.goog-te-menu-value span:first').html('LANGUAGE');
$('.goog-te-menu-frame.skiptranslate').load(function(){
    setTimeout(function(){
    $('.goog-te-menu-frame.skiptranslate').contents().find('.goog-te-menu2-item-selected .text').html('LANGUAGE');    
    }, 100);
});
});
});
</script>

	<script type="text/javascript">
        $(document).ready(function () {
            $('#google_translate_element').bind('DOMNodeInserted', function (event) {
                $('.goog-te-menu-value span:first').html('LANGUAGE');
                $('.goog-te-menu-frame.skiptranslate').load(function () {
                    setTimeout(function () {
                        $('.goog-te-menu-frame.skiptranslate').contents().find('.goog-te-menu2-item-selected .text').html('LANGUAGE');
                    }, 100);
                });
            });
        });

		$("#CorporateCheck").click(function(){
			$("#collapseExample").toggle();
		});
		
		
		$(function() {
		  var chk = $('#acceptprivacy');
		  var btn = $('#submitbtn1');

		  chk.on('change', function() {
			btn.prop("disabled", !this.checked);//true: disabled, false: enabled
		  }).trigger('change'); //page load trigger event
		});

    </script>
	
<script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en', includedLanguages: "en,es,zh-CN,de,ja,nl,fr,it,pt,ar,ko,sv,zh-TW", layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
}
</script>
</body>




</html>