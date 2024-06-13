class HeaderComponent extends HTMLElement {
  connectedCallback() {
    this.innerHTML = `
     
   <!---NAVGATION START--->
    <nav class="navbar main-nav navbar-expand-xl px-2 pt-0 pb-2 customeNavBar border-bottom">
    <div class="container">
       <a class="navbar-brand" href="Default.htm"><img src="images/evolv/logo.svg" "="" alt="Evolv" class="brandImg"></a>
      <!-- <img src="images/evolv/B20.jpg" "="" alt="Evolv" class="brandImg d-xl-none d-lg-none  d-md-block d-sm-block d-block"> -->
       <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
       <span class="ti-menu"></span>
       </button>
       <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav mx-auto">
            
			<!----home tab   
                <li class="nav-item ">	
                l">HOME</a>
				</li> -->            

             <!----About Tab -->	 
             <li class="nav-item @@ABOUT ">
                <a class="nav-link" href="profile.html">ABOUT</a>
             </li>
			 
			  <!----About Tab -->	 
             <li class="nav-item @@PROGRAMS ">
                <a class="nav-link" href="initiatives.html">INITIATIVES</a>
             </li>
			 
			  <!----program Tab
			 <li class="nav-item dropdown @@Program ">
                <a class="nav-link dropdown-toggle" href="javascript:void(0)" data-toggle="dropdown">PROGRAMS <span><i class="ti-angle-down"></i></span></a>
                <ul class="dropdown-menu">
					<li><a class="dropdown-item @profile " href="programs_innovator_synergies.html"> INNOVATOR SYNERGIES</a> </li>                 
					<li><a class="dropdown-item @@leadership" href="programs_Iindian_influencer.html">INDIAN INFLUENCER  </a></li>				   
					
                </ul>
             </li> -->  
			 
			 <li class="nav-item @@DATA ">
               <a class="nav-link" href="Innovator_Synergies.asp">DATA</a>
            </li>
			
			<!----Startup Tab 
            <li class="nav-item @@G20 ">
               <a class="nav-link" href="Startup_Showcase.html">SHOWCASE</a>
            </li>
			---->	 
			
			<li class="nav-item @@Awards">
			<a class="nav-link" href="awards.html">AWARDS</a>
         </li>
		 
		 <li class="nav-item @@EVENTS">
			<a class="nav-link" href="calender.html">EVENTS</a>
         </li>
		 
		  <!--li class="nav-item @@MEMBERSHIP">
             <a class="nav-link" href="javascript:valid(0)">INNOVATORS</a>
            </li-->
			
			
			
			
			<!--li class="nav-item @@G20 ">
               <a class="nav-link" href="member.html">MEMBERS</a>
            </li-->
			
			
		 
		  <!----program Tab -->
			 <li class="nav-item dropdown @@PROGRAM ">
                <a class="nav-link dropdown-toggle" href="partners.html" data-toggle="dropdown">PARTNERS <span><i class="ti-angle-down"></i></span></a>
                <!-- Dropdown list -->
                <ul class="dropdown-menu">
					<li><a class="dropdown-item @profile " href="anchors.html"> ANCHORS</a> </li>                 
					<li><a class="dropdown-item @@leadership" href="partners.html">PARTNERS  </a></li>				   
					
                </ul>
             </li> 
		  
		  
		  
		  
		
		 
		  <li class="nav-item @@G20 ">
          <a class="nav-link" href="evolvgallery.html">GALLERY</a>
         </li>
		 
		  <!----Login Tab ---->	
          <li class="nav-item @@G20 ">
	
         
		
		 <a class="nav-link" href="signin.html">LOGIN</a>
		 
         </li>
		 
		   
			

        
        
       
             <!---Laungagae Tab---->
             <li class="nav-item @@language ">
                <div id="google_translate_element"></div>
                <!--div class="ct-topbar">
                   <ul class="list-unstyled list-inline ct-topbar__list">
                     <li--- class="ct-language">Language 
                     <ul class="list-unstyled ct-language__dropdown">
                     <li><a href="#googtrans(en|es)" class="lang-es lang-select" data-lang="es">
                     <img class="flag-img" src="https://www.worldometers.info/img/flags/ar-flag.gif" alt="Argentina"> Argentina</a> </li>
                     <li><a href="#googtrans(en|en)" class="lang-es lang-select" data-lang="en">
                     <img class="flag-img" src="https://www.worldometers.info/img/flags/as-flag.gif" alt="Australia"> Australia</a> </li>
                    
                     <li><a href="#googtrans(en|pt)" class="lang-es lang-select" data-lang="pt">
                     <img class="flag-img" src="https://www.worldometers.info/img/flags/br-flag.gif" alt="Brizal"> Brazil</a> </li>
                     
                     
                     <li><a href="#googtrans(en|en)" class="lang-es lang-select" data-lang="en">
                     <img class="flag-img" src="https://www.worldometers.info/img/flags/ca-flag.gif" alt="Canada">  Canada</a> </li>
                   
                   
                     <li><a href="#googtrans(en|zh-CN)" class="lang-es lang-select" data-lang="zh-CN">
                     <img class="flag-img" src="https://www.worldometers.info/img/flags/ch-flag.gif" alt="China"> China</a> </li>
                   
                   
                     <li><a href="#googtrans(en|fr)" class="lang-es lang-select" data-lang="fr">
                     <img class="flag-img" src="https://www.worldometers.info/img/flags/fr-flag.gif" alt="France"> France</a> </li>
                    
                    
                     <li><a href="#googtrans(en|de)" class="lang-es lang-select" data-lang="de">
                     <img class="flag-img" src="https://www.worldometers.info/img/flags/small/tn_gm-flag.gif" alt="Germany"> Germany</a> </li>
                    
                    
                     <li><a href="#googtrans(en|hi)" class="lang-es lang-select" data-lang="hi">
                     <img class="flag-img" src="https://www.worldometers.info/img/flags/in-flag.gif" alt="India"> India</a> </li>
                   
                     <li><a href="#googtrans(en|id)" class="lang-es lang-select" data-lang="id">
                     <img class="flag-img" src="https://www.worldometers.info/img/flags/id-flag.gif" alt="Indonesia"> Indonesia</a> </li>
                     
                     <li><a href="#googtrans(en|it)" class="lang-es lang-select" data-lang="it">
                     <img class="flag-img" src="https://www.worldometers.info/img/flags/it-flag.gif" alt="Italy"> Italy</a> </li>
                     
                     <li><a href="#googtrans(en|ja)" class="lang-es lang-select" data-lang="ja">
                     <img class="flag-img" src="https://www.worldometers.info/img/flags/ja-flag.gif" alt="Japan"> Japan</a> </li>
                     
                     
                     <li><a href="#googtrans(en|es)" class="lang-es lang-select" data-lang="es">
                     <img class="flag-img" src="https://www.worldometers.info/img/flags/mx-flag.gif" alt="Mexico"> Mexico</a> </li>
                     
                     
                     <li><a href="#googtrans(en|ko)" class="lang-es lang-select" data-lang="ko">
                     <img class="flag-img" src="https://www.worldometers.info/img/flags/ks-flag.gif" alt="South Korea"> South Korea</a> </li>
                     
                     <li><a href="#googtrans(en|ru)" class="lang-es lang-select" data-lang="ru">
                     <img class="flag-img" src="https://www.worldometers.info/img/flags/rs-flag.gif" alt="JAPAN"> Russia</a> </li>
                    
                     <li><a href="#googtrans(en|ar)" class="lang-es lang-select" data-lang="ar">
                     <img class="flag-img" src="https://www.worldometers.info/img/flags/sa-flag.gif" alt=" Saudi Arabia">   Saudi Arabia</a> </li>
                    
                     <li><a href="#googtrans(en|af)" class="lang-es lang-select" data-lang="af">
                     <img class="flag-img" src="https://www.worldometers.info/img/flags/sf-flag.gif" alt="Russia">  South Africa</a> </li>
                     
                     <li><a href="#googtrans(en|tr)" class="lang-es lang-select" data-lang="tr">
                     <img class="flag-img" src="https://www.worldometers.info/img/flags/tu-flag.gif" alt="Turkey">  Turkey</a> </li>
                    
                     <li><a href="#googtrans(en|en)" class="lang-es lang-select" data-lang="en">
                     <img class="flag-img" src="https://www.worldometers.info/img/flags/uk-flag.gif" alt="United Kingdom">  United Kingdom</a> </li>
                    
                     <li><a href="#googtrans(en|en)" class="lang-es lang-select" data-lang="en">
                     <img class="flag-img" src="https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Flag_of_the_United_States.png/800px-Flag_of_the_United_States.png?20110131151900" alt="United States">  United States</a> </li>
                     
                     <li><a href="#googtrans(en|fr)" class="lang-es lang-select" data-lang="fr">
                     <img class="flag-img" src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/European_flag%2C_incorrect_star_rotation.svg/225px-European_flag%2C_incorrect_star_rotation.svg.png" alt="European Union">  European Union</a> </li>
                     </ul>
                     </li--->
          </ul>
          </div--->
       </div>
       </li>
       <!----Language page ends -->
       </ul>
       
    </div>
    </div>
 </nav>
 <!---NAVGATION END--->
 
 <div class="eventprogamheader">
	 
	   <h4>EVOLVE 2024</h4>
	  <h5 style="font-size: 17px;"><b>AI <> Deep-Tech Convergence</b></h5>
	  <h6 >A Global Innovation Summit</h6>
	  <a href="Evolve2024_Program.html" style="display:inline-block">
	Program Details</a>
  </div>

  <div class="global-domain-experts">

	<a data-toggle="collapse" href="#globaldomainexperts" role="button" aria-expanded="false" aria-controls="globaldomainexperts" class="nav-link" style="color:f0f0f0;"> GLOBAL DOMAIN EXPERT NETWORK <a>
	
	<div class="collapse mt-4" id="globaldomainexperts">
		  <div class="card card-body p-2 border-0">
	
			<h2 class="main-font-color mb-0 font-display1"> GLOBAL DOMAIN EXPERT NETWORK <br/><font style="font-size:17px; color:#000; font-weight: 500;">[4,875,331]&nbsp;Last updated March 4, 2024</font></h2>
			<iframe src="https://evolvesv.org/View_Industry_Speakers.asp?industry=ai&sno=227&ititle=AI&ML" class="globaldomainexpertsiframe"></iframe>
		  </div>
		</div>
		<hr class="divider" style="margin-top:22px !important"/>
  </div>

      
      `;


  }

}



customElements.define('header-component', HeaderComponent);







