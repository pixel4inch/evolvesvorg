<!DOCTYPE html>
<!--include file="LoadingImage.asp"-->
<html lang="en">

<head>

  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>WHO IS ATTENDING  - EVOLVE SV</title>

  <!-- Mobile Specific Metas
  ================================================== -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta name="description" content="Evolv">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
  <meta name="author" content="Evolv ">
  <meta name="generator" content="Evolv">
  
  <!-- theme meta -->
  <meta name="theme-name" content="Evolv" />

  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
  <!-- PLUGINS CSS STYLE -->
  <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css"/>
  <link rel="stylesheet" href="plugins/themify-icons/themify-icons.css"/>
  <link rel="stylesheet" href="plugins/slick/slick.css"/>
  <link rel="stylesheet" href="plugins/slick/slick-theme.css"/>
  <link rel="stylesheet" href="plugins/fancybox/jquery.fancybox.min.css"/>
  <link rel="stylesheet" href="plugins/aos/aos.css"/>


  <!-- CUSTOM CSS -->
    <link href="https://www.evolv.cc/css/style.css" rel="stylesheet"/>
  <link href="https://www.evolv.cc/css/custome.css" rel="stylesheet"/>
  <link href="https://www.evolv.cc/css/view_speakers.css" rel="stylesheet"/>
  <link href="css/phoca-flags.css" rel="stylesheet"/>
  <link href="./plugins/jsvectormap-master/dist/css/jsvectormap.css" rel="stylesheet"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
  
  	<!---WEB COMPONETNS-->
  <script src="./webcomponts/headerComponents.js"></script>
  <script src="./webcomponts/FooterComponent.js"></script>
  <script src="./webcomponts/ScrollToTop.js"></script>
  <script src="./webcomponts/dummytext.js"></script>
  
  <script>
  window.onbeforeunload = function () {
  window.scrollTo(0, 0);
	}
  </script>
<%


Function SelectedActive(val1,val2)
	IF trim(val1) = trim(val2) then
		SelectedActive = "active"		
	else
		SelectedActive = ""
	End IF
END Function

'' for paging
	dim k,rec_per_page
	rec_per_page=30
	Dim Cp,rowcount,i
		cp=Request.QueryString("Cp")
		EforEdit=Request.QueryString("E")
	if cp="" then
		cp=1
		EforEdit=cint(rec_per_page)
	end if 
	cpForEdit=cp

%>

<style>
.no-list-style, .no-list-style li {
	list-style: none;
}

</style>
</head>

<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->
<!--#include file="rc4.inc"-->


<body class="body-wrapper" id="container" data-spy="scroll" data-target=".privacy-nav" onBeforePrint="document.body.style.display='none';" onAfterPrint="document.body.style.display='block';" onContextmenu="return false" onSelectstart="return false" onDragstart="return false"  topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0">

<!--============================
=           Top Strip     Start   =
=============================-->
	<!--include file="ASPIncludes/topstrip.asp"-->
<!--============================
=            Top Strip      End   =
=============================-->
 <!--============================
=            HEADER           =
=============================-->
  <header-component></header-component>
  <!--============================
    PLACEKEEPTER BANNER
=============================-->    


