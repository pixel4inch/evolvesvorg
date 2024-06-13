<!DOCTYPE html>

<html lang="en">
<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->
<head>

  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>INFLUENCER REGISTRY - Evolve SV</title>

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
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />


  <!-- CUSTOM CSS -->
  <link href="css/style.css" rel="stylesheet" />
  <link href="css/custome.css" rel="stylesheet" />
   <link href="css/owl/owl.carousel.css" rel="stylesheet" />
    <link href="css/owl/owl.theme.default.css" rel="stylesheet" />
	<link href="css/owl/owl.theme.green.css" rel="stylesheet" />
  <link href="./plugins/jsvectormap-master/dist/css/jsvectormap.css" rel="stylesheet" />
  <link href="css/jquery.readall.css" rel="stylesheet" />
  <script>
  
  function SaveUnsubscribeData()
  {  
  	
            var vtxtunsubscribeemail=$("#txtunsubscribeemail").val();
	        var vchkSpeaker_Pool= document.getElementById("chkSpeaker_Pool").checked;			
			var vchkMarketing_Communications= document.getElementById("chkMarketing_Communications").checked;
			var vchkNo_email= document.getElementById("chkNo_email").checked;
			var code="<%=request("code")%>"
			if(vchkSpeaker_Pool==true)
			{vchkSpeaker_Pool='Y'}else
			{vchkSpeaker_Pool='N'}	
			
			if(vchkMarketing_Communications==true)
			{vchkMarketing_Communications='Y'}else
			{vchkMarketing_Communications='N'}				
			
			if(vchkNo_email==true)
			{vchkNo_email='Y'}else
			{vchkNo_email='N'}	
			
			$.ajax({
						url: "Ajax_UnsubscribEvolvClick2Engage.asp",
						type: "POST",						data:'code='+encodeURIComponent(code)+'&vtxtunsubscribeemail='+encodeURIComponent(vtxtunsubscribeemail)+'&vchkSpeaker_Pool='+encodeURIComponent(vchkSpeaker_Pool)+'&vchkMarketing_Communications='+encodeURIComponent(vchkMarketing_Communications)+'&vchkNo_email='+encodeURIComponent(vchkNo_email)+'',
						success: function(data){
						//alert(data);
					    alert('Thank you for your submission.');
						
						 
						 
						},
						error: function (xhr, ajaxOptions, thrownError) {
						alert(xhr.status);
						alert(thrownError);
						alert(xhr.responseText);
						}
					})

			
	
  }
  
   function SaveSubscribeData()
  {  
  	
            var vtxtunsubscribeemail=$("#txtunsubscribeemail").val();
	        var vchkSpeaker_Pool= document.getElementById("chkSpeaker_Pool").checked;			
			var vchkMarketing_Communications= document.getElementById("chkMarketing_Communications").checked;
			var vchkNo_email= document.getElementById("chkNo_email").checked;
			var code="<%=request("code")%>"
			if(vchkSpeaker_Pool==true)
			{vchkSpeaker_Pool='Y'}else
			{vchkSpeaker_Pool='N'}	
			
			if(vchkMarketing_Communications==true)
			{vchkMarketing_Communications='Y'}else
			{vchkMarketing_Communications='N'}				
			
			if(vchkNo_email==true)
			{vchkNo_email='Y'}else
			{vchkNo_email='N'}	
			
			$.ajax({
						url: "Ajax_UnsubscribEvolvClick2Engage.asp",
						type: "POST",						
						data:'code='+encodeURIComponent(code)+'&vtxtunsubscribeemail='+encodeURIComponent(vtxtunsubscribeemail)+'&vchkSpeaker_Pool='+encodeURIComponent(vchkSpeaker_Pool)+'&vchkMarketing_Communications='+encodeURIComponent(vchkMarketing_Communications)+'&vchkNo_email='+encodeURIComponent(vchkNo_email)+'',
						success: function(data){
						//alert(data);
					     alert('Thank you for your submission.');
						//window.location.href="https://www.evolv.cc/click2viewSubmit.asp?code=<%=request("code")%>";
						},
						error: function (xhr, ajaxOptions, thrownError) {
						alert(xhr.status);
						alert(thrownError);
						alert(xhr.responseText);
						}
					})

			
	
  }
