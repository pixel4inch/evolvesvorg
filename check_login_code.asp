<!DOCTYPE html>
<html lang="en">

<!--#include file="aspincludes/dbopen.asp"-->
<!--#include file="adovbs.asp"-->
<head>
  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>Invite - Evolv.cc</title>

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
  function SaveInviteeData()
  {
			var vFName = $("#first_name1").val();
			var vLName = $("#last_name1").val();
			var vEmail_ID = $("#email_id1").val();	
			var vWebsite = $("#website1").val();
			var vInvite_code = $("#login_Invite_code").val();
			var vInvite_code1 = $("#login_Invite_code").val();
			var vInvite_Type = $("#login_Invite_type").val();
			if (vEmail_ID != null && vEmail_ID != '' && vFName != null && vFName != '' && vLName != null && vLName != '' && vEmail_ID != null && vEmail_ID != '' && vWebsite != null && vWebsite != '' && vInvite_code != null && vInvite_code != '')	 
			{
				//alert(vReportName);
					$.ajax({
								url: "Ajax_Add_Invitee_Data.asp",
								type: "POST",						
								data:'vInvite_code1='+encodeURIComponent(vInvite_code1)+'&vEmail_ID='+encodeURIComponent(vEmail_ID)+'&vFName='+encodeURIComponent(vFName)+'&vLName='+encodeURIComponent(vLName)+'&vWebsite='+encodeURIComponent(vWebsite)+'&vInvite_code='+encodeURIComponent(vInvite_code)+'&vInvite_Type='+encodeURIComponent(vInvite_Type)+'',
								success: function(data){
									alert(data);
									//alert('Thanks for submitting!');
									document.getElementById('first_name1').value = "";
									document.getElementById('last_name1').value = "";
									document.getElementById('email_id1').value = "";
									document.getElementById('website1').value = "";
									parent.location.reload();
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
			var vMembershipType = $('input[name="participant_type"]:checked').val();
			//var vMembershipType = 'SPEAKER_INVITE';
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
									parent.location.reload();
														  
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
							<!--div class="border-bottom pb-4 mt-4">
                            <h1 class="font-display1 text-center  mx-auto"
                                style="margin-bottom:7px !important; text-transform: capitalize; font-size: 29px !important;">
                                Evolv™ NextTech
                            </h1>
                            <h5 class="para-display2 mb-0" style="font-weight:400">New Delhi | August 24, 2023</h5>
							 <p class="para-display1 mb-0 mt-3" style="font-style: italic;">Sessions are live-streamed to 30,000+ decision-makers and reshared with 800,000+ influencers globally. </p>
							
                           
							</div-->
							
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
							
						<%
						Dim SplInviteName
						SplInviteName = ""
						
						
						If trim(request("login_Invite_code")) = "EVOLVDTE82423" then
							SplInviteName = "EVOLV™ ELITE DEEP-TECH INNOVATOR"
						ElseIf trim(request("login_Invite_code")) = "EVOLVSPLREG82423" then
							SplInviteName = "SPECIAL INVITEE REGISTRATION"
						Else
							response.write "<div class='col-sm-12 col-md-12  col-lg-12 col-xl-11  mb-4 m-auto'><br/><br/><br/><p align='center'><font color='red'>CODE "&trim(request("login_Invite_code"))&" is not valid. Please check with the Evolv Admin. Thank you.</font><br/><br/><br/> <input type='button' name='btnback' value='BACK' onclick='window.history.back();'></p></div>"
							response.end						
						End if
						
						
						%>
						<br/>
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
							
						
						<!--div class="col-xl-8 col-lg-9 col-md-11 col-sm-12 mx-auto">
						<div class="row mx-auto mt-4 mb-3">
						<div class="col-12 col-lg-6 col-md-6   px-2 py-1">
							<input type="checkbox" id="chk1" name="chk1" value="Company_Participate" onclick="SaveCheckBox('1')"> Our Company Will Participate
						</div>
						
						<div class="col-12 col-lg-6 col-md-6  px-2 py-1">
							<input type="checkbox" id="chk2" name="chk2" value="Company_Showcase" onclick="SaveCheckBox('2')"> Please Showcase Our Company 
						</div>
						
						<div class="col-12 col-lg-6 col-md-6 px-2 py-1">
							<input type="checkbox" id="chk3" name="chk3" value="Annual_Membership" onclick="SaveCheckBox('3')"> Request Annual Membership Details 
						</div>
						
						<div class="col-12 col-lg-6 col-md-6  px-2 py-1">
							<input type="checkbox" id="chk4" name="chk4" value="Annual_Sponsorship" onclick="SaveCheckBox('4')"> Request Annual Sponsorship Details 
						</div>
						</div>
						
						
						</div-->
                        <!--p class="text-left para-display2 mb-3 text-center"><a id="CorporateCheck" class="form-check-labe ml-0  main-font-color font-weight-bold para-display2" style="cursor:pointer" >SPEAKER REPRESENTING YOUR COMPANY</a>
                        </p-->
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
										  
										  <input type="radio" id="PRESENTER" name="participant_type" value="PRESENTER" checked>&nbsp;&nbsp;<label for="html">PRESENTER</label>
										  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  										  <input type="radio" id="ATTENDEE" name="participant_type" value="ATTENDEE">&nbsp;&nbsp;<label for="html">ATTENDEE</label>
                                     </div>
									 
									 <div class="col-sm-12 mb-3 p-1">
                                          <span class="floating-label"> Participant Bio </span>
                                         <textarea class="form-control main mb-1" id="participantBio" name="participantBio" ></textarea>
                                     </div>
                                    
									<input type="hidden" id="login_Invite_code1" name="login_Invite_code1" value="<%=trim(request("login_Invite_code"))%>">
                                    
                                     <p class="text-left  mb-3 mandatory-msg">Fields marked with <span style="color:red">*</span> are mandatory</p>
                                                                     
                                     <div class="col-12 text-center">
                                         <button class="btn btn-main-md mx-auto py-2 px-2 my-4" id="submitbtn1" onclick="SaveData()" >Submit</button>
								    </div>
								     
                                 </div>
								 
								 
						  
						  <hr class="divider" style="margin-top: 10px !important;"/>
						  
						  <div class=" pt-3 mb-2">
                            <script src="https://code.jquery.com/jquery-3.7.0.js"
                                integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
                                crossorigin="anonymous"></script>
                            <script>
                                $(document).ready(function () {
                                    $.getJSON("./data/NextTechData.json", function (data) {
                                        var executive = '';
                                        var logistics = '';
                                        var emcees = '';
                                        $.each(data.NextTechInfo, function (key, value) {

                                            if (value.type == "Executive Committee") {
                                                executive += `
                                                       <div class="card-md card-style1  ">
                                                           <div class="img-block">
                           <a href=" `+ value.linkedIn + `" target="_blank">
                                                               <img src="` + value.image + `"  alt=" ` + value.name + ` Chandrajit Banerjee" />																</a>
                                                           </div>
                                                           <h3>`+ value.name + `</h3>
                                                       </div>
                                               `;
                                            } else if (value.type == "Logistics") {
                                                logistics += `
                                             
                                                
                                                       <div class="card-md card-style1  ">
                                                           <div class="img-block">
                                                               <img src="` + value.image + `"  alt=" ` + value.name + ` " />
                                                           </div>
                                                           <h3>`+ value.name + `</h3>
                                                       </div>
                                                 
                                             `;
                                            } else if (value.type == "Emcees") {
                                                emcees += `
                                           
                                                       <div class="card-md card-style1  ">
                                                           <div class="img-block">
                                                               <img src="` + value.image + `"  alt=" ` + value.name + ` " />
                                                           </div>
                                                           <h3>`+ value.name + `</h3>
                                                       </div>
                                                  
                                              `;
                                            }

                                        });
                                        $('#Executive').html(executive);
                                        $('#Logistics').html(logistics);
                                        $('#Emcees').html(emcees);
                                    }).fail(function () {
                                        document.write("An error has occurred.");
                                    });
                                });
                            </script>
							
							<a data-toggle="collapse" href="#conferencecommitte" role="button" aria-expanded="false" aria-controls="collapseExample"> <h3 class="font-weight-bold main-font-color my-1 w-100 mb-3"> CONFERENCE COMMITTEE</h3></a>
							
                            	
							<div class="collapse show" id="conferencecommitte">
                            <div class="row  justify-content-lg-center  justify-content-xl-center justify-content-md-center justify-content-center"
                                id="Executive"></div>
							
							
                            <!--h5
                           class="para-display3 my-3 font-weight-bold main-font-color text-uppercase text-xl-left text-lg-left text-md-left text-center">
                           Logistics Leads
                           </h5>
                           <div class="row row  justify-content-lg-start  justify-content-xl-start justify-content-md-start justify-content-center"
                           id="Logistics"></div-->
                        </div>
						
					</div>
						
						<hr class="divider" style="margin:10px 0 10px 0 !important;">
						
						
						<a data-toggle="collapse" href="#influencerProminent" role="button" aria-expanded="false" aria-controls="collapseExample"> <h3 class="font-weight-bold main-font-color my-1 w-100 mb-3"> CII POWER INFLUENCERS & PROMINENT PARTICIPANTS</h3>
						</a>
						
						<div class="collapse show" id="influencerProminent">
							
							
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
							
						</div>
						
						<hr class="divider" style="margin:10px 0 10px 0 !important;">
						

                        <div class=" py-2 bg-light shadow-sm">
                            <h1 class="font-display1 text-center  mx-auto"
                                style="margin-bottom:7px !important; text-transform: capitalize; font-size: 22px !important; margin-bottom: 0px !important">
                                DAY 1: August 24, 2023
                            </h1>
                            <h5 class="para-display2 mb-0" style="font-weight:400; font-size: 19px !important;
                           letter-spacing: 1px;">Hotel Ashoka | New Delhi </h5>
                        </div>



                        <!---PROGRAM SECTION--->
                        <div class="w-100 text-center py-3 border-bottom">
                            <h1 class="font-display1   mx-auto " style="margin-bottom:7px !important">
                                PROGRAM </h1>
                            <h4 class="font-display2  mb-0" style="font-weight:400;font-size: 19px;">COMMON SESSION</h4>
                        </div>



                        <div class="commonsection-block">
                            <div class="program-section mt-3 mb-2 w-100 ">
                                <p class="font-weight-bold  time">10:00 - 10:30 AM:</p>
                                <p class="font-weight-bold text-transform-uppercase program-title">Welcome & Event
                                    kickoff</p>
                            </div>



                            <div class="program-section w-100  top-divider">
                                <p class="font-weight-bold  time">10:30 - 11:30 AM:</p>
                                <p class="font-weight-bold text-transform-uppercase program-title">TECH LEGEND KEYNOTES</p>
                                <!--p>Keynote 1 (TBA)</p>
                                <p>Keynote 2 (TBA)</p-->
                            </div>


                            <div class="program-section w-100 top-divider">
                                <p class="font-weight-bold  time">11:30 AM - 12:00 PM:</p>
                                <p class="font-weight-bold text-transform-uppercase program-title"
                                    style="color:#FF8000">BREAK</p>
                            </div>
                        </div>

                        <hr class="divider" style="margin:10px 0 10px 0 !important;" />
                        <div class="row ">
                            <div class="col-md-6 col-12  m-0">
                                <div class="w-100   pb-2">
                                    <h2 class="para-display2 text-center  mx-auto font-weight-bold"
                                        style="margin-bottom:2px !important">TRACK 1</h2>
                                </div>
                                <div class="px-4 py-0 timeline">
                                    <!--h5 class="para-display1 mb-0 text-left"  style="font-weight:400;font-size:16px;">ARTIFICIAL INTELLIGENCE</h5-->
                                    <div class="w-100 mt-2">
                                        <div class="d-flex flex-column mr-2 nexttech-program-details">
                                            <span class="d-block time">12:00 - 1:00 PM:</span>
                                            <div class="d-flex flex-column">
                                                <span class="d-block ">GLOBAL INNOVATION ECOSYSTEMS</span>
                                                <span class="d-block ">
                                                    Presenting perspectives with representation from the global Venture,
                                                    Angel, and Corporate, communities.
                                            </div>
                                        </div>
                                        <div class="d-flex flex-column mr-2 nexttech-program-details">
                                            <span class="d-block time">1:00 - 2:30 PM: </span>
                                            <div class="d-flex">
                                                <span class="d-block" style="color:#FF8000;font-weight:bold;">LUNCH &
                                                    NETWORKING </span>
                                            </div>
                                        </div>
                                        <div class="d-flex mr-2 nexttech-program-details">
                                            <span class="d-block time">2:30 - 3:30 PM:</span>
                                            <div class="d-flex flex-column">
                                                <span class="d-block listed ">ARTIFICIAL INTELLIGENCE</span>
                                                <span class="d-block listed listed ">Generative AI - Panel Discussion
                                                </span>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="d-flex mr-2 nexttech-program-details">
                                            <span class="d-block time">3:30 - 4:00 PM:</span>
                                            <div class="d-flex flex-column">
                                                <span class="d-block listed ">KEYNOTE 3</span>
                                                <!--span class="d-block listed ">Speaker TBA
                                                </span-->
                                            </div>
                                        </div>
                                        <div class="d-flex mr-2 nexttech-program-details">
                                            <span class="d-block time">4:00 - 4:30 PM:</span>
                                            <div class="d-flex flex-column">
                                                <span class="d-block listed ">KEYNOTE 4</span>
                                            </div>
                                        </div>
                                        <div class="d-flex mr-2 nexttech-program-details">
                                            <span class="d-block time">4:30 - 5:00 PM:</span>
                                            <div class="d-flex flex-column">
                                                <span class="d-block "
                                                    style="color:#FF8000;font-weight:bold;">BREAK</span>
                                            </div>
                                        </div>
                                        <div class="d-flex mr-2 nexttech-program-details">
                                            <span class="d-block time">5:00 - 6:00 PM:</span>
                                            <div class="d-flex flex-column">
                                                <span class="d-block ">FEATURED INNOVATOR PRESENTATIONS</span>
                                                <span class="d-block listed mb-2">Presenting today's leading-edge
                                                    technology startups and scaleups that are disrupting the Deep-Tech
                                                    landscape. Keynote style. </span>
                                                <!--span class="d-block ">Featuring: </span-->
                                                <div class="d-flex flex-column">

                                                    <span class="d-block listed ">AI & ML </span>
                                                    <span class="d-block listed ">GAMING & XR </span>
                                                    <span class="d-block listed ">QUANTUM COMPUTING </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-12  m-0">
                                <div class="w-100   pb-2">
                                    <h2 class="para-display2 text-center  mx-auto font-weight-bold"
                                        style="margin-bottom:2px !important">TRACK 2</h2>
                                </div>
                                <div class="px-4 py-0  timeline">
                                    <!--h5 class="para-display1 mb-0 text-left" style="font-weight:400;font-size:16px;">CLOUD SECURITY</h5-->
                                    <div class="w-100 mt-2">
                                        <div class="d-flex flex-column mr-2 nexttech-program-details">
                                            <span class="d-block time">12:00 - 1:00 PM:</span>
                                            <div class="d-flex flex-column">
                                                <span class="d-block ">GLOBAL INVESTMENT TRENDS</span>
                                                <span class="d-block ">Panel of venture capitalists and angels investors
                                                    discuss investor sentiments and share perspectives on what
                                                    entrepreneurs can do to weather the downturn. </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="d-flex flex-column mr-2 nexttech-program-details">
                                        <span class="d-block time">1:00 - 2:30 PM: </span>
                                        <div class="d-flex">
                                            <span class="d-block" style="color:#FF8000;font-weight:bold;">LUNCH &
                                                NETWORKING </span>
                                        </div>
                                    </div>
                                    <div class="d-flex mr-2 nexttech-program-details">
                                        <span class="d-block time">2:30 - 3:00 PM:</span>
                                        <div class="d-flex flex-column">
                                            <span class="d-block listed">KEYNOTE 5</span>
                                        </div>
                                    </div>
                                    <div class="d-flex mr-2 nexttech-program-details">
                                        <span class="d-block time">3:00 - 6:00 PM:</span>
                                        <div class="d-flex flex-column">
                                            <span class="d-block  ">FEATURED INNOVATOR PRESENTATIONS </span>
                                            <span class="d-block listed mb-2">Presenting today's leading-edge technology
                                                startups and scaleups that are disrupting the Deep-Tech landscape.
                                                Keynote style.
                                            </span>
                                            <!--span class="d-block listed ">Speakers TBA
                                    </span-->
                                        </div>
                                    </div>
                                    <div class="d-flex mr-2 nexttech-program-details">
                                        <span class="d-block time">3:00 - 4:30 PM:</span>
                                        <div class="d-flex flex-column">
                                            <span class="d-block listed ">CLOUD </span>
                                            <span class="d-block listed ">CYBERSECURITY </span>
                                            <span class="d-block listed ">ROBOTICS </span>
                                            <span class="d-block listed ">AUTO TECH </span>
                                            <span class="d-block listed ">CLEAN TECH </span>
                                        </div>
                                    </div>
                                    <div class="d-flex mr-2 nexttech-program-details">
                                        <span class="d-block time">4:30 - 5:00 PM:</span>
                                        <div class="d-flex flex-column">
                                            <span class="d-block" style="color:#FF8000;font-weight:bold;">BREAK</span>
                                        </div>
                                    </div>
                                    <div class="d-flex mr-2 nexttech-program-details">
                                        <span class="d-block time">5:00 - 6:00 PM</span>
                                        <div class="d-flex flex-column">
                                            <span class="d-block listed">BIOPHARMA </span>
                                            <span class="d-block listed ">MED TECH </span>
                                            <span class="d-block listed ">FOOD TECH </span>
                                            <span class="d-block listed ">BIO-CONVERGENCE </span>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>




                        <div class="commonsection-block">
                            <div class="program-section mt-3 mb-2 w-100 ">
                                <p class="font-weight-bold time">6:00 - 6:30 PM:</p>
                                <p class="font-weight-bold text-transform-uppercase program-title">Awards Ceremony</p>

                                <p class="mt-2 col-lg-9 col-md-12 col-12 mx-auto">The Evolv Deep-Tech Top 100 Innovators
                                    who have presented at the conference are recognized with Awards. Ceremony will be
                                    attended by several global power influencers. </p>



                                <a href="https://www.evolv.cc/show_deeptech_companies.asp?SrcType=%FE%26%C4%FE3%3E%9D%DC%2D%A5%B8%BC%D4%94&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Fc%8E&amp;cnt=%9Cb%86%BFg&amp;Start=%9D&amp;E="
                                    target="_blank" class="mt-3 mb-3 d-block text-center font-weight-bold"
                                    style="color:#04489b"> OUR GLOBAL DEEP-TECH INNOVATOR WATCHLIST</a>

                            </div>
                        </div>
<hr class="divider" style="margin:10px 0 10px 0 !important;" />
						
                        <div class="w-100 py-1">
                           <a data-toggle="collapse" href="#whyattend" role="button" aria-expanded="false" aria-controls="collapseExample"> <h3 class="font-weight-bold main-font-color my-1 w-100">WHY ATTEND? </h3></a>
                            <div class="collapse show" id="whyattend">
							  <div class="p-3  text-left">
								  <p class="font-weight-bold ">Knowledge & Global Insights:</p>
								  <p class="mb-2">These sessions will foster knowledge exchange, stimulate insightful discussions, and facilitate collaboration between industry leaders, policymakers, academics, and entrepreneurs.</p>
								  
								   <p class="font-weight-bold ">Leading-Edge Innovator Presentations:</h3>
								  <p class="mb-2">Enjoy keynote style presentations from the world?s leading deep-tech innovators changing technology and business landscapes. A unique opportunity to meet and explore collaborative opportunities..</p>
								  
								   <p class="font-weight-bold ">Networking:</h3>
								  <p class="mb-2"> Connect with industry leaders, innovators worldwide, heads of government institutions, and many mega influencers to forge valuable relationships and exploring potential collaborations.</p>
								  
								   <p class="font-weight-bold ">Inspiring Keynotes & Trending Sessions:</h3>
								  <p class="mb-2"> Hear from inspirational keynote speakers who are driving positive change in today?s industry. Gain valuable insights and perspectives on what?s happening on the global theater. </p>



							
							  </div>
							</div>


                        </div>

						<hr class="divider" style="margin:10px 0 10px 0 !important;" />
                        
                        <div class=" pb-3 mt-4 px-2 w-100">
                            <h1 class="font-display1 text-center  mx-auto"
                                style="margin-bottom:7px !important; text-transform: capitalize; font-size: 22px !important; margin-bottom: 0px !important">
                                DAY 2-4: August 25-27, 2023
                            </h1>
                            <h1 class="font-display1 text-center main-font-color  mx-auto"
                                style="margin-bottom:7px !important; text-transform: capitalize; font-size: 24px !important;">
                                <a href='https://www.b20india2023.org/new-homepage' target='_new'>B20 India Summit
                                    2023</a>
                            </h1>
                            <h5 class="para-display2 mb-0" style="font-weight:400">New Delhi </h5>
                            <hr class="divider" style="margin:10px 0 10px 0 !important;" />

                        


                            <!--ul id="influencer_speakers" class="speaker-evolv-submit border">

                                <li><span> S Jaishankar,</span> Hon?ble Minister of External Affairs, Government of
                                    India
                                </li>
                                <li> <span> Piyush Goyal,</span> Hon?ble Minister of Commerce and Industry, Textiles,
                                    Consumer
                                    Affairs, Food and Public Distribution, Government of India</li>
                                <li> <span> Mark Carney,</span> UN Special Envoy, Climate Change and Action (Former
                                    Governor
                                    Bank of England)</li>
                                <li> <span> Shantanu Narayen,</span> Chairman and Chief Executive Officer, Adobe, USA
                                </li>
                                <li> <span> Nandan Nilekeni,</span> Non-Executive Chairman, Infosys</li>
                                <li> <span> Robert Maersk Uggla,</span> Chairman of the Board, A.P. Moller ? Maersk,
                                    Denmark
                                </li>
                                <li> <span> Brad Smith,</span> President and Vice Chairman, Microsoft, USA</li>
                                <li> <span> Lynn Forrester De Rothschild,</span> Chief Executive Officer, E.L.
                                    Rothschild,
                                    UK
                                </li>
                                <li> <span> Michael Miebach,</span> Chief Executive Officer, Mastercard, USA</li>
                                <li> <span> Mark E Tucker,</span> Group Chairman, HSBC Holdings Plc, UK</li>
                                <li> <span> Arvind Krishna,</span> Chairman and Chief Executive Officer, IBM, USA</li>
                                <li> <span> Borge Brende,</span> President, World Economic Forum, Switzerland</li>
                                <li> <span> Bernard Looney,</span> Chief Executive Officer, British Petroleum, UK</li>
                                <li> <span> Innes Willox,</span> President, Global Business Coalition and Chief
                                    Executive,
                                    AI
                                    Group,
                                    Australia</li>
                                <li> <span> Charles Rick Johnston,</span> Chair of Executive Board, Business at OECD
                                    (BIAC)
                                    and
                                    Managing Director, Global Government Affairs, Citibank, USA</li>
                                <li> <span> Candace Johnson,</span> Co-founder, SES ASTRA, Luxembourg</li>
                                <li> <span> Julie Sweet,</span> Chair and Chief Executive Officer, Accenture, Ireland
                                </li>
                                <li> <span> Punit Renjen,</span> Global CEO Emeritus, Deloitte Touche Tohmatsu Limited
                                </li>
                                <li> <span> Gilbert F Houngbo,</span> Director General, International Labour
                                    Organization
                                    and
                                    Managing Director, Global Government Affairs, Citibank</li>
                                <li> <span> Verena Lim,</span> Chief Executive Officer-Asia, Macquarie Group</li>
                                <li> <span> Lee Yuan Siong,</span> Executive Director and Group Chief Executive and
                                    President,
                                    AIA Group</li>

                                <li> <span> Bettina Schaller,</span> President, World Employment Confederation, Belgium
                                </li>
                                <li> <span> Johnny C Taylor Jr,</span> President & Chief Executive Officer, Society for
                                    Human
                                    Resource Management (SHRM), USA</li>
                                <li> <span> Renate Hornung-Draus,</span> Managing Director Economic & International
                                    Affairs,
                                    Confederation of German Employers' Associations, Germany</li>
                                <li> <span> Marcelo Behar,</span> Vice President-Sustainability & Group Affairs, Natura
                                    &
                                    Co,
                                    Brazil</li>
                                <li> <span> Kamran Khan,</span> Managing Director and Head of ESG for Asia Pacific,
                                    Deutsche
                                    Bank Group, Singapore</li>
                                <li> <span> Linda Kromjong,</span> President, amfori, Belgium</li>
                                <li> <span> Sanda Ojiambo,</span> Assistant Secretary-General, United Nations Global
                                    Compact
                                    (UNGC), USA</li>
                                <li> <span> Jon Moore,</span> Chief Executive Officer, Bloomberg New Energy Finance
                                    (BNEF),
                                    UK
                                </li>
                                <li><span> Abdulrahman Al Fageeh-Al,</span> Chair, B20 Saudi Arabia 2020 and Chief
                                    Executive
                                    Officer, SABIC, Saudi Arabia</li>
                                <li> <span> Fernando Cestari de Rizzo,</span> Chief Executive Officer, Tupy, Brazil</li>
                                <li> <span> Mauro Bellini,</span> Chairman of Board of Directors, Marcopolo SA, Brazil
                                </li>
                                <li> <span> Vera Songwe,</span> Non-Resident Senior Fellow, Africa Growth Initiative,
                                    Brookings
                                    Institution and Former Executive Secretary, Economic Commission for Africa</li>
                                <li> <span> Marc-Andre,</span> Blanchard, Executive Vice President and Head, CDPQ Global
                                    and
                                    Global Head-Sustainability, CDPQ, Canada</li>
                                <li> <span> Mairead Lavery,</span> President & Chief Executive Officer, Export
                                    Development
                                    Canada
                                    and Board Chair, FinDev, Canada</li>
                                <li> <span> Nicholas Dirks,</span> Chief Executive Officer, New York Academy of
                                    Sciences,
                                    USA
                                </li>
                                <li> <span> Dilhan Pillay Sandrasegara,</span> Executive Director and Chief Executive
                                    Officer,
                                    Temasek</li>
								
								<li> <span> Harsh Vardhan Shringla,</span> Chief Coordinator, G20</li>
								<li> <span> Amitabh Kant, </span>G20 Sherpa</li>
									
								
								
								<li><span>Vidit Aatrey,</span> CEO & Co-Founder, Meesho</li>
<li><span>Ritesh Agarwal,</span> Founder and CEO, Oravel Stays Private Limited (OYO)</li>
<li><span>Sanjiv Bajaj,</span> Chairman & Managing Director, Bajaj Finserv Limited</li>
<li><span>Kamal Bali,</span> President & Managing  Director, Volvo Group India Private Limited</li>
<li><span>Abhiraj Singh Bhal,</span> Co-Founder & CEO, Urban Company</li>
<li><span>Hari S Bhartia,</span> Co-Chairman & Managing Director, Jubilant Pharmova Limited</li>
<li><span>Soumitra Bhattacharya,</span> Managing Director & President, Bosch Group India, Bosch Limited</li>
<li><span>Amit Chandra,</span> Chairperson, Bain Capital Advisors India Private Limited</li>
<li><span>N Chandrasekaran,</span> Chairman, Tata Sons Private Limited</li>
<li><span>Yashish Dahiya,</span> Chief Executive Officer, PolicyBazar</li>
<li><span>Ashank Desai,</span> Founder, Vice Chairman & MD, Mastek Limited</li>
<li><span>R Dinesh,</span> Executive Vice Chairman, TVS Supply Chain Solutions Limited</li>
<li><span>Suchitra K Ella,</span> Co-Founder & Joint Managing Director, Bharat Biotech International Limited</li>
<li><span>Farhad Forbes,</span> Co-Chairman, Forbes Marshall</li>
<li><span>Naushad Forbes,</span> Co-Chairman, Forbes Marshall Private Limited</li>
<li><span>Debjani Ghosh,</span> President, NASSCOM</li>
<li><span>Adi Godrej,</span> Chairman, Godrej Group</li>
<li><span>Nadir Godrej,</span> Managing Director, Godrej Industries Limited</li>
<li><span>Jamshyd N Godrej,</span> Chairman & Managing Director, Godrej & Boyce Manufacturing Company Limited</li>
<li><span>Sanjiv Goenka,</span> Chairman, RP-Sanjiv Goenka Group (RPSG Resources Pvt Ltd)</li>
<li><span>Kris Gopalakrishnan,</span> Co-Founder, Infosys Limited and Chairman, Axilor Ventures Private Limited</li>
<li><span>Rajesh Gopinathan,</span> CEO & Managing Director, Tata Consultancy Services Limited</li>
<li><span>Deepinder Goyal,</span> Founder & CEO, Zomato Limited</li>
<li><span>C P Gurnani,</span> Managing Director & CEO, Tech Mahindra Limited</li>
<li><span>Deep Kalra,</span> Founder & Group Executive Chairman, MakeMyTrip Limited</li>
<li><span>Amit kalyani,</span> Deputy Managing Director, Bharat Forge Limited</li>
<li><span>Baba N Kalyani,</span> Chairman & Managing Director, Bharat Forge Limited</li>
<li><span>K V Kamath,</span> Former President, New Development Bank</li>
<li><span>Shobana Kamineni,</span> Executive Vice Chairperson, Apollo Hospitals Enterprise Limited</li>
<li><span>Kiran Karnik,</span> Former President, NASSCOM and Chairpeson, Indraprastha Institute of Information Technology Delhi (IIITD)</li>
<li><span>Gopichand Katragadda,</span> Founder and CEO, Myelin Foundry Private Limited</li>
<li><span>Uday Kotak,</span> Managing Director and CEO, Kotak Mahindra Bank Limited</li>
<li><span>Anant Maheshwari,</span> President - Microsoft India, Microsoft Corporation India Private Limited</li>
<li><span>Anand G Mahindra,</span> Executive Chairman, Mahindra & Mahindra Limited</li>
<li><span>Sunil Mathur,</span> Managing Director & CEO, Siemens Limited</li>
<li><span>Kiran Mazumdar-Shaw,</span> Executive Chairperson, Biocon Limited</li>
<li><span>Sumit Mazumder,</span> Chairman & Managing Director, TIL Limited</li>
<li><span>Rajiv Memani,</span> Chairman - India Region and Chairman, Emerging Markets Committee, Ernst & Young LLP</li>
<li><span>Sunil Bharti Mittal,</span> Founder & Chairman, Bharti Enterprises</li>
<li><span>Vineet Mittal,</span> Chairman, Avaada Group</li>
<li><span>Sashi Mukundan,</span> President, BP India and Senior Vice President, BP Group</li>
<li><span>T V Narendran,</span> CEO and Managing Director, Tata Steel Limited</li>
<li><span>Rajan Navani,</span> Vice Chairman & Managing Director, Jetline Industries</li>
<li><span>Falguni Nayar,</span> Founder and CEO, Nykaa</li>
<li><span>Salil Parekh,</span> Chief Executive Officer & Managing Director, Infosys Limited</li>
<li><span>Sandip Patel,</span> Managing Director, IBM India Private Limited</li>
<li><span>Rishad Premji,</span> Chairman, Wipro Limited</li>
<li><span>Azim Premji,</span> Founder Chairman, Wipro Limited</li>
<li><span>Sanjiv Puri,</span> Chairman and Managing Director, ITC Limited</li>
<li><span>C K Ranganathan,</span> Chairman & Managing Director, CavinKare Private Limited</li>
<li><span>Suneeta Reddy,</span> Managing Director, Apollo Hospitals Enterprise Limited</li>
<li><span>BVR Mohan Reddy,</span> Executive Chairman, Cyient Limited</li>
<li><span>Nikhil Sawhney,</span> Vice Chairman & Managing Director, Triveni Turbine Limited</li>
<li><span>Dhruv M Sawhney,</span> Chairman & Managing Director, Triveni Turbine Limited</li>
<li><span>Ajay S Shriram,</span> Chairman & Senior Managing Director, DCM Shriram Limited</li>
<li><span>Raghupati Singhania,</span> Chairman & Managing Director, JK Tyre & Industries Limited</li>
<li><span>Janmejaya Sinha,</span> Chairman, India, The Boston Consulting Group India Private Limited</li>
<li><span>Naresh Trehan,</span> Chairman & Managing Director, Global Health Private Limited</li>


								


                            </ul-->



                          
                            <p class="para-display1 mb-0 mt-2" style="font-style: italic;letter-spacing: -0.2px;">All foreign delegates to the
                                Evolv™ NextTech are also registered to attend B20 India Summit without additional
                                delegate fee.
                            </p>


                        </div>





                    </div>

                    <!------->





                </div>









                <br />





            </div>
        </section>
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