<!DOCTYPE html>

<html lang="en">

<head>

    <!-- Basic Page Needs
  ================================================== -->
    <meta charset="utf-8">
    <title>Evolv</title>

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


    <!-- CUSTOM CSS -->
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/custome.css" rel="stylesheet" />
    <link href="./plugins/jsvectormap-master/dist/css/jsvectormap.css" rel="stylesheet" />
    <!---WEB COMPONETNS-->
    <script src="./webcomponts/headerComponents.js"></script>
    <script src="./webcomponts/FooterComponent.js"></script>
    <script src="./webcomponts/ScrollToTop.js"></script>
    <script src="./webcomponts/dummytext.js"></script>

    <style>
        .placekeeper_section {
            display: none;
        }

        .placekeeper_section.theme-12 {
            display: block;
        }
    </style>

    <link href="./css/owl/owl.carousel.css" rel="stylesheet" />
    <link href="./css/owl/owl.theme.default.css" rel="stylesheet" />
    <link href="./css/owl/owl.theme.green.css" rel="stylesheet" />

    <style>
        /*
*
* ==========================================
* CUSTOM UTIL CLASSES
* ==========================================
*
*/

        /* Rounded tabs */

        @media (min-width: 576px) {
            .rounded-nav {
                border-radius: 50rem !important;
            }
        }

        @media (min-width: 576px) {
            .rounded-nav .nav-link {
                border-radius: 50rem !important;
            }
        }

        /* With arrow tabs */

        .with-arrow .nav-link.active {
            position: relative;
        }

        .with-arrow .nav-link.active::after {
            content: '';
            border-left: 6px solid transparent;
            border-right: 6px solid transparent;
            border-top: 6px solid #4378BC;
            position: absolute;
            bottom: -6px;
            left: 50%;
            transform: translateX(-50%);
            display: block;
        }

        /* lined tabs */

        .lined .nav-link {
            border: none;
            border-bottom: 3px solid transparent;
        }

        .lined .nav-link:hover {
            border: none;
            border-bottom: 3px solid transparent;
        }

        .lined .nav-link.active {
            background: none;
            color: #555;
            border-color: #2b90d9;
        }

        /*
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
*
*/
    </style>


</head>

<body class="body-wrapper" data-spy="scroll" data-target=".privacy-nav">

    <!--============================