function SaveData(){ 
	      
			/*var vchkI_will_speak= document.getElementById("chkI_will_speak").checked;			
			var vChkKeep_me_in_the_domain= 'N'; //document.getElementById("ChkKeep_me_in_the_domain").checked;			  
			var vChkI_will_join_your_panel= document.getElementById("ChkI_will_join_your_panel").checked;
			var vchkI_will_consider= 'N'//document.getElementById("ChkI_will_consider").checked;			
			var vchkNot_interested= document.getElementById("ChkNot_interested").checked;			
			//alert("SaveData");
			var vchkI_will_update_my_profile='N';   //document.getElementById("ChkI_will_update_my_profile").checked;
			
			if(vChkKeep_me_in_the_domain==true)
			{vChkKeep_me_in_the_domain='Y'}else
			{vChkKeep_me_in_the_domain='N'}
			
			//if(vChkI_will_join_your_panel==true)
			//{vChkI_will_join_your_panel='Y'}else
			//{vChkI_will_join_your_panel='N'}
			
			if(vchkI_will_consider==true)
			{vchkI_will_consider='Y'}else
			{vchkI_will_consider='N'}
			
			if(vchkNot_interested==true)
			{vchkNot_interested='Y'}else
			{vchkNot_interested='N'}
			//data:'code='+encodeURIComponent(code)+'&vchkI_will_speak='+encodeURIComponent(vchkI_will_speak)+'&vChkKeep_me_in_the_domain='+encodeURIComponent(vChkKeep_me_in_the_domain)+'&vchkI_will_consider='+encodeURIComponent(vchkI_will_consider)+'&vchkNot_interested='+encodeURIComponent(vchkNot_interested)+'&vchkI_will_update_my_profile='+encodeURIComponent(vchkI_will_update_my_profile)+'',
			if(vchkI_will_update_my_profile==true)
			{vchkI_will_update_my_profile='Y'}else
	


		{vchkI_will_update_my_profile='N'}*/
			
			var vchkI_will_speak= document.getElementById("chkI_will_speak").checked;
			var vChkI_will_attend_as_vip_guest= document.getElementById("ChkI_will_attend_as_vip_guest").checked;
			var vChkKeep_me_in_future_events= document.getElementById("ChkKeep_me_in_future_events").checked;
			var vChkCorporate_Sponsorship= document.getElementById("ChkCorporate_Sponsorship").checked;
			var vChkI_will_join_Innovator_Pitchfest= document.getElementById("ChkI_will_join_Innovator_Pitchfest").checked;
			var vChkI_unable_toattend_thistime= document.getElementById("ChkI_unable_toattend_thistime").checked;
			var vChkI_will_consider= document.getElementById("ChkI_will_consider").checked;	
			
			var code="<%=request("code")%>"
			if(vchkI_will_speak==true)
			{vchkI_will_speak='Y'}else
			{vchkI_will_speak='N'}	

            if(vChkI_will_attend_as_vip_guest==true)
			{vChkI_will_attend_as_vip_guest='Y'}else
			{vChkI_will_attend_as_vip_guest='N'}			
						
			if(vChkKeep_me_in_future_events==true)
			{vChkKeep_me_in_future_events='Y'}else
			{vChkKeep_me_in_future_events='N'}
			
			if(vChkCorporate_Sponsorship==true)
			{vChkCorporate_Sponsorship='Y'}else
			{vChkCorporate_Sponsorship='N'}
			
			if(vChkI_will_join_Innovator_Pitchfest==true)
			{vChkI_will_join_Innovator_Pitchfest='Y'}else
			{vChkI_will_join_Innovator_Pitchfest='N'}
			
			if(vChkI_unable_toattend_thistime==true)
			{vChkI_unable_toattend_thistime='Y'}else
			{vChkI_unable_toattend_thistime='N'}
			
			if(vChkI_will_consider==true)
			{vChkI_will_consider='Y'}else
			{vChkI_will_consider='N'}			
		    
			//alert(code);
		  $.ajax({
						url: "Ajax_EvolvClick2Engage.asp",
						type: "POST",						
						data:'code='+encodeURIComponent(code)+'&vchkI_will_speak='+encodeURIComponent(vchkI_will_speak)+'&vChkI_will_attend_as_vip_guest='+encodeURIComponent(vChkI_will_attend_as_vip_guest)+'&vChkKeep_me_in_future_events='+encodeURIComponent(vChkKeep_me_in_future_events)+'&vChkCorporate_Sponsorship='+encodeURIComponent(vChkCorporate_Sponsorship)+'&vChkI_will_join_Innovator_Pitchfest='+encodeURIComponent(vChkI_will_join_Innovator_Pitchfest)+'&vChkI_unable_toattend_thistime='+encodeURIComponent(vChkI_unable_toattend_thistime)+'&vChkI_will_consider='+encodeURIComponent(vChkI_will_consider)+'',						
						success: function(data){
						//alert(data);
						
						 if (vChkI_will_consider == 'Y')
						 {window.location.href="https://evolvesv.org/click2viewSubmit.asp?code=<%=request("code")%>";}
						 else
						 {alert('Thanks for submitting!');}
						
						},
						error: function (xhr, ajaxOptions, thrownError) {
						alert(xhr.status);
						alert(thrownError);
						alert(xhr.responseText);
						}
					})
                    

			}
