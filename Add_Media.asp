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
<head>
<%
dim PGreferer
PGreferer = trim(Request.ServerVariables("HTTP_REFERER"))
''response.write "Referer Page = "& PGreferer
%>

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
  <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
  
  <!-- PLUGINS CSS STYLE -->
  <link rel="stylesheet" href="https://www.evolv.cc/plugins/bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="https://www.evolv.cc/plugins/themify-icons/themify-icons.css">
  <!-- CUSTOM CSS -->
  <link href="https://www.evolv.cc/css/style.css" rel="stylesheet">
  <link href="https://www.evolv.cc/css/custome.css" rel="stylesheet">
  
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
				
				//var iSno = rno;			
				var vfirst_name = $("#first_name").val();
				var vlast_name = $("#last_name").val();
				var vcompany = $("#company").val();
				var vtitle = $("#title").val();
				var vemail = $("#email").val();
				var vphone = $("#phone").val();
				var page_source = $("#page_source").val();
				var vLinkedIn = $("#LinkedIn").val();
			 
			 // alert(vReportName);
			 if (vemail != null && vemail != '' )	 
				 {
				 //alert(vReportName);
				  $.ajax({
							url: "Ajax_AddMedia.asp",
							type: "POST",
							data:'vLinkedIn='+encodeURIComponent(vLinkedIn)+'&page_source='+encodeURIComponent(page_source)+'&vphone='+encodeURIComponent(vphone)+'&vemail='+encodeURIComponent(vemail)+'&vtitle='+encodeURIComponent(vtitle)+'&vcompany='+encodeURIComponent(vcompany)+'&vfirst_name='+encodeURIComponent(vfirst_name)+'&vlast_name='+encodeURIComponent(vlast_name)+'',
							success: function(data){
							//alert(data);
							//alert('Thanks for submitting!');
							
							},
							error: function (xhr, ajaxOptions, thrownError) {
							alert(xhr.status);
							alert(thrownError);
							alert(xhr.responseText);
							}
						});
					   
					//window.opener.location.reload(false);
					//window.opener.location.reload()
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
		<div class="w-100 mx-0">
            <div class="col-xl-10 col-lg-9 col-md-12 col-12 mx-auto p-3  ">          


             

              <div class="row mx-0" id="formblock">
                <!-- Fname -->
                <div class="col-sm-6 mb-3 px-1">
                 <span class="floating-label">First Name<span class="text-danger">*</span> </span>
                  <input class="form-control w-100 border-radius-0 " type="text" placeholder="" required="" id="first_name" name="first_name">
                </div>
                <!-- LName -->
                <div class="col-sm-6 mb-3 px-1">
                <span class="floating-label">Last Name<span class="text-danger">*</span> </span>
                  <input class="form-control w-100 border-radius-0" type="text" placeholder="" required="" id="last_name" name="last_name">
                </div>


                                  <!-- Designation -->
                  <div class="col-sm-6 mb-3 px-1">
                   <span class="floating-label">Position<span class="text-danger">*</span> </span>
                  <input class="form-control w-100 border-radius-0" type="text" placeholder="" required="" id="title" name="title">
                </div>
                <!-- company -->
                <div class="col-sm-6 mb-3 px-1">
                  <span class="floating-label">Company<span class="text-danger">*</span> </span>
                  <input class="form-control w-100 border-radius-0" type="text" placeholder="" required="" id="company" name="company">
                </div>

                <div class="col-sm-12 mb-3 px-1">
                        <span class="floating-label">LinkedIn Link <span class="text-danger">*</span> </span>
                        <input class="form-control w-100 border-radius-0" type="text" placeholder="" id="LinkedIn" name="LinkedIn">
                 </div>

                <!-- email -->
                <div class="col-sm-6 mb-3 px-1">
                  <span class="floating-label">Email<span class="text-danger">*</span> </span>
                  <input class="form-control w-100 border-radius-0" type="text" placeholder="" required="" id="email" name="email">
                </div>
                  <!-- phone -->
                <div class="col-sm-6 mb-3 px-1">
                  <input class="form-control w-100 border-radius-0" type="text" placeholder="Phone" id="phone" name="phone">
                </div>
                <p class="text-xl-left text-lg-left ml-2 text-md-left text-sm-left text-center mt-0  mandatory-msg ">Fields marked<span style="color:red">*</span> are mandatory</p>
                <!-- Submit Button -->
								<input type="hidden" name="page_source" id="page_source" value="<%=PGreferer%>">

                <div class="col-12 text-center my-4">
                  <button class="btn btn-main-md mx-auto py-2 px-2 " onclick="SaveData();">Submit</button>
                </div>

              </div>
            
          </div>
          </div>

</body>

</html>