<!DOCTYPE html>

<html lang="en">

<head>

  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>Calender Events - Evolv</title>

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
  <link href="./plugins/jsvectormap-master/dist/css/jsvectormap.css" rel="stylesheet" />
  <link href="css/jquery.readall.css" rel="stylesheet" />
  


     <!---WEB COMPONETNS-->
  <script src="./webcomponts/headerComponents.js"></script>
  <script src="./webcomponts/FooterComponent.js"></script>
  <script src="./webcomponts/ScrollToTop.js"></script>
  <script src="./webcomponts/dummytext.js"></script>
  <script src="./webcomponts/banner.js"></script>
  <script src="./webcomponts/eventcollapse.js"></script>
  <script src="./webcomponts/dgcomponent.js"></script>
  <script src="./webcomponts/datafooterComponent.js"></script>
  <script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>

<body class="body-wrapper" id="container" data-spy="scroll" data-target=".privacy-nav" onBeforePrint="document.body.style.display='none';" onAfterPrint="document.body.style.display='block';" onContextmenu="return false" onSelectstart="return false" onDragstart="return false"  topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0">



  <!--============================
=            HEADER           =
=============================-->

  <header-component></header-component>
<style>
*
* ==========================================
* FOR DEMO PURPOSE
* ==========================================*/

.speakerlist {
    display:none;
    padding: 10px;
    border-width: 0 1px 1px 0;


    margin-bottom: 5px;

}
.totop {
    position: fixed;
    bottom: 10px;
    right: 20px;
}
.totop a {
    display: none;
}
a, a:visited {
    color: #33739E;
    text-decoration: none;
    display: block;
    margin: 10px 0;
}
a:hover {
    text-decoration: none;
}
#loadMore {
    padding: 10px;
    text-align: center;
    font-size: 18px;
    color:#4378BC;
    font-weight: 600;;
    border-width: 0 1px 1px 0;
    text-transform:uppercase;
   
    transition: all 600ms ease-in-out;
    -webkit-transition: all 600ms ease-in-out;
    -moz-transition: all 600ms ease-in-out;
    -o-transition: all 600ms ease-in-out;
}
#loadMore:hover {
    background-color: #fff;
    color: #33739E;
}

</style>
  <script src="https://releases.jquery.com/git/jquery-git.js"></script>
  <script>



    $(document).ready(function () {

      $.getJSON("./data/events.json", function (data) {
        // var selURL = window.location.pathname.substr(window.location.pathname.lastIndexOf("/") + 1).replace(".html", "");
        //  alert("URL:"+selURL)
        var eventid = GetParameterValues("EventId");
        // alert("Event:"+ eventid);
        var banner = '';
        var datagrapic = '';
        var domain = '';
		var url_domain = '';
        var gialink = "";
        var writeups="";
        var popupdatagraphic="";
        console.log(data)
        $.each(data.eventslist, function (key, value) {
          if (value.Event == eventid) {
            banner += `<employee-card  title=" ` + value.eventtitle + '"  date= " ' + value.eventdate + ` "> </employee-card>`;
            datagrapic += `<img data-toggle="modal" data-target="#exampleModal" style="cursor:pointer" src="` + value.eventdatagraphic + `" class="img-fluid border shadow-sm"/>`;
            popupdatagraphic += `<img  src="` + value.eventdatagraphic + `" class="img-fluid border shadow-sm"/>`;
            gialink += `  <dgfooter-card glink=" ` + value.eventdatagraphiclink + `  "></dgfooter-card>`
            if (value.eventdomainlink !== undefined) {
              domain += ` 	<a href="#domain-experts" class="my-2 equal-button btn d-block btn-sm shadow   px-2 py-3  mx-1 bg-danger text-white  " target="_blank" data-toggle="collapse" role="button" aria-expanded="false"  aria-controls="collapseExample" > INFLUENCERS </a>`
			        url_domain += `<iframe src="` + value.eventdomainlink + `" class="programdetial-frame"></iframe>`
            };
            writeups += `<a href="` + value.writeupslink + `" class="my-2 equal-button btn d-block btn-sm shadow   px-2 py-3 mx-1 main-bg-color text-white  " target="_blank">WHAT'S TRENDING</a>`;
            

          }
        });
        $('#pagebanner-block').html(banner);
        $('#datagraphic-block').html(datagrapic);
       
	    	$('#domain-experts_btn').html(domain);
        $('#domain-experts').html(url_domain);
        $('#gialinkblock').html(gialink);
        $('#witeupsblock').html(writeups);
        $('#popupdatagraphic').html(popupdatagraphic)

      }).fail(function () {
        document.write("An error has occurred.");
      });
    }); 
  </script>

  <!--============================
    PAGE BANNERS
=============================-->
  <section class="pagebanners">
    <div class="container">
      <div class="row mx-0" id="pagebanner-block">
      </div>
   </div>
  </section>

  <!--============================
    PLACEKEEPTER BANNER
