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
	var vattendsessions = $('input[name="attendsessions"]:checked').val();
	var vattendsessions1 = $('input[name="attendsessions"]:checked').val();
	var vInvite_code = $("#login_Invite_code").val();
	if (vattendsessions1=='in-person')
	{
	   vattendsessions1='Y';	
	}
	else if (vattendsessions1=='virtual')
	{
	  vattendsessions1='Y';	   
	}
	else
	{
		vattendsessions1='N';
	}
	//alert (vattendsessions);
	//alert (vattendsessions1);
			if (vfirst_name != null && vfirst_name != '' && vlast_name != null && vlast_name != '' && vdesignation != null && vdesignation != '' && vCompany != null && vCompany != '' && vemail != null && vemail != '' && vattendsessions1=='Y' )
			{
			   
				 $.ajax({
								url: "Ajax_Add_CXOInvitee_Data.asp",
								type: "POST",					
								data:'vInvite_code='+encodeURIComponent(vInvite_code)+'&vfirst_name='+encodeURIComponent(vfirst_name)+'&vlast_name='+encodeURIComponent(vlast_name)+'&vdesignation='+encodeURIComponent(vdesignation)+'&vCompany='+encodeURIComponent(vCompany)+'&vemail='+encodeURIComponent(vemail)+'&vphone='+encodeURIComponent(vphone)+'&vlinkedInLink='+encodeURIComponent(vlinkedInLink)+'&vattendsessions='+encodeURIComponent(vattendsessions)+'',
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
							
							<div class="pb-4 mt-4">
                            <h1 class="font-display1 text-center  mx-auto"
                                style="margin-bottom:7px !important; text-transform: capitalize; font-size: 32px !important;">
                                Evolv™ NextTech @ B20 Summit
                            </h1>
                            <h5 class="para-display2 mb-0" style="font-weight:600">New Delhi | August 24, 2023</h5>
							 <p class="para-display1 mb-0 mt-3" ><b>Sessions are live-streamed to 30,000+ decision-makers and again amplified post-event to 800,000+ influencers globally.</b></p>
							
                            <!---p class="para-display1 mb-0 mt-3" style="font-style: italic;">All Evolv™ NextTech delegates
                                are also registered to attend B20 India 2023 Summit without any additional delegate
                                fees. Both events are consecutively Presented by the Confederation of Indian Industry.
                            </p--->
							<p class="para-display1 mb-0 mt-3" ><b>B20 Summit 2023 - The World’s Greatest B2B Powerball Is Coming to New Delhi!</b><br/>
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
							SplInviteName = "SPECIAL INVITEE REGISTRATION"
						End if
						
						
						''[Evolv_DB1].[dbo].[UL_Indian_CXOs_10M_Above]
						Dim GTFirst_Name, GTLast_Name, GTDesignation, GTCompany, GTLinkedIn, GTEmail
						''InviteQry = "SELECT [Result],[SNO],[FirstName],[LastName],[Title],[CompanyName],[CODE]  FROM [evolvDB].[dbo].[Deep_Tech_UL_People_Verified] where Code='"&trim(request("Invite_code"))&"'"
						InviteQry = "SELECT [SNO],[FirstName],[LastName],[Title],[Email],[CompanyName],[ContactLinkedIn],[CODE]  FROM [Evolv_DB1].[dbo].[UL_Indian_CXOs_10M_Above] where Code='"&trim(request("login_Invite_code"))&"'"
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
							GTLinkedIn = trim(RSInvite("ContactLinkedIn"))
							GTEmail = trim(RSInvite("Email"))
						Else
							response.write "-- NO ACTIVE INVITE CODE EXISTS. PLEASE CHECK YOUR CODE"
							response.end
						End If
						Set RSInvite = nothing
	
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
									  <p class="text-left para-display2 mb-3 text-center">									
											<span class="text-center "><b>INVITEE:</b> <%=trim(GTFirst_Name)%>&nbsp;<%=trim(GTLast_Name)%> </span><br/>											
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
                                         <input class="form-control main mb-1 " type="text"  id="first_name" name="first_name" value="<%=GTFirst_Name%>" required="">
                                     </div>
                                    
                                     <div class="col-sm-6 mb-3 p-1">
                                        <span class="floating-label"> Last Name <span class="text-danger">*</span> </span>
                                         <input class="form-control main mb-1" type="text" id="last_name" name="last_name" value="<%=GTLast_Name%>" required="">
                                     </div>
									 
								    <div class="col-sm-6 mb-3 p-1">
                                         <span class="floating-label"> Designation  <span class="text-danger">*</span> </span>
                                         <input class="form-control main mb-1" type="text"  id="designation" name="designation" value="<%=GTDesignation%>" required="">
                                     </div>
									 
									   <div class="col-sm-6 mb-3 p-1">
                                         <span class="floating-label"> Organization  <span class="text-danger">*</span> </span>
                                         <input class="form-control main mb-1" type="text"  id="Company" name="company" value="<%=GTCompany%>" required="">
                                     </div>
                                   
                                     <div class="col-sm-6 mb-3 p-1">
                                         <span class="floating-label"> Email  <span class="text-danger">*</span> </span>
                                         <input class="form-control main mb-1" type="email"  id="email" name="email" value="<%=GTEmail%>" required="">
                                     </div>
                                    
                                     <div class="col-sm-6 mb-3 p-1">
                                          <span class="floating-label"> Phone  </span>
                                         <input class="form-control main mb-1" type="number"  id="phone" name="phone" >
                                     </div>
									 
                                   
                                     <div class="col-sm-6 mb-3 p-1">
                                          <span class="floating-label"> LinkedIn </span>
                                         <input class="form-control main mb-1" type="text" id="linkedInLink" value="<%=GTLinkedIn%>" name="linkedInLink" >
                                     </div>
									 
									<div class="d-flex w-100 justify-content-start align-items-center flex-wrap"> 
									 <div class="d-flex align-items-start mt-0 ml-0 pl-1 mr-3 ">
										 <input type="radio" id="attendsessions" name="attendsessions" value="in-person" class="mr-2 mt-2 " >
										 <p class="mt-1">I Will Attend In-Person <span class="text-danger">*</span></p>					 
									 </div>
									 
									 <div class="d-flex align-items-start mt-1 ml-0 pl-1 ">
										 <input type="radio" id="attendsessions" name="attendsessions" value="virtual" class="mr-2 mt-2 ">
										 <p class="mt-1">I Will Attend Virtually <span class="text-danger">*</span></p>					 
									 </div>
									 </div>
									
                                    
                                     					 
									  <input type="hidden" id="participant_type" name="participant_type" value="INVITEE">
									
                                    
									<input type="hidden" id="login_Invite_code1" name="login_Invite_code1" value="<%=trim(request("login_Invite_code"))%>">
									 
									 
									
									 <p class="text-left  mb-3 mandatory-msg">Fields marked with <span style="color:red">*</span> are mandatory</p>
				
									 
									 
									 
									 
                                                                     
                                     <div class="col-12 text-center">
                                         <button class="btn btn-main-md mx-auto py-2 px-2 my-4" id="submitbtn1" onclick="SaveVIPInviteeData()" >Submit</button>
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
							
							<a data-toggle="collapse" href="#conferencecommitte" role="button" aria-expanded="false" aria-controls="collapseExample"> <h3 class="font-weight-bold main-font-color my-3 w-100 "> CONFERENCE COMMITTEE</h3></a>
							
                            	
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
						
					
						
						
						<a data-toggle="collapse" href="#influencerProminent" role="button" aria-expanded="false" aria-controls="collapseExample"> <h3 class="font-weight-bold main-font-color my-3 w-100 "> SELECT LIST OF EVOLV™ NEXTTECH & B20 SPEAKERS (A-Z)</h3>
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
							<h3 class="font-weight-bold main-font-color mt-1 mb-3  w-100">Stay tuned for more speakers announced daily! </h3>
							
						</div>
						
						
						

                        <div class=" py-2 bg-light ">
                            <h1 class="font-display1 text-center  mx-auto"
                                style="margin-bottom:7px !important; text-transform: capitalize; font-size: 22px !important; margin-bottom: 0px !important">
                                DAY 1: August 24, 2023
                            </h1>
                            <h5 class="para-display2 mb-0" style="font-weight:400; font-size: 19px !important;
                           letter-spacing: 1px;">The Ashok Hotel | New Delhi </h5>
							
							 <h1 class="font-display1   mx-auto mt-3 " style="margin-bottom:0px !important">
								 PROGRAM </h1>
                        </div>



                     



                        
                        <div class="row ">
							
							
							<div class="col-md-6 col-12  m-0">
                                
                                <div class="px-4 py-0  timeline">
                                    <!--h5 class="para-display1 mb-0 text-left" style="font-weight:400;font-size:16px;">CLOUD SECURITY</h5-->
                                    <div class="w-100 mt-2">
                                        <div class="d-flex flex-column mr-2 nexttech-program-details">
                                            <span class="d-block time">10:00 - 10:30 AM:</span>
                                            <div class="d-flex flex-column">
                                                <span class="d-block ">WELCOME & INTRO TO EVOLV™ SILICON VALLEY</span>
                                                
                                            </div>
                                        </div>
                                    </div>
                                    <div class="d-flex flex-column mr-2 nexttech-program-details">
                                        <span class="d-block time">10:30 - 11:00 AM	: </span>
                                        <div class="d-flex">
                                            <span class="d-block">KEYNOTE: TBA</span>
                                        </div>
                                    </div>
                                    <div class="d-flex mr-2 nexttech-program-details">
                                        <span class="d-block time">11:00 - 11:30 AM</span>
                                        <div class="d-flex flex-column">
                                            <span class="d-block">KEYNOTE: Tim Draper</span>
											<span class="d-block">Founder, Draper Associates</span>
                                        </div>
                                    </div>
                                    <div class="d-flex mr-2 nexttech-program-details">
                                        <span class="d-block time">11:30 - 12:00 PM:</span>
                                        <div class="d-flex flex-column">
                                            <span class="d-block  ">KEYNOTE: Generative & Conversational AI for the Enterprise</span>
                                            <span class="d-block listed mb-2">Muddu Sudhakar, Ph.D. CEO, Aisera
                                            </span>
                                            <!--span class="d-block listed ">Speakers TBA
                                    </span-->
                                        </div>
                                    </div>
									
									<div class="d-flex mr-2 nexttech-program-details">
                                        <span class="d-block time">12:00 - 12:30 PM:</span>
                                        <div class="d-flex flex-column">
                                            <span class="d-block  ">GLOBAL DEEP-TECH TRENDS</span>
                                            <span class="d-block listed mb-2">Presenting a global perspective of emerging technologies that will impact economies,
the environment, livelihoods, quality of life, and nation building.
                                            </span>
                                            <!--span class="d-block listed ">Speakers TBA
                                    </span-->
                                        </div>
									</div>
									
									<div class="d-flex mr-2 nexttech-program-details">
                                        <span class="d-block time">12:30 - 2:00 PM</span>
                                        <div class="d-flex flex-column">
                                            <span class="d-block  " style="color:#FF8000;font-weight:bold;">LUNCH & NETWORKING</span>
                                            
                                            <!--span class="d-block listed ">Speakers TBA
                                    </span-->
                                        </div>
									</div>
									
									
									
                                    <!---div class="d-flex mr-2 nexttech-program-details">
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
                                    </div--->
                                </div>
						</div>
							
                            <div class="col-md-6 col-12  m-0">
                                
                                <div class="px-4 py-0 timeline">
                                    <!--h5 class="para-display1 mb-0 text-left"  style="font-weight:400;font-size:16px;">ARTIFICIAL INTELLIGENCE</h5-->
                                    <div class="w-100 mt-2">
                                        <div class="d-flex flex-column mr-2 nexttech-program-details">
                                            <span class="d-block time">2:00 - 2:30 PM:</span>
                                            <div class="d-flex flex-column">
                                                <span class="d-block ">ARTIFICIAL INTELLIGENCE</span>
                                                <span class="d-block ">
													Generative AI - A CXO Panel Discussion</span>
													<span class="d-block ">
													Moderator: Gary Gaubba, Panel TBA</span>
                                            </div>
                                        </div>
										<div class="d-flex flex-column mr-2 nexttech-program-details">
                                            <span class="d-block time">2:30 - 3:00 PM:</span>
                                            <div class="d-flex flex-column">
                                                <span class="d-block ">Keynote: Future of Education</span>
                                                <span class="d-block ">
													Generative AI Impact on Education. Raghav Gupta, Managing Director, India & APAC</span>
													<span class="d-block ">
													Coursera</span>
                                            </div>
                                        </div>
                                        <div class="d-flex flex-column mr-2 nexttech-program-details">
                                            <span class="d-block time">3:00 – 6:30 PM: </span>
                                            <div class="d-flex flex-column">
                                                <span class="d-block">FEATURED INNOVATOR PRESENTATIONS </span>
												<span class="d-block">Featuring today's leading-edge technology startups and scaleups that are disrupting
													Deep-Tech landscapes. Keynote style.</span>
                                            </div>											
											<div class="d-flex flex-column">
                                                <span class="d-block listed ">Rado Danilak Ph.D, Founder & CEO, Tachyum </span>
                                                <span class="d-block listed ">Alok Sharma, CEO & President, TruU Inc. </span>
                                                <span class="d-block listed ">GP Singh, CEO, Ambient Scientific Inc.</span>
												<span class="d-block listed ">Jagath Junutula Ph.D, President, CEO and Co-Founder, Aarvik Therapeutics</span>
												<span class="d-block listed ">Sarvajna Dwivedi Ph.D, CEO & Founder, AngioSafe, Inc.</span>
												<span class="d-block listed ">Jyoti Kukreja, VP of Business Development & Chief of Staff, Aisera</span>
												<span class="d-block listed ">Nimit Sawhney, Co-Founder & CEO, Voatz</span>
												<span class="d-block listed ">Arvind Reddy, Founder & CEO, Innolia Energy</span>												
											</div>
                                        </div>
										
										<div class="d-flex flex-column mr-2 nexttech-program-details">
                                            <span class="d-block time">6:00 - 6:30 PM:</span>
                                            <div class="d-flex flex-column">
												<span class="d-block ">AWARDS CEREMONY</span>
                                                <span class="d-block ">The Evolv™ Deep-Tech Innovators who have presented at the conference are recognized.</span>
                                            </div>
										</div>
                                        
                                       
                                    </div>
                                </div>
                            </div>
                            
                        </div>




                        <div class="commonsection-block">
                            <div class="program-section mt-3 mb-2 w-100 ">
                                <!---p class="font-weight-bold time">6:00 - 6:30 PM:</p>
                                <p class="font-weight-bold text-transform-uppercase program-title mb-0">Awards Ceremony</p>

                                <p class="mt-0 col-lg-9 col-md-12 col-12 mx-auto font-weight-bold">The Evolv™ Deep-Tech Innovators
                                    who have presented at the conference are recognized.</p--->
								
								<div class="col-lg-4 col-md-6 col-sm-10 col-11 mx-auto mt-3 mb-4">
								<img src="images/evolv/GlobalElite.jpg"  alt="Evolv" class="img-fluid">
								</div>



                                <a href="https://www.evolv.cc/show_deeptech_companies.asp?SrcType=%FE%26%C4%FE3%3E%9D%DC%2D%A5%B8%BC%D4%94&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Fc%8E&amp;cnt=%9Cb%86%BFg&amp;Start=%9D&amp;E="
                                    target="_blank" class="mt-3 mb-3 d-block text-center font-weight-bold"
                                    style="color:#04489b">GLOBAL DEEP-TECH INNOVATOR WATCHLIST</a>

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

						<div class=" py-2 bg-light ">
                        <div class="  mt-1 px-2 w-100">
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
                        

                          
                           


                        </div>
			</div>
					 <p class="para-display1 mb-0 mt-3" style="font-style: italic;letter-spacing: -0.2px;">All foreign delegates to the
                                Evolv™ NextTech are also registered to attend B20 India Summit without additional
                                delegate fee.
                            </p>



                    </div>

                    <!------->


</div></div></div>


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