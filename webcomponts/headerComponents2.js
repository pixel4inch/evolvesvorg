class HeaderComponent extends HTMLElement {
  connectedCallback() {
    this.innerHTML = `
     


      <nav class="navbar main-nav navbar-expand-lg px-2 pt-0 pb-2 customeNavBar border-bottom">
      <div class="container">
        <a class="navbar-brand" href="home.html"><img src="images/evolv/logo.svg" "="" alt="Evolv" class="brandImg"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="ti-menu"></span>
        </button>
    
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav ml-auto">
    
         
      <!---- home page start   
    
       <li class="nav-item ">	
    
        <a class="nav-link" href="home.html">HOME</a>
      </li> -->			
      <!---- home page end -->
    
      <!---- ABOUT page start -->	 
    
      <li class="nav-item dropdown @@about  ">
        
              <a class="nav-link dropdown-toggle" href="javascript:void(0)" data-toggle="dropdown">ABOUT
                <span><i class="ti-angle-down"></i></span>
              </a>
              <!-- Dropdown list -->
              <ul class="dropdown-menu">
                <li>			
            
              <a class="dropdown-item @profile " href="profile.html">
            
            PROFILE</a>
          </li>
          
          
          <li>
            
              <a class="dropdown-item @@mission" href="mission.html">	 
                          
            MISSION</a>
          </li>
          <li><a class="dropdown-item @@leadership" href="leadership.html">LEADERSHIP </a></li>
              </ul>
            </li>
    
      <!---- ABOUT page end -->	 
        <li class="nav-item dropdown @@about  ">
          <a class="nav-link dropdown-toggle" href="javascript:void(0)" data-toggle="dropdown">PROGRAMS
            <span><i class="ti-angle-down"></i></span>
          </a>
          <!-- Dropdown list -->
          <ul class="dropdown-menu">
            <li><a class="dropdown-item @startups " href="startups.html">STARTUPS</a></li>
            <li><a class="dropdown-item @@scaleups" href="investorworld.html">INVESTOR WORLD</a></li>
            <li><a class="dropdown-item @@cxo" href="enterpriseconnect.html">ENTERPRISE CONNECT </a></li>
            <li><a class="dropdown-item @@dei" href="dei.html">DIVERSITY EQUITY INCLUSION </a></li>
            <li><a class="dropdown-item @@sustainability" href="sustaiability.html">SUSTAINABILITY </a></li>
            <li><a class="dropdown-item @@genz" href="gen.html">GEN Z </a></li>
            <li><a class="dropdown-item @@impactinvesting" href="impactcsr.html">IMPACT INVESTING &amp; CSR </a></li>
            <li><a class="dropdown-item @@govt" href="govt.html">GOVT</a></li>
          </ul>
          </li>
    
          
      <!---- AWARDS page start -->	 
        
            
        
            <li class="nav-item dropdown @@awards ">	
        
            <a class="nav-link dropdown-toggle" href="javascript:void(0)">AWARDS
    
              <span><i class="ti-angle-down"></i></span>
    
            </a>
    
            <!-- Dropdown list -->
            <ul class="dropdown-menu">
              <li><a class="dropdown-item @topstartups " href="topstartups.html">TOP STARTUPS </a></li>
              <li><a class="dropdown-item @@earlystate" href="earlystate.html"> EVOLV EARLY STAGE 1000 </a></li>
              <li><a class="dropdown-item @@fasttrack" href="fasttrack.html">EVOLV FAST-TRACK 1000 </a></li>
              <li><a class="dropdown-item @@ai" href="ai.html"> EVOLV AI 100 </a></li>
              <li><a class="dropdown-item @@digitalhealth" href="digitalhealth.html"> EVOLV 100 DIGITAL HEALTH </a></li>
              <li><a class="dropdown-item @@evolvgaming" href="evolvgaming.html">EVOLV 100 GAMING</a></li>
              <li><a class="dropdown-item @@cloudsecurity" href="cloudsecurity.html">EVOLV 100 CLOUD SECURITY  </a></li>
              <li><a class="dropdown-item @@evolvagritech" href="evolvagritech.html">EVOLV 100 AGRI TECH </a></li>
              <li><a class="dropdown-item @@edtech" href="edtech.html">EVOLV 100 ED TECH</a></li>
              <li><a class="dropdown-item @@evolvedrones" href="evolvedrones.html"> EVOLV 100 DRONES</a></li>
              <!--li><a class="dropdown-item @@evolvx" href="evolvx.html">EVOLV 100 XXX </a></li>
              <li><a class="dropdown-item @@evolvx" href="evolvx.html">EVOLV 100 XXX </a></li>
              <li><a class="dropdown-item @@evolvx" href="evolvx.html">EVOLV 100 XXX </a></li>
              <li><a class="dropdown-item @@evolvx" href="evolvx.html">EVOLV 100 XXX </a></li>
              <li--><a class="dropdown-item @@evolvx" href="evolvx.html">EVOLV 100 XXX </a></li-->
              
            </ul>
    
    
          </li>
      <!---- AWARDS page ends -->
    
    
            <li class="nav-item dropdown @@calender">
              <a class="nav-link dropdown-toggle" href="javascript:void(0)" data-toggle="dropdown">CALENDAR
                <span><i class="ti-angle-down"></i></span>
              </a>
              <!-- Dropdown list -->
              <ul class="dropdown-menu large">
                <li><a class="dropdown-item @@impact" href="techtrend.html">TECH TRENDS  </a></li>
                <li><a class="dropdown-item @@impact" href="impact.html">IMPACT INVESTING </a></li>
                <li><a class="dropdown-item @@appliedai" href="applied.html">APPLIED AI</a></li>
                <li><a class="dropdown-item @@crazyscience" href="crazy.html">CRAZY SCIENCE  </a></li>
                <li><a class="dropdown-item @@femaleunicorn" href="femaleunicon.html">FEMALE UNICORN FOUNDERS </a></li>
                <li><a class="dropdown-item @@crypto" href="crypto2025.html">CRYPTO 2025+</a></li>
                <li><a class="dropdown-item @@edtech" href="edtech2.html">EDTECH </a></li>
          <li><a class="dropdown-item @@agritech" href="agritech.html">AGRI TECH </a></li>
          <li><a class="dropdown-item @@drones" href="gaming.html"> GAMING   </a></li>
          <li><a class="dropdown-item @@drones" href="drones.html"> DRONES  </a></li>
          <li><a class="dropdown-item @@drones" href="supplychain.html"> SUPPLY CHAIN & LOGISTICS  </a></li>
          
          <li><a class="dropdown-item @@marketing" href="marketingin.html">MARKETING INNOVATIONS  </a></li>
          <li><a class="dropdown-item @@hydrogen" href="hydrogen.html">HYDROGEN  </a></li>
          <li><a class="dropdown-item @@impactinvesting" href="impactinvesting.html">IMPACT INVESTING  </a></li>
          <li><a class="dropdown-item @@sellingtogovts" href="sellingtogovts.html">SELLING TO GOVTS  </a></li>
          <li><a class="dropdown-item @@smartcities" href="smartcities.html">SMART CITIES  </a></li>
          <li><a class="dropdown-item @@impactinvesting" href="productmanagement.html">PRODUCT MANAGEMENT   </a></li>
          <li><a class="dropdown-item @@impactinvesting" href="cx2.html">CX 360   </a></li>
          <li><a class="dropdown-item @@impactinvesting" href="hydrogen.html">HYDROGEN INNOVATIONS  </a></li>
          <li><a class="dropdown-item @@impactinvesting" href="3dprinting.html">3D PRINTING   </a></li>
          <li><a class="dropdown-item @@impactinvesting" href="web.html">WEB 3.0  </a></li>
          <li><a class="dropdown-item @@impactinvesting" href="5g.html">5G  </a></li>
          <li><a class="dropdown-item @@impactinvesting" href="retooling.html">RETOOLING TO THE RECESSION </a></li>
          <li><a class="dropdown-item @@impactinvesting" href="failedstarttup.html">FAILED STARTUP LEARNINGS </a></li>
          <li><a class="dropdown-item @@impactinvesting" href="carboncapture.html">CARBON CAPTURE </a></li>
          <li><a class="dropdown-item @@impactinvesting" href="spacetech.html">SPACETECH </a></li>
          <li><a class="dropdown-item @@impactinvesting" href="robotics.html">ROBOTICS</a></li>
          <li><a class="dropdown-item @@impactinvesting" href="alternateproteins.html">ALTERNATE PROTEINS</a></li>
          <li><a class="dropdown-item @@impactinvesting" href="insurtech.html">INSURTECH</a></li>
          <li><a class="dropdown-item @@impactinvesting" href="biotech.html">BIOTECH</a></li>
          
          
          
          <!--li><a class="dropdown-item @@impactinvesting" href="eventxxx.html">EVENT XXX </a></li-->
    
              </ul>
            </li>
    
    
          <!---- EcoSystem page start -->	 
          
          <li class="nav-item @@G20 ">
          
          <a class="nav-link" href="ecosystems.html">ECOSYSTEMS</a>
          </li>
          <!---- EcoSystem page ends -->
    
    
    
      <!---- gtwenty page start -->	 
          
             <li class="nav-item @@G20 ">
          
            <a class="nav-link" href="gtwenty.html">G20</a>
          </li>
      <!---- gtwenty page ends -->
      
           
    
        <li class="nav-item dropdown @@membership">
        
          <a class="nav-link dropdown-toggle" href="javascript:void(0)" data-toggle="dropdown">MEMBERSHIP
            <span><i class="ti-angle-down"></i></span>
          </a>
          <!-- Dropdown list -->
          <ul class="dropdown-menu">
            <li>
            
            <a class="dropdown-item @@worldpremier" href="world.html">
            
            WORLD PREMIER</a></li>
             <li>
            
            <a class="dropdown-item @@ecocircle" href="eco.html">
                     
             ECO CIRCLE</a></li>	
          </ul>
    </li>
    
    
    
    
    
    
    
      <li class="nav-item dropdown @@influencer">
     
     
         
          <a class="nav-link dropdown-toggle" href="javascript:void(0)" data-toggle="dropdown">INFLUENCERS
            <span><i class="ti-angle-down"></i></span>
          </a>
          
          <ul class="dropdown-menu">
           
           <li>
            
                  <a class="dropdown-item @@enterprise" href="enterprise.html">
             
            ENTERPRISE</a></li>
          
          <li>
             
               <a class="dropdown-item @@entrepreneur" href="entrepreneur.html">
            
               ENTREPRENEUR </a></li>
               
               
            <li>
              
               <a class="dropdown-item @@academia" href="academic.html">
                     
             ACADEMIA </a></li>
             
             <li>
              
               <a class="dropdown-item @@venturecapital" href="venture.html">
             
            VENTURE CAPITAL</a></li>
            <!--li><a class="dropdown-item @@govt" href="turnkey.html">GOVT </a></li>--->
          </ul>
          </li>
          <!----Launagae page start -->	 


    







    <li class="nav-item @@language ">
    <!--a class="nav-link" href="javascript:valid(0)">LANGUAGE</!--a-->
    <!--div id="google_translate_element"></!--div-->

    <div class="ct-topbar">
    
    <ul class="list-unstyled list-inline ct-topbar__list">
      <li class="ct-language">Language <i class="fa fa-arrow-down"></i>
      <ul class="list-unstyled ct-language__dropdown">
      <li><a href="#googtrans(en|es)" class="lang-es lang-select" data-lang="es">
      <img class="flag-img" src="https://www.worldometers.info/img/flags/ar-flag.gif" alt="Argentina"> Argentina</a> </li>
      <li><a href="#googtrans(en|en)" class="lang-es lang-select" data-lang="en">
      <img class="flag-img" src="https://www.worldometers.info/img/flags/as-flag.gif" alt="Australia"> Australia</a> </li>
     
      <li><a href="#googtrans(en|pt)" class="lang-es lang-select" data-lang="pt">
      <img class="flag-img" src="https://www.worldometers.info/img/flags/br-flag.gif" alt="Brizal"> Brazil</a> </li>
      
      
      <li><a href="#googtrans(en|en)" class="lang-es lang-select" data-lang="en">
      <img class="flag-img" src="https://www.worldometers.info/img/flags/ca-flag.gif" alt="Canada">  Canada</a> </li>


      <li><a href="#googtrans(en|zh-CN)" class="lang-es lang-select" data-lang="zh-CN">
      <img class="flag-img" src="https://www.worldometers.info/img/flags/ch-flag.gif" alt="China"> China</a> </li>


      <li><a href="#googtrans(en|fr)" class="lang-es lang-select" data-lang="fr">
      <img class="flag-img" src="https://www.worldometers.info/img/flags/fr-flag.gif" alt="France"> France</a> </li>
     
     
      <li><a href="#googtrans(en|de)" class="lang-es lang-select" data-lang="de">
      <img class="flag-img" src="https://www.worldometers.info/img/flags/small/tn_gm-flag.gif" alt="Germany"> Germany</a> </li>
     
     
      <li><a href="#googtrans(en|hi)" class="lang-es lang-select" data-lang="hi">
      <img class="flag-img" src="https://www.worldometers.info/img/flags/in-flag.gif" alt="India"> India</a> </li>

      <li><a href="#googtrans(en|id)" class="lang-es lang-select" data-lang="id">
      <img class="flag-img" src="https://www.worldometers.info/img/flags/id-flag.gif" alt="Indonesia"> Indonesia</a> </li>
      
      <li><a href="#googtrans(en|it)" class="lang-es lang-select" data-lang="it">
      <img class="flag-img" src="https://www.worldometers.info/img/flags/it-flag.gif" alt="Italy"> Italy</a> </li>
      
      <li><a href="#googtrans(en|ja)" class="lang-es lang-select" data-lang="ja">
      <img class="flag-img" src="https://www.worldometers.info/img/flags/ja-flag.gif" alt="Japan"> Japan</a> </li>
      
      
      <li><a href="#googtrans(en|es)" class="lang-es lang-select" data-lang="es">
      <img class="flag-img" src="https://www.worldometers.info/img/flags/mx-flag.gif" alt="Mexico"> Mexico</a> </li>
      
      
      <li><a href="#googtrans(en|ko)" class="lang-es lang-select" data-lang="ko">
      <img class="flag-img" src="https://www.worldometers.info/img/flags/ks-flag.gif" alt="South Korea"> South Korea</a> </li>
      
      <li><a href="#googtrans(en|ru)" class="lang-es lang-select" data-lang="ru">
      <img class="flag-img" src="https://www.worldometers.info/img/flags/rs-flag.gif" alt="JAPAN"> Russia</a> </li>
     
      <li><a href="#googtrans(en|ar)" class="lang-es lang-select" data-lang="ar">
      <img class="flag-img" src="https://www.worldometers.info/img/flags/sa-flag.gif" alt=" Saudi Arabia">   Saudi Arabia</a> </li>
     
      <li><a href="#googtrans(en|af)" class="lang-es lang-select" data-lang="af">
      <img class="flag-img" src="https://www.worldometers.info/img/flags/sf-flag.gif" alt="Russia">  South Africa</a> </li>
      
      <li><a href="#googtrans(en|tr)" class="lang-es lang-select" data-lang="tr">
      <img class="flag-img" src="https://www.worldometers.info/img/flags/tu-flag.gif" alt="Turkey">  Turkey</a> </li>
     
      <li><a href="#googtrans(en|en)" class="lang-es lang-select" data-lang="en">
      <img class="flag-img" src="https://www.worldometers.info/img/flags/uk-flag.gif" alt="United Kingdom">  United Kingdom</a> </li>
     
      <li><a href="#googtrans(en|en)" class="lang-es lang-select" data-lang="en">
      <img class="flag-img" src="https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Flag_of_the_United_States.png/800px-Flag_of_the_United_States.png?20110131151900" alt="United States">  United States</a> </li>
      
      <li><a href="#googtrans(en|fr)" class="lang-es lang-select" data-lang="fr">
      <img class="flag-img" src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/European_flag%2C_incorrect_star_rotation.svg/225px-European_flag%2C_incorrect_star_rotation.svg.png" alt="European Union">  European Union</a> </li>
      </ul>
      </li>
    </ul>

  </div>
 
</div>

    </li>
    <!----Launagae page ends -->
    


    
    
          </ul>
        </div>
      </div>
    </nav>


      
      `;


  }

}

customElements.define('header-component', HeaderComponent);


