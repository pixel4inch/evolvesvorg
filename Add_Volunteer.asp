<!DOCTYPE html>
  <%@Language="VBScript"%>
<!--
 // WEBSITE: https://themefisher.com
 // TWITTER: https://twitter.com/themefisher
 // FACEBOOK: https://www.facebook.com/themefisher
 // GITHUB: https://github.com/themefisher/
-->
 <!---WEB COMPONETNS-->
  <script src="./webcomponts/headerComponents.js"></script>
  <script src="./webcomponts/FooterComponent.js"></script>
  <script src="./webcomponts/ScrollToTop.js"></script>
  <script src="./webcomponts/dummytext.js"></script>
<html lang="en">

<%
dim PGreferer
PGreferer = trim(Request.ServerVariables("HTTP_REFERER"))
''response.write "Referer Page = "& PGreferer
%>
<head>

  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
  
  <!-- PLUGINS CSS STYLE -->
  <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="plugins/themify-icons/themify-icons.css">
  <!-- CUSTOM CSS -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/custome.css" rel="stylesheet">
  
  <script src="https://code.jquery.com/jquery-2.1.1.min.js" type="text/javascript"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>.clsmandatory{
    position: absolute !important;
    left: 10px;
    top: 8px;
    font-weight: bold;
    color:red !important;

	.formmandatory {
    position: absolute;
    left: 10px;
    top: 5px;
    color: red;
    font-size: 13px;
}

}</style>
<script>
function SaveData(){ 		
			
			var vfirst_name = $("#first_name").val();
			var vlast_name = $("#last_name").val();
			var vemail = $("#email").val();
			var vphone = $("#phone").val();
		
			var vlnkedin = $("#lnkedin").val();
			var vlocation= $("#location").val();		
	
			var vchkAinperson = $('#chkAinPerson').is(":checked");
			var vchkAVirtual = $('#chkAVirtual').is(":checked");
			var vchkAroadshow = $('#chkAroadshow').is(":checked");
			
			
			var vchkSinperson = $('#chkSinperson').is(":checked");
			var vchkSVirtual = $('#chkSVirtual').is(":checked");
			var vchkSroadshow = $('#chkSroadshow').is(":checked");
			
			var vInnovatorSummit = $('#InnovatorSummit').is(":checked");
		    var page_source = $("#page_source").val();
                
			
			
			if (vemail != null && vemail != '')		 
			{			
			  	alert(vchkSinperson+"NEW"); 				
				$.ajax({
						url: "Ajax_AddVolunteer_New.asp",
						type: "POST",
						data:'vchkSroadshow='+encodeURIComponent(vchkSroadshow)+'&vchkSinperson='+encodeURIComponent(vchkSinperson)+'&vchkSVirtual='+encodeURIComponent(vchkSVirtual)+'&vchkAroadshow='+encodeURIComponent(vchkAroadshow)+'&vchkAinperson='+encodeURIComponent(vchkAinperson)+'&vchkAVirtual='+encodeURIComponent(vchkAVirtual)+'&vInnovatorSummit='+encodeURIComponent(vInnovatorSummit)+'&page_source='+encodeURIComponent(page_source)+'&vphone='+encodeURIComponent(vphone)+'&vemail='+encodeURIComponent(vemail)+'&vlocation='+encodeURIComponent(vlocation)+'&vlnkedin='+encodeURIComponent(vlnkedin)+'&vfirst_name='+encodeURIComponent(vfirst_name)+'&vlast_name='+encodeURIComponent(vlast_name)+'',
						//data:'vemail='+encodeURIComponent(vemail)+'',
						success: function(data){
						//alert(data);
						if(data == 'ADD')
						{
						alert('Thank you for applying. We will respond by email within 3-4 business days.');
						}
						else
						{
						alert('Thank you for applying. We have your registration already. We will respond by email soon.');
						}
						
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
			alert("values can't be left blank");			  
			}  
	}		
			
</script>
</head> 

<body class="body-wrapper d-flex align-items-center" data-spy="scroll" data-target=".privacy-nav">


				
		<!-- Content -->
		<div id="div1"></div>
		<div class="w-100 mt-5">
			<form  id="formblock">
				<div class="row mx-0">
					<!-- First Name -->
					<div class="col-sm-6 mb-3 p-1">
						<span class="floating-label">First Name<span class="text-danger">*</span> </span>
						<input class="form-control main mb-1 " type="text" placeholder="" id="first_name" name="first_name" required="">
					</div>
					<!-- Last Name -->
					<div class="col-sm-6 mb-3 p-1">
						<span class="floating-label">Last Name<span class="text-danger">*</span> </span>
						<input class="form-control main mb-1" type="text" placeholder="" id="last_name" name="last_name" required="">
					</div>
					<!-- Email -->
					<div class="col-sm-6 mb-3 p-1">
						<span class="floating-label">Work Email<span class="text-danger">*</span> </span>
						<input class="form-control main mb-1" type="email" placeholder="  " id="email" name="email" required="">
					</div>
					<!-- Mobile Phone -->
					<div class="col-sm-6 mb-3 p-1">
							<span class="floating-label">Mobile Phone </span>
						<input class="form-control main mb-1" type="number" placeholder="" id="phone" name="phone" required="">
					</div>
					<!--LinkedIn Link-->
					<div class="col-sm-12 mb-3 p-1">
					<span class="floating-label">LinkedIn Link<span class="text-danger">*</span> </span>
						<input class="form-control main mb-1" type="text" placeholder="" id="lnkedin" name="lnkedin" required="">
					</div>
					<!--LinkedIn Link-->
					<div class="col-sm-12 mb-3 p-1">
						<span class="floating-label">Location (Country & City)<span class="text-danger">*</span> </span>
						<input class="form-control main mb-1" type="text" placeholder="" id="location" name="location" required="">
					</div>
					
					<div class="col-sm-12 mb-3 p-1 mt-1">
						<div class="ml-1">
						<label class="form-check-label font-weight-bold" for="exampleCheck1">ANNUAL INTERNSHIP</label>
						</div>
						<div class="ml-4">
							<input type="checkbox" class="form-check-input" id="chkAinPerson" name="chkAinPerson">
							<label class="form-check-label  ml-2" for="exampleCheck1">IN-PERSON</label>
							</div>
						<div class="ml-4">
							<input type="checkbox" class="form-check-input" id="chkAVirtual" name="chkAVirtual">
							<label class="form-check-label  ml-2" for="exampleCheck1">VIRTUAL</label>
							</div>
							<div class="ml-4">
						<!--input type="checkbox" class="form-check-input" id="chkAroadshow" name="chkAroadshow"-->
						<label class="form-check-labe ml-2" for="exampleCheck1"> EVOLVE 2024 PROGRAMS WORLDWIDE</label>
						</div>
					</div>
					
					<!--div class="col-sm-12 mb-3 p-1 mb-2 ">
						
					</div-->
					
					<div class="col-sm-12 mb-3 p-1 mt-1">
						<div class="ml-1">
						<label class="form-check-label font-weight-bold" for="exampleCheck1">SUMMER INTERNSHIP</label>
						</div>
						<div class="ml-4">
							<input type="checkbox" class="form-check-input" id="chkSinperson" name="chkSinperson">
							<label class="form-check-label  ml-2" for="exampleCheck1">IN-PERSON</label>
							</div>
						<div class="ml-4">
							<input type="checkbox" class="form-check-input" id="chkSVirtual" name="chkSVirtual">
							<label class="form-check-label  ml-2" for="exampleCheck1">VIRTUAL</label>
							</div>
							<div class="ml-4">
						<!--input type="checkbox" class="form-check-input" id="chkSroadshow" name="chkSroadshow"-->
						<label class="form-check-labe ml-2" for="exampleCheck1"> EVOLVE 2024 ANNUAL TECHNOLOGY CONFERENCE</br>
						SEPTEMBER 2024, SILICON VALLEY, CALIFORNIA</label>
						</div>
					</div>
					
					

					<input type="hidden" name="page_source" id="page_source" value="<%=PGreferer%>">
					<!-- Submit Button -->
					<div class="col-12 text-center">
						<button class="btn btn-main-md mx-auto py-2 px-2 my-4" onclick="SaveData()">Submit</button>
					</div>
					<p class="text-left  ml-2 mandatory-msg">Fields marked with <span style="color:red">*</span> are mandatory</p>
				</div>
			</form>
		</div>
  <script>
           /* let form = document.getElementsByTagName("form")[0];
                form.addEventListener("submit", (e) => {
                e.preventDefault();
                alert("Thank you for applying. We will respond by email within 3-4 business days. ");
                });*/
 </script>

</body>

</html>