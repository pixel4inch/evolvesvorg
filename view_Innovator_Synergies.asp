<!DOCTYPE html>
<html lang="en">
<%
If trim(session("STcode"))="" Then
	''response.redirect "https://www.evolv.cc"
End If

If trim(Request.Cookies("STcode"))="" Then
	''response.redirect "https://www.evolv.cc"
End If
'''response.write (Request.Cookies("STcode"))
%>
<head>
<!--#include file="rc4.inc"-->

  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>INNOVATOR SYNERGIES - Evolv</title>

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
  <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css"/>
  <link rel="stylesheet" href="plugins/themify-icons/themify-icons.css"/>
  <link rel="stylesheet" href="plugins/slick/slick.css"/>
  <link rel="stylesheet" href="plugins/slick/slick-theme.css"/>
  <link rel="stylesheet" href="plugins/fancybox/jquery.fancybox.min.css"/>
  <link rel="stylesheet" href="plugins/aos/aos.css"/>


  <!-- CUSTOM CSS -->
  <link href="css/style.css" rel="stylesheet"/>
  <link href="css/custome.css" rel="stylesheet"/>
  <link href="css/phoca-flags.css" rel="stylesheet"/>
  <link href="./plugins/jsvectormap-master/dist/css/jsvectormap.css" rel="stylesheet"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">

	<!---WEB COMPONETNS-->
  <script src="./webcomponts/headerComponents.js"></script>
  <script src="./webcomponts/FooterComponent.js"></script>
  <script src="./webcomponts/ScrollToTop.js"></script>
  <script src="./webcomponts/dummytext.js"></script>
</head>



<!---body class="body-wrapper" id="container" data-spy="scroll" data-target=".privacy-nav" onBeforePrint="document.body.style.display='none';" onAfterPrint="document.body.style.display='block';" onContextmenu="return false" onSelectstart="return false" onDragstart="return false"  topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0"--->

<body class="body-wrapper" id="container">


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

<section class="section page-title">
	<div class="container">
		<div class="row">

			
			<div class="col-sm-12 col-md-12 col-lg-8  m-auto">
				<!--img src="https://www.strategyr.com/images/zing__new2.JPG" width="20%" border="0"-->
				<!-- Page Title -->
				<div class="section-title mb-3">
					<h2 class="main-font-color">INNOVATOR ECOSYSTEMS</h2>
				</div>
				<!-- Page Description -->
				
			

			</div>

			<div class="col-12 mx-auto ecosysem-dashboard" id="ecosysem-dashboard" >
				<div class="rounded  p-2 bg-white">
					<div class="row">
						
						<%response.write (trim(request("link")) & "?GTregion=" & trim(request("GTregion")) & "&ShowType=" & trim(request("ShowType")) & "&SRCWord=" & trim(request("SRCWord")) )
						LINK= (trim(request("link")) & "?GTregion=" & trim(request("GTregion")) & "&ShowType=" & trim(request("ShowType")) & "&SRCWord=" & trim(request("SRCWord")) )
						%>
						
						<iframe src="<%=LINK%>" name="DashBoardDisplay" id="DashBoardDisplay" class="programdetial-frame"></iframe>
						
										
				</div>
			</div>
		</div>
	</div>
	<iframe name="DashBoardDisplay" id="DashBoardDisplay" class="programdetial-frame"></iframe>
</section>




<!--============================
=            Footer       Start   =
=============================-->
	<!--include file="ASPIncludes/footer.asp"-->
	<footer-component></footer-component>
<!--============================
=            Footer       End   =
=============================-->



  <!-- To Top -->
  <div class="scroll-top-to">
    <i class="ti-angle-up"></i>
  </div>
  
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
 <script   src="https://code.jquery.com/jquery-3.6.3.js"integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
 <script src="./plugins/animated-counter/numscroller-1.0.js"/></script>

 
 
<script type="text/javascript">
    function googleTranslateElementInit() {
      new google.translate.TranslateElement({pageLanguage: 'en', layout: google.translate.TranslateElement.FloatPosition.TOP_LEFT}, 'google_translate_element');
    }

	function triggerHtmlEvent(element, eventName) {
	  var event;
	  if (document.createEvent) {
		event = document.createEvent('HTMLEvents');
		event.initEvent(eventName, true, true);
		element.dispatchEvent(event);
	  } else {
		event = document.createEventObject();
		event.eventType = eventName;
		element.fireEvent('on' + event.eventType, event);
	  }
	}

	jQuery('.lang-select').click(function() {
	  var theLang = jQuery(this).attr('data-lang');
	  jQuery('.goog-te-combo').val(theLang);

	  //alert(jQuery(this).attr('href'));
	  window.location = jQuery(this).attr('href');
	  location.reload();

	});
  </script>
<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
</body>

</html>