class FooterComponent extends HTMLElement {
	connectedCallback() {
		this.innerHTML = `
      
      
	  <footer>
	  <div class="footer-main">
		<div class="container">
		  <div class="row">
		   
			<div class="col-xl-12 col-1g-12 col-md-12 col-12 mx-auto align-self-center">
				<div class="block">
					<ul class="footerLinks">
					<!--li class="nav-item"><a href="datadashboard.asp" target="_blank" class="nav-link">DATA DASHBOARD</a></li>
						<li class="nav-item"><a href="JoinUs.asp" class="nav-link">JOIN US</a></li>
							<li class="nav-item"><a href="media.html" class="nav-link">MEDIA</a></li>
                                               <li class="nav-item"><a href="insider.html" class="nav-link">INSIDER</a></li-->
											   
						<li class="nav-item"><a href="volunteer.html" class="nav-link">VOLUNTEER</a></li>
						<!--li class="nav-item"><a href="javascript:void(0)" class="nav-link">EXHIBITORS</a></!li-->
						<li class="nav-item"><a href="sponsor.html" class="nav-link">SPONSORS</a></li>
						<!--li class="nav-item"><a href="View_Industry_Speakers.asp?industry=ai&sno=227&ititle=AI&ML" class="nav-link">EXPERT POOL</a></li-->
                                                
						<li class="nav-item"><a href="privacy.html" class="nav-link">PRIVACY POLICY</a></li>
						<li class="nav-item"><a href="serviceagreements.html" class="nav-link">SERVICE AGREEMENT</a></li>	
						
						<li class="nav-item"><a href="CONTACTUS.html" class="nav-link">CONTACT</a></li>			
					  </ul>
				</div>
			</div>
			<div class="col-xl-11 col-1g-12 col-md-12 col-12 mx-auto footer-divider"></div>
			
  
			<!--div class="col-xl-11 col-1g-12 col-md-12 col-12 mx-auto align-self-center mt-4">
			  <div class="block text-center">
				
				<ul class="social-icon list-inline">
  
					
					<li class="list-inline-item">
						<a href="javascript:valid(0)" target="_blank"  >
 <img src="./images/evolv/Social_Icons/LinkedIn.png" class="img-fluid social-icons" /></a>
					  </li>
				  <li class="list-inline-item">
					<a href="javascript:valid(0)" target="_blank"><img src="./images/evolv/Social_Icons/Facbook.png" class="img-fluid social-icons"/></a>
				  </li>
				  <li class="list-inline-item">
					<a href="javascript:valid(0)" target="_blank"><img src="./images/evolv/Social_Icons/Twitter.png" class="img-fluid social-icons"/></a>
				  </li>
				 
				  <li class="list-inline-item">
					<a href="javascript:valid(0)" target="_blank"><img src="./images/evolv/Social_Icons/Youtube.png " class="img-fluid social-icons"/></a>
				  </li>
				</ul>
			  </div>
			</div-->
			
			<!---div class="col-xl-11 col-1g-12 col-md-12 col-12 mx-auto align-self-center mt-0">
			  <div class=" text-center nav-link"> 
					<p class="font-weight-bold" style="color:#322975">ANCHOR</p> 
					<img src="images/evolv/cii.png" "="" alt="Evolve Foundation" style="width:130px" class=" text-center mx-auto">
				</div>
			</div--->
			
		  </div>
		</div>
	  </div>
	  <div class="text-center py-1 footer-copyright">
		<small class="text-secondary text-dark ">Copyright &copy; 2024 Evolve Silicon Valley Foundation, All Rights Reserved.</small>
	  </div>
	</footer>

      
      
      
      
      `;
	}
}

customElements.define('footer-component', FooterComponent);