</script>
	<script>
  function returnvalcheckaccess()
{
	var checkval,emid;	
	checkval = mytrimval(document.frmcheck.Code.value);	
	emid = mytrimval(document.frmcheck.TxtemailID.value);	
	if ((emid=="") || (emid==" "))
	{
		alert ("Email ID cannot be left blank");
		document.frmcheck.TxtemailID.focus();
		return false;
	}
	if ((checkval=="") || (checkval==" "))
	{
		alert ("Privileged Access Code cannot be left blank");
		document.frmcheck.Code.focus();
		return false;
	}
	if (checkval.length<=5)
	{
		alert ("Check the Privileged Access Code");
		document.frmcheck.Code.focus();
		return false;
	}
	alert (valpass(txtpwd));
}
</script>

  <!---WEB COMPONETNS-->
  <script src="./webcomponts/headerComponents.js"></script>
  <script src="./webcomponts/FooterComponent.js"></script>
  <script src="./webcomponts/ScrollToTop.js"></script>
  <script src="./webcomponts/dummytext.js"></script>
  <script src="./webcomponts/banner.js"></script>

</head>

<body class="body-wrapper" data-spy="scroll" data-target=".privacy-nav">



  <!--============================
=            HEADER           =
=============================-->

  <header-component></header-component>

 

  


  <!--============================
    PLACEKEEPTER BANNER
=============================-->
<div class="body-content">
  <section class="section pt-4 " id="clicktoengage">
    <div class="container">
      <div class="row  mx-2 form">
          <div class="col-xl-7 col-lg-7 col-md-10 col-12 py-4 px-3 shadow-sm border mx-auto">
			<%
			
Function Selected(val1,val2)
	IF trim(val1) = trim(val2) then
		Selected = " Checked"
	else
		Selected = ""
	End IF
