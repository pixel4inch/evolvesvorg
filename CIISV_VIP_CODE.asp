<!DOCTYPE html>
<html lang="en">

<!--#include file="aspincludes/dbopen.asp"-->
<!--#include file="adovbs.asp"-->
<head>
  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>VIP Invite - Evolv.cc</title>

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
    
	<script src="https://code.jquery.com/jquery-2.1.1.min.js" type="text/javascript"></script>   
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


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
  function SaveVIPInviteeData()
  {  
    var vfirst_name = $("#first_name").val();
	var vlast_name = $("#last_name").val();
	var vdesignation = $("#designation").val();
	var vCompany = $("#Company").val();
	var vemail = $("#email").val();
	var vphone = $("#phone").val();
	var vlinkedInLink = $("#linkedInLink").val();	
	var vInvite_code = $("#login_Invite_code1").val();
	if (vfirst_name != null && vfirst_name != '' && vlast_name != null && vlast_name != '' && vdesignation != null && vdesignation != '' && vCompany != null && vCompany != '' && vemail != null && vemail != ''  )
	{
			   
		 $.ajax({
						url: "Ajax_Add_CIISVInvitee_Data.asp",
						type: "POST",					
						data:'vInvite_code='+encodeURIComponent(vInvite_code)+'&vfirst_name='+encodeURIComponent(vfirst_name)+'&vlast_name='+encodeURIComponent(vlast_name)+'&vdesignation='+encodeURIComponent(vdesignation)+'&vCompany='+encodeURIComponent(vCompany)+'&vemail='+encodeURIComponent(vemail)+'&vphone='+encodeURIComponent(vphone)+'&vlinkedInLink='+encodeURIComponent(vlinkedInLink)+'',
						success: function(data){
							//alert(data);
							
							//alert('Thanks for submitting!');								
							//parent.location.reload();
							document.getElementById('first_name').value = "";
							document.getElementById('last_name').value = "";
							document.getElementById('designation').value = "";
							document.getElementById('Company').value = "";
							document.getElementById('email').value = "";
							document.getElementById('phone').value = "";
							document.getElementById('linkedInLink').value = "";							
							 
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
	  alert("Fields marked with * are mandatory");		
	}
			
  }
  
  function SaveData(){ 
			var vFirst_Name = $("#first_name").val();
			var vLast_Name = $("#last_name").val();
			var vEmail = $("#email").val();	
			var vPhone = $("#phone").val();
			var vLinkedin = $("#linkedInLink").val();
			var vlocation = $("#location").val();
			var vInvite_code = $("#login_Invite_code").val();
			
			var vDesignation = $("#designation").val();
			var vCompany = $("#company_name").val();
			
			///var vMembershipType = $("#login_Invite_type").val();
			
			//participant_type participantBio
			//$('input[name="participant_type"]:checked').val();
			//var vMembershipType = $('input[name="participant_type"]:checked').val();
			var vMembershipType = 'INVITEE';
			var vParticipantBio = $("#participantBio").val();
			
			var vSource_Page = '';		
			var checkbox1_check = 1;
			
			

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
									//alert(data);
									//alert('Thanks for submitting!');
									document.getElementById('first_name').value = "";
									document.getElementById('last_name').value = "";
									document.getElementById('linkedInLink').value = "";
									document.getElementById('location').value = "";
									document.getElementById('email').value = "";
									document.getElementById('phone').value = "";
									document.getElementById('designation').value = "";
									document.getElementById('company_name').value = "";
									parent.location.reload();
									
									//
									$(document).ready(function(){
									  $('#AddMessage').text(data);
									});
														  
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
				var vInvite_code = $("#login_Invite_code").val();
				//alert (vInvite_code);
				var vInvite_type = $("#login_Invite_type").val();
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
								data:'&vInvite_code='+encodeURIComponent(vInvite_code)+'&vSourceType='+encodeURIComponent(vSourceType)+'&vCheckbox_check='+encodeURIComponent(vCheckbox_check)+'&vInvite_code1='+encodeURIComponent(vInvite_code)+'&vInvite_type='+encodeURIComponent(vInvite_type)+'',
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
            
                    
  
	<!-- START OF MEMBERSHIP-->
	<div class="container">
		<div class="row">
			<div class="w-100">
				<div class="row mx-0">
                    <div class="w-100">
                        <div class="pb-0 mt-4 delegation-title">
                            <h1 class="font-display1 text-center  mx-auto">
                                CII STARTUP DELEGATION
                            </h1>
                            <h5 class="para-display2 mb-0">San Francisco | November 14 & 15, 2023</h5>
						</div>
					</div>
                 </div>				
				<hr class="divider" style="margin-top: 22px !important;margin-bottom: 20px !important;"/>
				<div class="col-12 col-lg-10 mx-auto my-2 text-left" id="delegation-event-block">						
						<div class="col-12 col-md-12 col-lg-12 p-2">
							<div class="w-100">
								<div class="py-2 bg-light">
									<h3 class="text-center">Silicon Valley Influencers' Networking Luncheon</h3>
									<h5 class="text-center"> November 14, 2023 | Santa Clara, CA</h5>
									<h5 class="text-center">Venue: ServiceNow HQ, 2225 Lawson Lane, Santa Clara, CA 95054</h5>				
								</div>								
								<div class="w-100">
										<p>An informal networking luncheon between India's prominent startup founders, and Silicon Valley's marquee VCs, entrepreneurs, and enterprise CXOs. Hosted by Mr. Gary Gauba, Founder & Exec Chairman, TruU & The CXO Fund.</p>
								</div>								
								
							</div>
							</DIV></DIV>
								<hr class="divider" style="margin-top: 0px !important;margin-bottom: 9px !important;"/>
				<%
						Dim SplInviteName
						SplInviteName = ""					
						
						If trim(request("login_Invite_code")) = "EVOLVDTE82423" then
							SplInviteName = "EVOLV? ELITE DEEP-TECH INNOVATOR"
						ElseIf trim(request("login_Invite_code")) = "EVOLVSPLREG82423" then
							SplInviteName = "SPECIAL INVITEE REGISTRATION"
						ElseIf trim(request("login_Invite_code")) = "CII-VIP-82423" then
							SplInviteName = "SPECIAL INVITEE REGISTRATION"
						ElseIf trim(request("login_Invite_code")) = "CIISV@EVOLV1123" then
							SplInviteName = "SPECIAL INVITEE REGISTRATION"
						Else
							response.write "<div class='col-sm-12 col-md-12  col-lg-12 col-xl-11  mb-4 m-auto'><br/><br/><br/><p align='center'><font color='red'>CODE "&trim(request("login_Invite_code"))&" is not valid. Please check with the Evolv Admin. Thank you.</font><br/><br/><br/> <input type='button' name='btnback' value='BACK' onclick='window.history.back();'></p></div>"
							response.end						
						End if
						%>
						<br/>
						<div id="ddiv" name="ddiv" style="color:#FF8000"></div>
						<h4 id="AddMessage" class="font-weight-bold text-transform-uppercase program-title"
                                    style="color:#FF8000"></h4>
						<div class="col-sm-12 col-md-12  col-lg-12 col-xl-11  mb-4 m-auto">
							 <h1 class="font-display2 text-center main-font-color"> <%=SplInviteName%></h1>
						</div>
						<input type="hidden" id="login_Invite_code" name="login_Invite_code" value="<%=trim(request("login_Invite_code"))%>">
                                    
						<div class="col-sm-12 col-lg-11 m-auto">                       
							<div class="w-100">                            
									 <p class="text-left para-display2 mb-3 text-center">									
											<span class="text-center "><b>CODE:</b> <%=trim(request("login_Invite_code"))%> </span><br/>											
									  </p>
							  </div>							  
						<hr class="divider" style="margin-top: 10px !important;"/>
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
                                         <span class="floating-label"> Designation  <span class="text-danger">*</span> </span>
                                         <input class="form-control main mb-1" type="text"  id="designation" name="designation" required="">
                                     </div>
									 
									   <div class="col-sm-6 mb-3 p-1">
                                         <span class="floating-label"> Organization  <span class="text-danger">*</span> </span>
                                         <input class="form-control main mb-1" type="text"  id="Company" name="company" required="">
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
                                          <span class="floating-label"> LinkedIn </span>
                                         <input class="form-control main mb-1" type="text" id="linkedInLink" name="linkedInLink" >
                                     </div>
									<input type="hidden" id="participant_type" name="participant_type" value="INVITEE">
									<input type="hidden" id="login_Invite_code1" name="login_Invite_code1" value="<%=trim(request("login_Invite_code"))%>">
									<p class="text-left  mb-3 mandatory-msg">Fields marked with <span style="color:red">*</span> are mandatory</p>
									<div class="col-12 text-center">
                                         <button class="btn btn-main-md mx-auto py-2 px-2 my-4" id="submitbtn1" onclick="SaveVIPInviteeData()" >Submit</button>
								    </div>						     
                                 </div>
								 
						  <hr class="divider" style="margin-top: 10px !important;"/>						  
						  <div class="col-12 col-lg-10 mx-auto my-2 text-left" id="delegation-event-block">						
						  <div class="col-12 col-md-12 col-lg-12 p-2">
								
																			
								<div class="w-100">
									<div class=" py-2 bg-light ">
                       				<h3 class="text-center">Quad Technology Business and Investment Forum (QTBIF)</h3>
									<h5 class="text-center"> November 15, 2023 | San Francusco, CA</h5>
									</div>
								</div>
							
								<div class="w-100">
									<ul class="p-0 mx-4 delegationlist mt-3 mb-0">
										<li>Panel Discussion - Investor Perspectives on Strategic Technology Priorities and the Indo-Pacific.</li>
										<li>Briefing - Strategic Framing of Key Technology Priorities in the Indo-Pacific</li>
										<li>Briefing - Next Generation Connectivity Solutions</li>
										<li>Briefing - AI Platforms and Supply Chain Awareness</li>
										<li>Briefing - Critical Technology Inputs (batteries, chips, critical minerals).</li>
										
									</ul>
								</div>							
							</div>
							</div>
							<!------->
							<hr class="divider" style="margin-top: 22px !important;margin-bottom: 20px !important;"/>						
							<div class="col-12 col-lg-10 mx-auto my-4 text-left">
							<h1 class="font-display2 text-center main-font-color">DELEGATION (A-Z)</h1>
							<div class="w-100" id="influencerProminent">
							<script  src="https://code.jquery.com/jquery-3.7.0.js"></script>							  
							  <div class="w-100">
									<div id="delegation_speakers"
										class="pt-2 d-flex flex-wrap  justify-content-lg-center  justify-content-xl-center justify-content-md-center justify-content-center">
										<script>
											$(document).ready(function () {
												$.getJSON("./data/startup_Delegation.json", function (data) {
													var output = '';
													console.log(data)
													$.each(data, function (key, value) {
														output += `
														<div class="delegation-card ">
															 <div class="img-block">
															 <a href="./startup_delegation_details.html?Id=` + value.Id + ` "target="_blank">	
															 <img src="./images/evolv/Startup_Delegation/`+ value.img_path + `" alt=" ` + value.Name + `" title=" ` + value.Name + `"/>		
															</a>
															   </div>
															  
															  
															   <div class="card-content">
															   <h3 title=" ` + value.Name + `"> ` + value.Name + `</h3>
															   <h4 title=" ` + value.Designation + ` "> ` + value.Designation + `</h4>
															   <h4 title=" ` + value.Company + `"> ` + value.Company + `</h4>
															   </div>
															 
														   </div>
														 
														   
														   
														   
														   
														   
														   `;
													   });
													$('#delegation_speakers').html(output);
												}).fail(function () {
													document.write("An error has occurred.");
												});
											});
										</script>
									</div>
								</div>
							</div>
							</div>							
							<!------->
							<hr class="divider" style="margin-top: 22px !important;margin-bottom: 20px !important;"/>

							<div class="col-12 col-lg-10 mx-auto mb-4 mt-2 text-left">
							<h1 class="font-display2 text-center main-font-color">ADVISORY COUNCIL (A-Z)</h1>
							<script  src="https://code.jquery.com/jquery-3.7.0.js"></script>
							<div class="w-100">
								<div id="delegation_speakers2"
									class="mt-3 d-flex flex-wrap  justify-content-lg-center  justify-content-xl-center justify-content-md-center justify-content-center">
									
									<script>
										$(document).ready(function () {
											$.getJSON("./data/Advisory.json", function (data) {
												var output = '';
												console.log(data)
												$.each(data, function (key, value) {
													output += `
													<div class="delegation-card ">
														 <div class="img-block">
														 <a href="` + value.Linked_In + ` "target="_blank">	
														 <img src="`+ value.img_path + `" alt=" ` + value.Name + `" title=" ` + value.Name + `"/>		
														</a>
														   </div>
														  
														  
														   <div class="card-content">
														   <h3 title=" ` + value.Name + `"> ` + value.Name + `</h3>
														   <h4 title=" ` + value.Designation + ` "> ` + value.Designation + `</h4>
														   <h4 title=" ` + value.Company + `"> ` + value.Company + `</h4>
														   </div>
														 
													   </div>
													 
													   `;
												   });
												$('#delegation_speakers2').html(output);
											}).fail(function () {
												document.write("An error has occurred.");
											});
										});
									</script>
								</div>
							</div>
							<!--h3 class="font-weight-bold main-font-color mt-1 mb-3  w-100">Stay tuned for more speakers announced daily! </h3--->
							</div>							
							<!------->
                </div>
                <br />
            </div>
			</div>
			</div>
			</div>
        </section>
    </div>

    </div>
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