=============================-->
  <section class="section placekeeper_section page-title pt-3">
    <div class="container">
      <div class="row align-items-center m-0 ">
        <div class="col-lg-9 col-md-12 col-12 mx-auto">       
        <div class="datagraphic-block" id="datagraphic-block">
        </div>
        <div class="w-100   text-center" id="gialinkblock">
        </div>
      </div>
      </div>
    </div>
  </section>

  <!--================================
   PROGARAM DETAILS
=================================-->

  <section class="section pt-2  mb-5">
    
      <div class="row">
        <div id="collapseblock" class="w-100">
			
			      <div class=" w-100 mx-0 mt-3">
              <div class="container">   
				<!---RECOMMEND AN EXPERT--->
                  <div class="collapse  mt-0 border-top border-bottom " id="collapseExample"  data-parent="#collapseblock">     
                    <iframe src="https://www.evolv.cc/Add_Recommend.asp" class="recommend-frame"></iframe>
                  </div>    
                  <!---SPONSOR--->
                  <div class="collapse  mt-0 border-top border-bottom " id="collapseExample2"  data-parent="#collapseblock">  
                    <iframe src="https://www.evolv.cc/Add_sponsors.asp" class="sponsors-frame"></iframe>
                  </div>    
                  <!---PROGRAM DETAILS--->
                  <div class="collapse  mt-0 border-top border-bottom " id="collapseExample3"  data-parent="#collapseblock">  
                   <!-- <iframe src="https://www.evolv.cc/Add_Program_Details.asp" class="programdetial-frame"></iframe>-->
					 <!--SPEAKERS SECTION-->
                          	<!--#include file="view_Speakers.asp"-->
                  </div>			
                  <!---INFLUENCER DETAILS--->
                  <div class="collapse  mt-0 border-top border-bottom " id="domain-experts"  data-parent="#collapseblock">                  
                  </div>    
                  
            </div> 
            </div>
			
			
            <div class="bg-light py-2">
            <div class="container">     
              <div class="d-flex justify-content-center align-items-center flex-wrap flex-coloum flex-lg-row my-2 w-100  ">
                <a href="#collapseExample3" class="my-2 equal-button btn d-block btn-sm shadow   px-2 py-3  mx-1 main-bg-color text-white  " target="_blank" data-toggle="collapse"  role="button" aria-expanded="false"  aria-controls="collapseExample" /> Program Details </a>
                <a href="#collapseExample2" class="my-2 equal-button btn d-block btn-sm shadow   px-2 py-3  mx-1 main-bg-color text-white  " target="_blank" data-toggle="collapse"  role="button" aria-expanded="false"  aria-controls="collapseExample" > SPONSOR @ EVOLV<sup>TM</sup> </a>
        
                <div id="domain-experts_btn">

                </div>            
                <a href="#collapseExample" class="my-2 equal-button btn d-block btn-sm shadow   px-2 py-3 mx-1 main-bg-color text-white  " target="_blank" data-toggle="collapse" role="button" aria-expanded="false"  aria-controls="collapseExample" >
                  RECOMMEND AN EXPERT </a>
                  <div id="witeupsblock">
                  </div>
                  <!--a class="my-2 equal-button btn d-block btn-sm shadow   px-2  py-3 mx-1 main-bg-color text-white  " target="_blank" data-toggle="collapse" href="#collapseExample4" role="button" aria-expanded="false"  aria-controls="collapseExample" >
                    WHAT?S TRENDING </a-->
              </div>
		        </div>
          </div>
          </div>
      </div>
  
  </section>

  <!--================================
=    DOMAIN EXPERTS
=================================-->

  <!--section class="section pt-4 " id="domain-experts">

  </section--->


  




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
  

  <script src="./js/multi-animated-counter.js"></script>
   <script src="./js/jquery.simpleLoadMore.js"></script>

  <script type="text/javascript"
    src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>

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
  </script>


  <script type="text/javascript">
    function googleTranslateElementInit() {
      new google.translate.TranslateElement({ pageLanguage: 'en', includedLanguages: "en,es,zh-CN,de,ja,nl,fr,it,pt,ar,ko,sv,zh-TW", layout: google.translate.TranslateElement.InlineLayout.SIMPLE }, 'google_translate_element');
    }
  </script>
  
 

<div class="modal fade" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true" id="exampleModal">
  <div class="modal-dialog modal-dialog-centered modal-xl ">
    <div class="modal-content">
      <div id="popupdatagraphic">

      </div>
    </div>
  </div>
</div>



</body>
<script type="text/javascript">


$('a[href=#top]').click(function () {
    $('body,html').animate({
        scrollTop: 0
    }, 600);
    return false;
});

$(window).scroll(function () {
    if ($(this).scrollTop() > 50) {
        $('.totop a').fadeIn();
    } else {
        $('.totop a').fadeOut();
    }
});

 $('.some-list-1').simpleLoadMore({
      item: 'div',
      count: 12
    });
</script>

</html>