<!--================================
=            Page Title            =
=================================-->
<section class="section pt-3">
	
		<div class="row">
			<div class="w-100">
				<!-- Page Title -->
				<div class=" mb-3 position-relative">
				
				<%
				'''
				''test = EnDeCrypt("Internet of Things",CHkGiaPSWD)
				''response.write server.urlencode(test)
				dim ShowTypeSTR, SRCWordSTR, GTcountrySTR, InvTypeSTR
				dim industry,sno
				industry = trim(request("industry"))
				sno = trim(request("sno"))
				
				ShowTypeSTR = EnDeCrypt(trim(request("ShowType")),CHkGiaPSWD)
				SRCWordSTR = EnDeCrypt(trim(request("SRCWord")),CHkGiaPSWD)
				GTcountrySTR = EnDeCrypt(trim(request("GTcountry")),CHkGiaPSWD)
				InvTypeSTR = EnDeCrypt(trim(request("InvType")),CHkGiaPSWD)
				SrcTypeSTR = EnDeCrypt(trim(request("SrcType")),CHkGiaPSWD)
				EIDSTR = EnDeCrypt(trim(request("EID")),CHkGiaPSWD)
				cntSTR = EnDeCrypt(trim(request("cnt")),CHkGiaPSWD)
				'''ENCRYPT AGAIN
				dim REShowTypeSTR, RESRCWordSTR, REGTregionSTR, REInvTypeSTR
				REShowTypeSTR = server.urlencode(EnDeCrypt(trim(ShowTypeSTR),CHkGiaPSWD))
				RESRCWordSTR = server.urlencode(EnDeCrypt(trim(SRCWordSTR),CHkGiaPSWD))
				REGTcountrySTR = server.urlencode(EnDeCrypt(trim(GTcountrySTR),CHkGiaPSWD))
				REInvTypeSTR = server.urlencode(EnDeCrypt(trim(InvTypeSTR),CHkGiaPSWD))
				RESrcTypeSTR = server.urlencode(EnDeCrypt(trim(SrcTypeSTR),CHkGiaPSWD))
				REEIDSTR = server.urlencode(EnDeCrypt(trim(EIDSTR),CHkGiaPSWD))
				REcntSTR = server.urlencode(EnDeCrypt(trim(cntSTR),CHkGiaPSWD))
				
				Dim GetStatrtVal
				GetStatrtVal = EnDeCrypt(trim(request("Start")),CHkGiaPSWD)
				''response.write SrcTypeSTR
				Dim Start1, StartBack
							If trim(GetStatrtVal)<>"" Then
								Start1 = trim(GetStatrtVal)+30
								If trim(GetStatrtVal)<>0 then
									StartBack = trim(GetStatrtVal) - 30
								else
									StartBack = 0
								End If
							Else
								Start1 = 30
								StartBack = 0
							End If
						
				If trim(SRCWordSTR)="[" Then
					SRCWordSTR = "[S]"
				End If
					%>
				
				</div>
				<!-- Page Description -->
				
			

			</div>
			<div class="col-12 mx-auto"  >
			<div class="col-lg-8 mx-auto d-flex justify-content-center flex-wrap align-items-center" style="margin-top:-11px">
			
			
			<h1 class="text-center font-display3"><%'=request("ititle")%> SPEAKERS ATTENDING</h1>
			
			</div>
				<br/><br/><br/><br/><br/><br/>
			<div class="col-lg-8 mx-auto d-flex justify-content-center flex-wrap align-items-center" style="margin-top:-11px">							
					<br/><br/><br/><br/>										  
				<h1 class="font-display1 main-font-color text-center">LIST WILL BE PUBLISHED ON JUNE 20, 2024</h1>
			</div>					
													
			</div>
		</div>	
</section>
<!--====  End of Page Title  ====-->
<!--============================
=            Footer            =
=============================-->
<!--============================
=            Footer       Start   =
=============================-->
	<!--include file="ASPIncludes/footer.asp"-->
	<footer-component></footer-component>
<!--============================
=            Footer       End   =
=============================-->

  <!-- To Top 
  <div class="scroll-top-to">
    <i class="ti-angle-up"></i>
  </div>
  -->
  
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

  <!---scroll animation--->
<script src="./plugins/animated-counter/multi-animated-counter.js"></script>

</body>

<script id="jsbin-javascript">
  ;(function(){
    function id(container){return document.getElementById(container); }
    function loadbar() {
      var ovrl = id("overlay"),
          prog = id("progress"),
          stat = id("progstat"),
          img = document.images,
          c = 0;
          tot = img.length;
  
      function imgLoaded(){
        c += 1;
        var perc = ((100/tot*c) << 0) +"%";
        prog.style.width = perc;
        stat.innerHTML = "Loading <div><span></span></div>"+ "<i>" + perc + "</i>";
        if(c===tot) return doneLoading();
      }
      function doneLoading(){
        ovrl.style.opacity = 0;
        setTimeout(function(){ 
          ovrl.style.display = "none";
        }, 1200);
      }
      for(var i=0; i<tot; i++) {
        var tImg     = new Image();
        tImg.onload  = imgLoaded;
        tImg.onerror = imgLoaded;
        tImg.src     = img[i].src;
      }    
    }
    document.addEventListener('DOMContentLoaded', loadbar, false);
  }());
  </script>
  <script type="text/javascript">
	$(document).ready(function() {
		$("#overlay_loading").hide();
	});
</script>
</html>