=            HEADER           =
=============================-->
    <header-component></header-component>


    <div id="writeup-title">
        <h2>AI & ML</h2>
    </div>

    <section class="section py-3">
        <div class="container">
            <div class="row align-items-center m-0 ">
                <img src="./images/evolv/data/ai.jpg" class="img-fluid" />
            </div>
        </div>
    </section>

    <section class="section py-3 ">

        <div class="row">
            <div id="collapseblock" class="w-100">


                <div class="bg-light py-2">
                    <div class="container">
                        <div
                            class="d-flex justify-content-center align-items-center flex-wrap flex-coloum flex-lg-row my-2 w-100  ">
                            <a href="#collapseExample3"
                                class="my-2 equal-button btn d-block btn-sm shadow   px-2 py-3  mx-1 main-bg-color text-white  "
                                target="_blank" data-toggle="collapse" role="button" aria-expanded="false"
                                aria-controls="collapseExample"> Program Details </a>
                            <a href="#collapseExample2"
                                class="my-2 equal-button btn d-block btn-sm shadow   px-2 py-3  mx-1 main-bg-color text-white  "
                                target="_blank" data-toggle="collapse" role="button" aria-expanded="false"
                                aria-controls="collapseExample"> SPONSOR @ EVOLV<sup>TM</sup> </a>
                            <div onclick="ScrollBottom()">
                                <a href="#speakersection"
                                    class="my-2 equal-button btn d-block btn-sm shadow   px-2 py-3  mx-1 bg-danger text-white  "
                                    target="_blank" data-toggle="collapse" role="button" aria-expanded="false"
                                    aria-controls="collapseExample">INFLUENCERS </a>
                            </div>

                            <a href="#collapseExample"
                                class="my-2 equal-button btn d-block btn-sm shadow   px-2 py-3 mx-1 main-bg-color text-white  "
                                target="_blank" data-toggle="collapse" role="button" aria-expanded="false"
                                aria-controls="collapseExample">
                                RECOMMEND AN EXPERT </a>
                            <div id="witeupsblock"><a href="./ai.html"
                                    class="my-2 equal-button btn d-block btn-sm shadow   px-2 py-3 mx-1 main-bg-color text-white  "
                                    target="_blank">WHAT'S TRENDING</a></div>
                            <!--a class="my-2 equal-button btn d-block btn-sm shadow   px-2  py-3 mx-1 main-bg-color text-white  " target="_blank" data-toggle="collapse" href="#collapseExample4" role="button" aria-expanded="false"  aria-controls="collapseExample" >
                    WHAT?S TRENDING </a-->
                        </div>
                    </div>
                </div>

                <div class=" w-100 mx-0 mt-3">
                    <div class="container">
                        <!---RECOMMEND AN EXPERT--->
                        <div class="collapse  mt-0 border-top border-bottom " id="collapseExample"
                            data-parent="#collapseblock">
                            <iframe src="https://www.evolv.cc/Add_Recommend.asp" class="recommend-frame"></iframe>
                        </div>
                        <!---SPONSOR--->
                        <div class="collapse  mt-0 border-top border-bottom " id="collapseExample2"
                            data-parent="#collapseblock">
                            <iframe src="https://www.evolv.cc/Add_sponsors.asp" class="sponsors-frame"></iframe>
                        </div>
                        <!---PROGRAM DETAILS--->
                        <div class="collapse   mt-0 border-top border-bottom " id="collapseExample3"
                            data-parent="#collapseblock">
                            <!--iframe src="https://www.evolv.cc/Add_Program_Details.asp" class="programdetial-frame"></iframe--->

                            <!--TITLE SECTION-->
                            <div class="bg-light p-3">
                                <div class="row m-3">
                                    <div class="col-lg-1 col-md-2 col-2 ">
                                    <h5 class="font-weight-bold">Title:</h5>
                                </div>
                                <div class="col-lg-11 col-md-10 col-10">
                                    <h5>AI & ML</h5>
                                   </div>
                                </div>

                                <div class="row m-3">
                                    <div class="col-lg-1 col-md-2 col-2">
                                    <h5 class="font-weight-bold">Date:</h5>
                                </div>
                                <div class="col-lg-11 col-md-10 col-10">
                                    <h5 >March 27, 2023</h5>
                                   </div>
                                </div>

                                <div class="row m-3">
                                    <div class="col-1 d-none">
                                  
                                </div>
                                <div class="col-12">
                                    <p >Lorem ipsum dolor sit amet, consectetur adipisicing
                                        elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
                                        enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                                        aliquip ex ea commodo consequat. Duis aute
                                        irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat
                                        nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
                                        culpa qui officia deserunt mollit anim id est laborum.</p>
                                   </div>
                                </div>



                            </div>


                             <!--SPEAKERS SECTION-->
                          	<!--#include file="view_Speakers.asp"-->
                         
                          
                             <hr class="divider" style="margin-top:10px"/>
                             <br/>
                             <!---TAB SECTION-->
                          
                          
                            <div class="px-4 pb-2 bg-white rounded">
                                <!-- Bordered tabs-->
                                <ul id="myTab1" role="tablist"
                                    class="nav nav-tabs nav-pills with-arrow flex-column flex-sm-row text-center">
                                    <li class="nav-item flex-sm-fill">
                                        <a id="home1-tab" data-toggle="tab" href="#home1" role="tab"
                                            aria-controls="home1" aria-selected="true"
                                            class="nav-link text-uppercase font-weight-bold mr-sm-3 rounded-0 border active">
                                            Keynote 1</a>
                                    </li>
                                    <li class="nav-item flex-sm-fill">
                                        <a id="profile1-tab" data-toggle="tab" href="#profile1" role="tab"
                                            aria-controls="profile1" aria-selected="false"
                                            class="nav-link text-uppercase font-weight-bold mr-sm-3 rounded-0 border">
                                            Keynote 2</a>
                                    </li>
                                    <li class="nav-item flex-sm-fill">
                                        <a id="contact1-tab" data-toggle="tab" href="#contact1" role="tab"
                                            aria-controls="contact1" aria-selected="false"
                                            class="nav-link text-uppercase font-weight-bold rounded-0 border"> Keynote
                                            3</a>
                                    </li>
                                </ul>
                                <div id="myTab1Content" class="tab-content">
                                    <div id="home1" role="tabpanel" aria-labelledby="home-tab"
                                        class="tab-pane fade px-4 pt-3 show active">
                                       
                                        <div class="row mx-0 ">
                                                <div class="col-lg-2 col-md-3 col-sm-6 col-6 mx-auto mb-2">
                                                    <img src="./images/evolv/speaker/SophieHackford.jpg" class="shadow border mt-3 img-fluid ">
                                                </div>

                                                <div class="col-lg-10 col-md-9 col-sm-12 col-12 mx-auto mt-3">
                                                    <h4 class="font-display2 main-font-color">Sophie Hackford</h4>
                                                    <h5>A Futurist, Business Builder & Speaker</h5>
                                                    <p  class="mt-3">Sophie is well known for launching and running WIRED magazine’s consulting business which brings entrepreneurs building the future into boardrooms. She spent two years in Silicon Valley working at Singularity University, a group based at a NASA research park tasked with understanding and harnessing exponential technologies.</p>
                                                
                                                   
                                                </div>
                                                
                                                <div class="w-100 border-top mt-3 pt-3">
                                                    <div class="light-bg py-2">
                                                        <h5 class="font-weight-bold">SESSION 1</h5>
                                                    </div>
   
                                                       <h4 class="font-display3 main-font-color mt-1">Exploring the What, Why & Who of AI in Enterprise </h4>
                                                       <p class="mt-2">AI is playing an ever important role in business. But how effectively are companies implementing this technology across both products and processes?</p>
   
                                                       <p class="mt-3">This session will help attendees </p>
                                                       <ul class="mx-0 mt-1 px-4 py-2">
                                                          <li>Hear about the role of enterprise AI </li>
                                                          <li>Why and how the technology can help </li>
                                                           <li>Identify barriers and challenges to adoption and implementation</li>
                                                               <li>Understand the most effective ways to leverage Enterprise AI </li>
                                                                   <li>Best practices to follow </li>
   
                                                       </ul>
                                                </div>




                                        </div>


                                    </div>
                                    <div id="profile1" role="tabpanel" aria-labelledby="profile-tab"
                                        class="tab-pane fade px-4 pt-3">
                                        <div class="row mx-0 ">
                                            <div class="col-lg-2 col-md-3 col-sm-6 col-6 mx-auto mb-2">
                                                <img src="./images/evolv/speaker/JeremyWhite.jpg" class="shadow border mt-3 img-fluid ">
                                            </div>

                                            <div class="col-lg-10 col-md-9 col-sm-12 col-12 mx-auto mt-3">
                                                <h4 class="font-display2 main-font-color">Jeremy White</h4>
                                                <h5>Senior Innovation Editor for WIRED</h5>
                                                <p  class="mt-3">Jeremy White talks extensively on artificial intelligence, machine learning and how they can be implemented in various forms by businesses all around the world in order to gain competitive advantage. Jeremy has spoken and delivered lectures at C-suite level on this subject to brands including Google, BMW, Deloitte, HSBC, Johnson & Johnson, Barclays and among others. </p>
                                            
                                               
                                            </div>
                                            
                                            <div class="w-100 border-top mt-3 pt-3">
                                                <div class="light-bg py-2">
                                                    <h5 class="font-weight-bold">SESSION 2</h5>
                                                </div>

                                                   <h4 class="font-display3 main-font-color mt-1">What’s Next for AI. Recent Advancements & Innovations  </h4>
                                                   <p class="mt-2">After decades of slow burn, AI is now a raging fire with developments taking place at a rapid pace. Innovation has been and continues to be the fuel for this fire. </p>

                                                   <p class="mt-3">This session will help attendees  </p>
                                                   <ul class="mx-0 mt-1 px-4 py-2">
                                                      <li>Learn about emerging new developments ranging from new deep learning chips that help neural networks to run faster to algorithmic advancements and new conceptual frameworks such as reinforcement learning, generative adversarial networks, and program synthesis.  </li>
                                                      <li>Network with researchers and top decision makers from diﬀerent fields, share research innovation and ideas and open new possibilities of implementing researches of one field into another to bring out the best applications outcomes. </li>
                                                       <li>Widen professional contact and create opportunities for establishing new collaborations.</li>
                                                          

                                                   </ul>
                                            </div>




                                    </div>
                                    </div>
                                    <div id="contact1" role="tabpanel" aria-labelledby="contact-tab"
                                        class="tab-pane fade px-4 pt-3">
                                        <div class="row mx-0 ">
                                            <div class="col-lg-2 col-md-3 col-sm-6 col-6 mx-auto mb-2">
                                                <img src="./images/evolv/speaker/MarkStevenson.jpg" class="shadow border mt-3 img-fluid" class="shadow border img-fluid ">
                                            </div>

                                            <div class="col-lg-10 col-md-9 col-sm-12 col-12 mx-auto mt-3">
                                                <h4 class="font-display2 main-font-color">Mark Stevenson</h4>
                                                <h5>Author of “We Do Things Differently” and “An Optimist’s Tour of the Future”</h5>
                                                <p  class="mt-3">Mark Stevenson is one of the world’s most respected thought leaders on cutting edge technologies such as artificial intelligence and robotics. He presents case studies on the use of new technologies in various fields such as farming, sustainable energy and health.</p>
                                            
                                               
                                            </div>
                                            
                                            <div class="w-100 border-top mt-3 pt-3">
                                                <div class="light-bg py-2">
                                                    <h5 class="font-weight-bold">SESSION 3</h5>
                                                </div>

                                                   <h4 class="font-display3 main-font-color mt-1">Understanding & Building Ethics in AI   </h4>
                                                   <p class="mt-2">We are beginning to learn that AI scales not just solutions and capabilities but also risks. AI ethics is now a business necessity and is no longer just an academic curiosity. Ethical decisions are needed to guide research, development and use of AI. Researchers and companies alike need a clear plan to deal with ethical quandaries. </p>

                                                   <p class="mt-3">This session will help attendees   </p>
                                                   <ul class="mx-0 mt-1 px-4 py-2">
                                                      <li>Understand and create AI ethical risk framework tailored to specific industry and/or company needs.  </li>
                                                      <li>Learn about ethical issues that arise with AI systems </li>
                                                       <li>Develop well-crafted AI ethics statement.</li>
                                                           <li>Optimize guidance and tools for product managers, build organizational awareness and incentivize employees to play a role in identifying AI ethical issues. 

                                                           </li>
                                                            

                                                   </ul>
                                            </div>




                                    </div>
                                    </div>
                                </div>
                                <!-- End bordered tabs -->
                            </div>



                        



                        </div>
                        <!---INFLUENCER DETAILS--->
                        <div class="collapse  mt-0 border-top border-bottom " id="domain-experts"
                            data-parent="#collapseblock"></div>

                        <!---PROGRAM DETAILS--->
                        <div class="collapse  mt-0 border-top border-bottom " id="speakersection"
                            data-parent="#collapseblock">

                            <div class="row">

	<iframe src="https://www.strategyr.com/evolv/Show_Industry_Influencers.asp?SrcType=%EC%21%C3%E34%3E%90%D4%2E%A0%F4%9C%CE%99ww%DD%D4%2B%5D%16%C9nX%19%E4%11%ECu%F2%E6v%3D%F4%E1%F8Q%27%7D%DA&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Fe&amp;cnt=%9Ff%84%BEe" class="programdetial-frame" style="height:1200px !important"></iframe>
                            </div>

                        </div>

                    </div>
                </div>



            </div>
        </div>

    </section>






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

    <script src="js/pagnation/paginathing.min.js"></script>



    <script>
        function ScrollBottom() {
            window.scrollTo(0, document.body.scrollHeight);
        }
    </script>


<script type="text/javascript">
	$(function () {
    $(".speakerlist").slice(0, 12).show();
    $("#loadMore").on('click', function (e) {
        e.preventDefault();
        $(".speakerlist:hidden").slice(0, 8).slideDown();
        if ($(".speakerlist:hidden").length == 0) {
            $("#load").fadeOut('slow');
        }
        $('html,body').animate({
           // scrollTop: $(this).offset().top
        }, 1500);
    });
});

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
</script>


</body>

</html>