END Function

			RecChkSQL = "SELECT *,(select link from evolvesv.evolv_user.industry_links where industry=evolv_db.dbo.Curated_industry_Speakers.industry) as link FROM   evolv_db.dbo.Curated_industry_Speakers  WHERE insider_code='"&trim(request("code"))&"'" 
			''response.write RecChkSQL
			''response.end
			Set SpeakerRS = Server.CreateObject("ADODB.Recordset")
			SpeakerRS.Open RecChkSQL, datasource1
			''response.write RecChkSQL
			''response.end
			If Not SpeakerRS.EOF Then		
					speakerImage=""
					fname=trim(SpeakerRS("First_name"))
					sno=trim(SpeakerRS("sno"))
					lname=trim(SpeakerRS("last_name"))
					title=trim(SpeakerRS("headline"))
					company=trim(SpeakerRS("company_name"))
					imageurl=trim(SpeakerRS("Image_url"))
					industry=trim(SpeakerRS("industry"))
					industry_title=trim(SpeakerRS("industry_title"))
					link=trim(SpeakerRS("link"))
					if trim(SpeakerRS("LinkedIn_url")) <> "" then
						LinkedInurl=trim(SpeakerRS("LinkedIn_url"))
					else
						LinkedInurl=""
					end if
						email=trim(SpeakerRS("email"))
					I_will_speak=trim(SpeakerRS("I_will_speak"))
					Keep_me_in_the_domain=trim(SpeakerRS("Keep_me_in_the_domain"))					
					I_will_join_your_panel=trim(SpeakerRS("I_will_join_your_panel"))					
					I_will_consider_hosting_events=trim(SpeakerRS("I_will_consider_hosting_events"))					
					I_will_update_my_profile=trim(SpeakerRS("I_will_update_my_profile"))					
                    Not_interested=trim(SpeakerRS("Not_interested"))

			End if
			set SpeakerRS=nothing
			
			%>
             <h1 class="font-display1 main-font-color text-center"><%'=UCase(industry_title)%> EVOLVE 2024 SIGN-UP</h4>
				
									                           				
									
								
								 <div class="profile-card">
									<a href="<%=LinkedInurl%>" target="_blank">
									<div class="profile-img-block"  style=" background-image: url("")">
									 <img class="img-fluid" src="<%=imageurl%>">
									</div>
									<div class="profile-content">
									 <h3><%=fname%>&nbsp;<%=lname%></h3>
									 <h4><%=company%></h4>
									 <h4><%=title%></h4>
									</div>
								</a>
								</div>
								
								<a href ="https://evolvesv.org/SpeakerPrivileges.html"><h3 class="w-100 text-center font-weight-bold mt-3" style="
									color: #0453AC;
								">  WHY SPEAK? </h3></a>
				<!--div class="influencer-image-box  border">
					<div class="speaker-card  speaker_theme1 m-1">
						<div class="speaker_info_block">
						<h4><a href="">EDIT PROFILE</a></h4>
						</div>
					</div>
				</div-->
              <div class="row mx-0">
              <div class="col-xl-11 col-lg-11 col-md-12 col-12 mx-auto pt-4 px-3 pb-3 mt-3 border-top">
                   
					
                  <div class=" w-100 d-flex  justify-content-start mb-2  px-2 ">
                    <input type="checkbox" class="form-check-input" id="chkI_will_speak" name="chkI_will_speak" <%=Selected(I_will_speak,"Y")%>>
                    <label class="form-check-labe ml-2  mb-0 " for="exampleCheck1">I will speak in-person at EVOLVE 2024. Send me details. </label>
                 </div>
				 
				 <div class="w-100 d-flex  justify-content-start mb-2  px-2 ">
                    <input type="checkbox" class="form-check-input" id="ChkI_will_attend_as_vip_guest" name="ChkI_will_attend_as_vip_guest" <%=Selected(I_will_attend_as_vip_guest,"Y")%>>
                    <label class="form-check-labe ml-2  mb-0 " for="exampleCheck1">I will attend in-person as a VIP Guest at Evolve 2024 but will not speak.  </label>
                 </div>

                 <div class="w-100 d-flex  justify-content-start mb-2  px-2 " >
                    <input type="checkbox" class="form-check-input" id="ChkKeep_me_in_future_events" name="ChkKeep_me_in_future_events" <%=Selected(Keep_me_in_future_events,"Y")%>>
                    <label class="form-check-labe ml-2  mb-0 " for="exampleCheck1">You may recognize me at the conference and invite me to special events. </label>
                 </div>

                 

                 <div class="w-100 d-flex  justify-content-start mb-2  px-2">
                    <input type="checkbox" class="form-check-input" id="ChkCorporate_Sponsorship" name="ChkCorporate_Sponsorship" <%=Selected(I_will_Corporate_Sponsorship,"Y")%>>
                    <label class="form-check-labe ml-2  mb-0 " for="exampleCheck1">Please send me your Branding Kit & Corporate Sponsorship details. </label>
                 </div>
				 
				  <div class=" w-100 d-flex  justify-content-start mb-2  px-2" >
                    <input type="checkbox" class="form-check-input" id="ChkI_will_join_Innovator_Pitchfest" name="ChkI_will_join_Innovator_Pitchfest" <%=Selected(I_will_join_Innovator_Pitchfest,"Y")%>>
                    <label class="form-check-labe ml-2  mb-0 " for="exampleCheck1">I would like to join the Innovator Pitchfest. </label>
                 </div>
				 
				 <div class="w-100 d-flex  justify-content-start mb-2  px-2">
                    <input type="checkbox" class="form-check-input" id="ChkI_unable_toattend_thistime" name="ChkI_unable_toattend_thistime" <%=Selected(I_will_update_profile,"Y")%>>
                    <label class="form-check-labe ml-2  mb-0 " for="exampleCheck1">I’m unable to attend this time. Please keep me posted on future events. </label>
                 </div>
				 
				 <div class="w-100 d-flex  justify-content-start mb-2  px-2">
                    <input type="checkbox" class="form-check-input" id="ChkI_will_consider" name="ChkI_will_consider" <%=Selected(I_will_update_profile,"Y")%>>
                    <label class="form-check-labe ml-2  mb-0 " for="exampleCheck1">Please view and update your profile.  </label>
                 </div>
				 
				 

                 <div class=" w-100 d-flex  justify-content-start mb-2  px-2 " style="display: none !important;">
                    <input type="checkbox" class="form-check-input" style="visible:none" id="ChkNot_interested" name="ChkNot_interested" <%=Selected(Not_interested,"Y")%>
					
					 <input type="checkbox" class="form-check-input" id="Chk_interested" name="Chk_interested" data-toggle="collapse" href="#collapsesubscribe" role="button" aria-expanded="true" aria-controls="collapseExample" >
					 <label class="form-check-labe ml-2  mb-0 " for="exampleCheck1">I can speak at EVOLVE 2024</label>
                 </div>
				
				
				 <div class="collapse  border shadow p-2 mb-5" id="collapsesubscribe" ">
						<div class="w-100 mx-0 mt-3" id="formblock">
						 	<h3 class="font-display2 text-center pb-3 border-bottom">EVOLVE 2024 <br/>Innovation Summit </h3>
						</div>
						
						<div class="w-100 mt-4">
							<div class=" w-100 ml-4 pl-1 pb-1 d-flex  mb-1  justify-content-start ">
									<input type="checkbox" class="form-check-input" id="chkSpeaker_Pool" name="chkSpeaker_Pool">
									<label class="form-check-labe ml-2  mb-0 " for="exampleCheck1"> Speak as a keynote</label>
							</div>
							
							<div class=" w-100 ml-4 pl-1 pb-1 d-flex  mb-1  justify-content-start  border-bottom">
									<input type="checkbox" class="form-check-input" id="chkSpeaker_Pool" name="chkSpeaker_Pool">
									<label class="form-check-labe ml-2  mb-0 " for="exampleCheck1"> Moderate a Session</label>
							</div>
							
							<div class=" w-100 ml-4 pl-1 pb-1 d-flex  mb-1  justify-content-start ">
									<input type="checkbox" class="form-check-input" id="chkSpeaker_Pool" name="chkSpeaker_Pool">
									<label class="form-check-labe ml-2  mb-0 " for="exampleCheck1"> Speak at a session</label>
							</div>
							
							
							
							<div class="col-sm-10 mx-auto mb-3 px-1">
								<label class="form-check-labe ml-2  mb-0 border-bottom" for="exampleCheck1"> Select the session you want to speak/moderate at</label>
																 
								<div class=" w-100 ml-4 pl-1 pb-1 d-flex  mb-1  justify-content-start mt-4 ">
									<input type="radio" class="form-check-input" id="chkSpeaker_Pool" name="chkSpeaker_Pool">
									<label class="form-check-labe ml-2  mb-0 " for="exampleCheck1"> Enterprise AI – In Constant Flux: Adopt & Adapt</label>
								 </div>
								 
								 <div class=" w-100 ml-4 pl-1 pb-1 d-flex  mb-1  justify-content-start mt-2 ">
									<input type="radio" class="form-check-input" id="chkMarketing_Communications" name="chkMarketing_Communications">
									<label class="form-check-labe ml-2  mb-0 " for="exampleCheck1">AI-generated Video Innovations – Stretching the Boundaries of Human Creativity</label>
								 </div>
								 
								 <div class=" w-100 ml-4 pl-1 pb-1 d-flex  mb-1  justify-content-start mt-2 ">
									<input type="radio" class="form-check-input" id="chkNo_email" name="chkNo_email">
									<label class="form-check-labe ml-2  mb-0 " for="exampleCheck1">Gen AI – LLMs, SLMs & Compressed Models</label>
								 </div>
								 
								 <div class=" w-100 ml-4 pl-1 pb-1 d-flex  mb-1  justify-content-start mt-2 ">
									<input type="radio" class="form-check-input" id="chkNo_email" name="chkNo_email">
									<label class="form-check-labe ml-2  mb-0 " for="exampleCheck1">Future of Search - Impact of AI</label>
								 </div>
								 
								  <div class=" w-100 ml-4 pl-1 pb-1 d-flex  mb-1  justify-content-start mt-2 ">
									<input type="radio" class="form-check-input" id="chkNo_email" name="chkNo_email">
									<label class="form-check-labe ml-2  mb-0 " for="exampleCheck1">Gaming – AI Changing The Game</label>
								 </div>
								 
								  <div class=" w-100 ml-4 pl-1 pb-1 d-flex  mb-1  justify-content-start mt-2 ">
									<input type="radio" class="form-check-input" id="chkNo_email" name="chkNo_email">
									<label class="form-check-labe ml-2  mb-0 " for="exampleCheck1">Future of Education & Artificial Intelligence</label>
								 </div>
								 
								  <div class=" w-100 ml-4 pl-1 pb-1 d-flex  mb-1  justify-content-start mt-2 ">
									<input type="radio" class="form-check-input" id="chkNo_email" name="chkNo_email">
									<label class="form-check-labe ml-2  mb-0 " for="exampleCheck1">Marketing & Customer Engagement - Impact of AI</label>
								 </div>
								 
								  <div class=" w-100 ml-4 pl-1 pb-1 d-flex  mb-1  justify-content-start mt-2 ">
									<input type="radio" class="form-check-input" id="chkNo_email" name="chkNo_email">
									<label class="form-check-labe ml-2  mb-0 " for="exampleCheck1">New AI Wearables - Where its Going</label>
								 </div>
								 
								 <div class=" w-100 ml-4 pl-1 pb-1 d-flex  mb-1  justify-content-start mt-2 ">
									<input type="radio" class="form-check-input" id="chkNo_email" name="chkNo_email">
									<label class="form-check-labe ml-2  mb-0 " for="exampleCheck1">Biotechnology – Innovative New Therapies</label>
								 </div>
								 
								 <div class=" w-100 ml-4 pl-1 pb-1 d-flex  mb-1  justify-content-start mt-2 ">
									<input type="radio" class="form-check-input" id="chkNo_email" name="chkNo_email">
									<label class="form-check-labe ml-2  mb-0 " for="exampleCheck1">Digital Health – New Frontiers</label>
								 </div>
								 
								 <div class=" w-100 ml-4 pl-1 pb-1 d-flex  mb-1  justify-content-start mt-2 ">
									<input type="radio" class="form-check-input" id="chkNo_email" name="chkNo_email">
									<label class="form-check-labe ml-2  mb-0 " for="exampleCheck1">Future of Drug Discovery – Emergence of AI</label>
								 </div>
								 
								 <div class=" w-100 ml-4 pl-1 pb-1 d-flex  mb-1  justify-content-start mt-2 ">
									<input type="radio" class="form-check-input" id="chkNo_email" name="chkNo_email">
									<label class="form-check-labe ml-2  mb-0 " for="exampleCheck1">Personalized Medicine</label>
								 </div>
								 
								  <div class=" w-100 ml-4 pl-1 pb-1 d-flex  mb-1  justify-content-start mt-2 ">
									<input type="radio" class="form-check-input" id="chkNo_email" name="chkNo_email">
									<label class="form-check-labe ml-2  mb-0 " for="exampleCheck1">Mobility AI</label>
								 </div>
								 
								  <div class=" w-100 ml-4 pl-1 pb-1 d-flex  mb-1  justify-content-start mt-2 ">
									<input type="radio" class="form-check-input" id="chkNo_email" name="chkNo_email">
									<label class="form-check-labe ml-2  mb-0 " for="exampleCheck1">Space Tech & Future Aviation</label>
								 </div>
								 
								  <div class=" w-100 ml-4 pl-1 pb-1 d-flex  mb-1  justify-content-start mt-2 ">
									<input type="radio" class="form-check-input" id="chkNo_email" name="chkNo_email">
									<label class="form-check-labe ml-2  mb-0 " for="exampleCheck1">Quantum Computing – Are We Prepared?</label>
								 </div>
								 
								  <div class=" w-100 ml-4 pl-1 pb-1 d-flex  mb-1  justify-content-start mt-2 ">
									<input type="radio" class="form-check-input" id="chkNo_email" name="chkNo_email">
									<label class="form-check-labe ml-2  mb-0 " for="exampleCheck1">Global Supply Chains</label>
								 </div>
								 
							</div>
							
							<div class="w-100 text-center my-4">
								
								  <button class="btn btn-main-md mx-auto py-2 px-2 bg-danger font-weight-bold  " onclick="SavesubscribeData()" style="letter-spacing:1px">SAVE</button>
								
							</div>
						
						</div>
				</div>
				
				<!--div class="collapse  border shadow p-2 mb-5" id="collapseunsubscribe" ">
						<div class="w-100 mx-0 mt-3" id="formblock">
						 	<h3 class="font-display2 text-center pb-3 border-bottom">Evolv? Unsubscribe </h3>
						</div>
						
						<div class="w-100 mt-4">
							<div class="col-sm-10 mx-auto mb-3 px-1">
                 			  <input class="form-control w-100 border-radius-0 " value="<%=email%>" type="text" required="" id="txtunsubscribeemail" name="txtunsubscribeemail" style="height:55px; font-size:17px; color:#000"">
							  <span class="floating-label"> Email Address <span class="text-danger">*</span> </span>
							</div>							
							<div class="col-sm-10 mx-auto mb-3 px-1">
								<div class=" w-100 ml-4 pl-1 pb-1 d-flex  mb-1  justify-content-start mt-4 ">
									<input type="checkbox" class="form-check-input" id="chkSpeaker_Pool" name="chkSpeaker_Pool">
									<label class="form-check-labe ml-2  mb-0 " for="exampleCheck1"> <span class="text-danger">*</span>Unsubscribe from Evolv? Speaker Pool</label>
								 </div>								 
								 <div class=" w-100 ml-4 pl-1 pb-1 d-flex  mb-1  justify-content-start mt-2 ">
									<input type="checkbox" class="form-check-input" id="chkMarketing_Communications" name="chkMarketing_Communications">
									<label class="form-check-labe ml-2  mb-0 " for="exampleCheck1"><span class="text-danger">*</span>Unsubscribe from Evolv? Marketing Communications</label>
								 </div>								 
								 <div class=" w-100 ml-4 pl-1 pb-1 d-flex  mb-1  justify-content-start mt-2 ">
									<input type="checkbox" class="form-check-input" id="chkNo_email" name="chkNo_email">
									<label class="form-check-labe ml-2  mb-0 " for="exampleCheck1"><span class="text-danger">*</span>No email required from Evolv?</label>
								 </div>								 
							</div>							
							<div class="w-100 text-center my-4">								
								  <button class="btn btn-main-md mx-auto py-2 px-2 bg-danger font-weight-bold  " onclick="SaveUnsubscribeData()" style="letter-spacing:1px">UNSUBSCRIBE</button>								
							</div>
						</div>
				</div-->

               
                 <div class="text-center mt-4 d-flex justify-content-center">
                 <button class="mx-2  text-white program-buttons mb-4" onclick="SaveData()">SUBMIT</button>
				  </div>
				  
				
				   
				 <div class="text-center mt-4 d-flex justify-content-center mt-4 pt-4 border-top" >
				 
				  
				 
				 
				 <%if (I_will_update_my_profile="Y") then%>
				         <button class="mx-2  text-white program-buttons speaker_button " onclick="SaveData()">UPDATE PROFILE</button>
				 <%end if%>
				 
				
				 <!--a href="view_who_is_attending.asp?industry=<%=industry%>&sno=<%=sno%>&ititle=<%=industry_title%>" target="_blank" class="mx-4  text-white program-buttons speaker_button">WHO IS ATTENDING</a>
				 <a href="View_Industry_Speakers.asp?industry=<%=industry%>&sno=<%=sno%>&ititle=<%=industry_title%>" target="_blank" class="mx-4  text-white program-buttons speaker_button">VIP INVITEE POOL</a-->
				 
				 <%if trim(link) <> "" then %>
				  <!--a href="<%=link%>" target="_blank" class="mx-2  text-white program-buttons speaker_button">INFLUENCERS</a-->
				 <%end if%>
               <a href="View_Industry_Speakers.asp?industry=<%=industry%>&sno=<%=sno%>&ititle=<%=industry_title%>" target="_blank" class="mx-10  text-white program-buttons speaker_button1"  style="width:500px;">GLOBAL DOMAIN EXPERT NETWORK</a>
				
				 </div>
				      </div>
					
				 </div>
				 	
					<!---SHOW SPEAKERS--->
					
				<!--iframe src="View_Industry_Speakers.asp?industry=<%=industry%>&sno=<%=sno%>&ititle=<%=industry_title%>" name="DashBoardDisplay" id="clicktoengageSpeaker_iframe" class=""></iframe-->	
		 
				
				
          
				
				
				    
             
			  
			

         
		  
		  
		

      </div>
    </div>
  </section>
</div>
 


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
  <script src="./js/jquery.readall.js"></script>
   <script src="./js/owl/owl.carousel.js"></script>




  <script>
    $('.textless').readall({
      showheight: null,
      showrows: 8
    });


  </script>




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
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en', includedLanguages: "en,es,zh-CN,de,ja,nl,fr,it,pt,ar,ko,sv,zh-TW", layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
}
</script>



<script>
$('#related_speakers').owlCarousel({
    loop:true,
    margin:10,
    nav:true,
	autoplay:true,
	loop:true,
	autoplaySpeed:1500,
	autoplayHoverPause:true,
	autoplayTimeout:1500,
	nav:false,
	dots:false,
	
    responsive:{
        0:{
            items:1
        },
		
		300:{
			items:2
		},
		
        600:{
            items:3
        },
        1000:{
            items:6
        }
    }
})

</script>
</body>

</html>