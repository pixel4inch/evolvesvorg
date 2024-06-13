<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>DeepTech Companies - Evolve SV</title>
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
  
  function SaveData(source)
  {
//alert("#"+source+"_first_name");	 
vfirst_name= $("#"+source+"_first_name").val();
vlast_name= $("#"+source+"_last_name").val();
vCompany= $("#"+source+"_Company").val();
vemail= $("#"+source+"_email").val();
vphone= $("#"+source+"_phone").val();
vlinkedInLink= $("#"+source+"_linkedInLink").val();
vlocation= $("#"+source+"_location").val();
vacceptprivacy= $("#"+source+"_acceptprivacy").val();
	   if((vfirst_name != "") && (vfirst_name!=""))
		 {		 
		// alert(vfirst_name);
		  $.ajax({
			url: "Ajax_AddDeepTechCompanyProfiles.asp",
			type: "POST",
			data:'vsource='+encodeURIComponent(source)+'&vfirst_name='+encodeURIComponent(vfirst_name)+'&vlast_name='+encodeURIComponent(vlast_name)+'&vCompany='+encodeURIComponent(vCompany)+'&vemail='+encodeURIComponent(vemail)+'&vphone='+encodeURIComponent(vphone)+'&vlinkedInLink='+encodeURIComponent(vlinkedInLink)+'&vlocation='+encodeURIComponent(vlocation)+'&vacceptprivacy='+encodeURIComponent(vacceptprivacy)+'',
			success: function(data){
			alert('Your request has been accepted');	
//alert(data);			
					 
			},
			error: function (xhr, ajaxOptions, thrownError) {
			alert(xhr.status);
			alert(thrownError);
			alert(xhr.responseText);
			}
		  });
		  } 
  
  
  }
  </script>
  
  <style>

.tab a{
  background-color: #04489b;
  color:#fff;
}


/* Create an active/current tablink class */
.tab a:hover {
  background-color: #04489b;
  color:#fff;
}

/* Style the tab content */
.tabcontent {
  display: none;
  padding: 6px 12px;
  border: 1px solid #ccc;
  border-top: none;
}

/* Style the close button */
.topright {
    float: right;
    cursor: pointer;
    font-size: 28px;
    margin-top: -41px;
    background: #e1dfdf;
    width: 35px;
    height: 35px;
    border-radius: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    margin-right: -31px;
}

.topright:hover {color: red;}
</style>
  
</head>
<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->
<body class="body-wrapper" id="container" data-spy="scroll" data-target=".privacy-nav" onBeforePrint="document.body.style.display='none';" onAfterPrint="document.body.style.display='block';" onContextmenu="return false" onSelectstart="return false" onDragstart="return false"  topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0">
<!--============================
=            HEADER           =
=============================-->
<header-component></header-component>
<!--============================
    PLACEKEEPTER BANNER
=============================-->
<div class="body-content">
  <section class="section pt-3">
    <div class="container">
      <!---<div class="row">      
          <h1 class="font-display1 text-center main-font-color col-lg-11 col-md-12 mx-auto" style="text-transform: uppercase;">INDIAN INFLUENCER</h1>
      </div>
      <div class="col-lg-11 col-md-12 mx-auto mt-2">
        <h3 class="font-weight-bold main-font-color font-display2 my-3 text-center text-capitalize" >
          A confluence of 3.1+ million influential decision makers of Indian descent at enterprises, institutions of learning, governments, and services providers worldwide. </h3>
           
      </div>--->  
	 <%
	 
	 
	SelectQry="select distinct sno, organization_name ,website, Company_Image_url,country from ts_data.dbo.DeepTech_50M_Funded_Global_RANKED  where Company_Image_url is not null and sno=" & trim(request("sn")) & ""
			Set RSWhere = Server.CreateObject("ADODB.Recordset")
			RSWhere.CursorType = 3				
			RSWhere.Open SelectQry, Datasource1
			If Not RSWhere.EOF Then
				cImage=RSWhere("Company_Image_url")
			end if
			set RSWhere =nothing
	 %>
    <div  id="collapseblock">      
     
    <div class="mt-0   " id="domain-experts" data-parent="#collapseblock" >  
        
		<h1 class="font-display2 text-center main-font-color col-lg-11 col-md-12 mx-auto" style="text-transform: uppercase;">TOP DEEPTECH INNOVATOR</h1>
		<div class="img-block text-center  shadow-sm" style="
    width: 124px;
    text-align: center;
    margin: 0 auto;
    height: 122px;
    background: #f7f7f7;
    padding: 10px;
    overflow: hidden;
    display: flex;
    justify-content: center;
    align-items: center;
    margin-bottom: 20px;
    border: #fff solid 7px;
    border-radius: 7px;
">
											
											<%
											If trim(cImage)<>"NA" Then%>
											<img src="<%=trim(cImage)%>" class="w-100" border="0">
											<%End If
											%>
										</div>
		<h1 class="font-display1 text-center main-font-color col-lg-11 col-md-12 mx-auto" style="text-transform: uppercase;"><%=trim(request("cmpName"))%></h1>
	</div>
	
	
	
		<div class="w-100">
		
		<div class="tab d-flex justify-content-center aling-items-center flex-wrap">
			  <a href="https://www.evolvesv.org/JoinUs.asp?AppType=Entity Access" class="tablinks btn btn-md mt-2 mx-2">ENTITY ACCESS</a>  
			  <a href="https://www.evolvesv.org/signin.html"  class="tablinks btn btn-md mt-2 mx-2"> EXPERT CURATION </a>
 
		</div>

		<!---div id="CXOACCESS" class="tabcontent border mt-4 pt-4"  >
		
		  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
		 
		  <div class="w-100">
                                 <div class="row mx-0">
                                     <div class="col-sm-6 mb-2 p-1">
                                         <span class="floating-label"> First Name <span class="text-danger">*</span> </span>
                                         <input class="form-control main mb-1 " type="text"  id="CXO_first_name" name="CXO_first_name" required="">
                                     </div>
                                    
                                     <div class="col-sm-6 mb-3 p-1">
                                        <span class="floating-label"> Last Name <span class="text-danger">*</span> </span>
                                         <input class="form-control main mb-1" type="text" id="CXO_last_name" name="CXO_last_name" required="">
                                     </div>
                                   <div class="col-sm-12 mb-3 p-1">
                                         <span class="floating-label"> Company  <span class="text-danger">*</span> </span>
                                         <input class="form-control main mb-1" type="text"  id="CXO_Company" name="CXO_Company" required="">
                                     </div>
                                     <div class="col-sm-6 mb-3 p-1">
                                         <span class="floating-label"> Email  <span class="text-danger">*</span> </span>
                                         <input class="form-control main mb-1" type="email"  id="CXO_email" name="CXO_email" required="">
                                     </div>
                                    
                                     <div class="col-sm-6 mb-3 p-1">
                                          <span class="floating-label"> Mobile Phone  </span>
                                         <input class="form-control main mb-1" type="number"  id="CXO_phone" name="CXO_phone" required="">
                                     </div>
                                   
                                     <div class="col-sm-12 mb-3 p-1">
                                          <span class="floating-label"> LinkedIn Link  <span class="text-danger">*</span> </span>
                                         <input class="form-control main mb-1" type="text" id="CXO_linkedInLink" name="CXO_linkedInLink" required="">
                                     </div>
                                    
                                     <div class="col-sm-12 mb-3 p-1">
                                         <span class="floating-label"> Location (Country & City)  <span class="text-danger">*</span> </span>
                                         <input class="form-control main mb-1" type="text"  id="CXO_location" name="CXO_location" required="">
                                     </div>
                                     <p class="text-left  mb-2 mandatory-msg">Fields marked with <span style="color:red">*</span> are mandatory</p>
                                   
									<div class="d-flex align-items-start mt-2 ml-0 pl-1">
										 <input type="checkbox" id="CXO_acceptprivacy" name="CXO_acceptprivacy" class="mr-2 mt-1">
										 <p>I have read and agree to the Evolve Foundation's Program  <a href="https://www.evolv.cc/privacy.html" style="color:blue"> Privacy Policy </a> and <a href="https://www.evolv.cc/serviceagreements.html" style="color:blue"> Service Agreement. </a> </p>					 
									 </div>	
							      
                                     <div class="col-12 text-center">
                                         <button class="btn btn-main-md mx-auto py-2 px-2 my-4" id="CXO_submitbtn" onclick="SaveData('CXO')" >Submit</button>
								    </div>
								     
                                 </div>		
							</div>
							
							</div----->

		<!----div id="CURATIONGATEWAY" class="tabcontent border mt-4 pt-4" >
		
		  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
		 
		  <div class="w-100">
                                 <div class="row mx-0">
                                     <div class="col-sm-6 mb-2 p-1">
                                         <span class="floating-label"> First Name <span class="text-danger">*</span> </span>
                                         <input class="form-control main mb-1 " type="text"  id="EXPERT_first_name" name="EXPERT_first_name" required="">
                                     </div>
                                    
                                     <div class="col-sm-6 mb-3 p-1">
                                        <span class="floating-label"> Last Name <span class="text-danger">*</span> </span>
                                         <input class="form-control main mb-1" type="text" id="EXPERT_last_name" name="EXPERT_last_name" required="">
                                     </div>
                                    <div class="col-sm-12 mb-3 p-1">
                                         <span class="floating-label"> Company  <span class="text-danger">*</span> </span>
                                         <input class="form-control main mb-1" type="text"  id="EXPERT_Company" name="EXPERT_Company" required="">
                                     </div>
                                     <div class="col-sm-6 mb-3 p-1">
                                         <span class="floating-label"> Email  <span class="text-danger">*</span> </span>
                                         <input class="form-control main mb-1" type="email"  id="EXPERT_email" name="EXPERT_email" required="">
                                     </div>
                                    
                                     <div class="col-sm-6 mb-3 p-1">
                                          <span class="floating-label"> Mobile Phone  </span>
                                         <input class="form-control main mb-1" type="number"  id="EXPERT_phone" name="EXPERT_phone" required="">
                                     </div>
                                   
                                     <div class="col-sm-12 mb-3 p-1">
                                          <span class="floating-label"> LinkedIn Link  <span class="text-danger">*</span> </span>
                                         <input class="form-control main mb-1" type="text" id="EXPERT_linkedInLink" name="EXPERT_linkedInLink" required="">
                                     </div>
                                    
                                     <div class="col-sm-12 mb-3 p-1">
                                         <span class="floating-label"> Location (Country & City)  <span class="text-danger">*</span> </span>
                                         <input class="form-control main mb-1" type="text"  id="EXPERT_location" name="EXPERT_location" required="">
                                     </div>
                                     <p class="text-left  mb-2 mandatory-msg">Fields marked with <span style="color:red">*</span> are mandatory</p>
                                   
									<div class="d-flex align-items-start mt-2 ml-0 pl-1">
										 <input type="checkbox" id="EXPERT_acceptprivacy" name="EXPERT_acceptprivacy" class="mr-2 mt-1">
										 <p>I have read and agree to the Evolve Foundation's Program  <a href="https://www.evolv.cc/privacy.html" style="color:blue"> Privacy Policy </a> and <a href="https://www.evolv.cc/serviceagreements.html" style="color:blue"> Service Agreement. </a> </p>					 
									 </div>	
							      
                                     <div class="col-12 text-center">
                                         <button class="btn btn-main-md mx-auto py-2 px-2 my-4" id="EXPERT_submitbtn" onclick="SaveData('EXPERT')" >Submit</button>
								    </div>
								     
                                 </div>
		</div>
		
		</div---->



<script>
function openCity(evt, cityName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
		
		
		
		
		
		
		
		
		
    </div>      
      </div>
    </div>
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
  <script
  src="https://code.jquery.com/jquery-3.7.1.js"
  integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
  crossorigin="anonymous"></script>
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
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en', includedLanguages: "en,es,zh-CN,de,ja,nl,fr,it,pt,ar,ko,sv,zh-TW", layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
}
</script>
</body>
</html>