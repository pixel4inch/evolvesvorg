<!DOCTYPE html>

<html lang="en">

<head>

  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>Recognition - Evolve Foundation</title>

  <!-- Mobile Specific Metas
  ================================================== -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="Evolve Foundation">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
  <meta name="author" content="Evolve Foundation ">
  <meta name="generator" content="Evolve Foundation">

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

 <!-- JAVASCRIPTS -->
  <script src="plugins/jquery/jquery.min.js"></script>
  <script src="plugins/bootstrap/bootstrap.min.js"></script>
  <script src="plugins/slick/slick.min.js"></script>
  <script src="plugins/fancybox/jquery.fancybox.min.js"></script>
  <script src="plugins/syotimer/jquery.syotimer.min.js"></script>
  <script src="plugins/aos/aos.js"></script>
    <script src="./js/imageload.js"></script>


  <!-- CUSTOM CSS -->
  <link href="css/style.css" rel="stylesheet" />
  <link href="css/custome.css" rel="stylesheet" />
  <link href="./plugins/jsvectormap-master/dist/css/jsvectormap.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
<%
		Function GetNewGenImageName()
					Dim intMax, iLoop, k, intValue, strChar, strName, intNum

					' Specify the alphabet of characters to use.
					Const Chars = "abcdefghijklmnopqrstuvwxyz123456789"

					' Specify length of names.
					intMax = 6

					' Specify number of names to generate.
					intNum = 1

					Randomize()
					For iLoop = 1 To intNum
						strName = ""
						For k = 1 To intMax
							' Retrieve random digit between 0 and 29 (26 possible characters).
							intValue = Fix(35 * Rnd())
							' Convert to character in allowed alphabet.
							strChar = Mid(Chars, intValue + 1, 1)
							' Build the name.
							strName = strName & strChar
						Next

					' Number of Integers can be specified here

						GetNewGenImageName = strName & Int( ( 7789 - 7 + 889 ) * Rnd + 999 )
					Next 
			
			End Function

%>

  <!---WEB COMPONETNS-->
  <script src="./webcomponts/headerComponents.js"></script>
  <script src="./webcomponts/FooterComponent.js"></script>
  <script src="./webcomponts/ScrollToTop.js"></script>
  <script src="./webcomponts/dummytext.js"></script>
  
  <script> 
        function fileValidation() { 
            var fileInput =  
                document.getElementById('file'); 

             const fi = document.getElementById('file'); 
            var filePath = fileInput.value; 
           //alert(filePath);
            // Allowing file type
				const fsize = fi.files[0].size; 
                const filesize = Math.round((fsize / 1024)).toFixed(2); 
             // alert(filesize);
			 // alert(files);
            var allowedExtensions =  
                    /(\.jpg)$/i; 
              
            if (!allowedExtensions.exec(filePath)) { 
                alert('Please upload .jpg file & size must be lesser than 4mb'); 
                fileInput.value = ''; 
                return false; 
            } // The size of the file. 
            else if (filesize >= 4096) { 
                    alert("File too Big, please select a file less than 4mb"); 
                } 
			//else if (filesize < 2048) { 
                    //alert("File too small, please select a file greater than 2mb"); 
                 //} 
           else  
            { 
              
                // Image preview 
                if (fileInput.files && fileInput.files[0]) { 
                    var reader = new FileReader(); 
					
                    reader.onload = function(e) { 
                        document.getElementById( 
                            'imagePreview').innerHTML =  
                            '<img width=150px height=120px src="' + e.target.result 
                            + '"/>'; 
                    }; 
                      
                    reader.readAsDataURL(fileInput.files[0]); 
                } 
            } 
        } 
    </script> 
<script>
function SavePower_Women_inTech(){              
		    
			//var iSno = rno;	
			var vSource_Page = '2023 POWER LISTS & RECOGNITIONS';
			var vSource_Type = $("#txtSource").val();
			if(vSource_Type == "WOMEN")
						{
						  vSource_Type= 'EVOLV™ POWER WOMEN IN TECH' ;
						}			  
						  else
						{
						  vSource_Type= 'EVOLV™ 1000 GLOBAL INFLUENCERS' ;
						}
			
			
	      
			var vFirst_Name = $("#txtFirst_Name").val();
			var vLast_Name = $("#txtLast_Name").val();
			
			var vLinkedin = $("#txtLinkedin").val();
			var vPosition = $("#txtPosition").val();
			var vCompany = $("#txtCompany").val();
			var vEmail = $("#txtEmail").val();
			var vCountry = $("#txtCountry").val();
		
			var vI_know_the_nominee =  $('#txtI_know_the_nominee').is(':checked'); 
			var vExplain_is_deserving = $("#txtExplain_is_deserving").val();
			//var vcollapseGroup = $("input[type='radio']:checked").val();
				//alert(vI_know_the_nominee);	
		 if (vEmail != null && vEmail != '' )	 
			 {
			 //alert(vReportName);
			  $.ajax({
						url: "Ajax_AddPower_Women_inTech.asp",
						type: "POST",						data:'vEmail='+encodeURIComponent(vEmail)+'&vFirst_Name='+encodeURIComponent(vFirst_Name)+'&vLast_Name='+encodeURIComponent(vLast_Name)+'&vLinkedin='+encodeURIComponent(vLinkedin)+'&vPosition='+encodeURIComponent(vPosition)+'&vCompany='+encodeURIComponent(vCompany)+'&vCountry='+encodeURIComponent(vCountry)+'&vI_know_the_nominee='+encodeURIComponent(vI_know_the_nominee)+'&vExplain_is_deserving='+encodeURIComponent(vExplain_is_deserving)+'&vSource_Type='+encodeURIComponent(vSource_Type)+'&vSource_Page='+encodeURIComponent(vSource_Page)+'',
						success: function(data){
						//alert(data);
						alert('Thanks for submitting!');					
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

<body class="body-wrapper" data-spy="scroll" data-target=".privacy-nav">


<div class="row mx-0 w-100 mt-3" id="formblock">
					
					<div class=" col-12 ml-4  pl-1 pb-2 d-flex align-items-center  justify-content-start mb-2">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1"  data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample" style="width: 12px !important; height: 12px !important;">
                            <label class="form-check-labe ml-0 mb-0 mt-2" for="exampleCheck1" style="color:#a1a1a4; font-size:13px">Upload Photo</label>
                     </div>
		  
		  
					 <div class="collapse  w-100 mb-3 mx-2" id="collapseExample" style="">
						<div class="col-6 ">
						<div class="row position-relative d-flex align-items-center"> 
               
                 <!--form action="#"-->

              <div class="row position-relative d-flex align-items-center"> 
                <div class="w-100 medium-2 large-2 columns text-center ">
                  <div class="circle mx-auto">
                    <img class="profile-pic" src="https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png?20150327203541">
                  </div>
                 <div class="row mx-0">
				 <%
				 session("Inf_image")=Trim(GetNewGenImageName()) %>
                                        <div class="form-group">                                           
											<form method="post" action="upload_Image.asp?RID=<%=Trim(session("Inf_image"))%>"  ENCTYPE="multipart/form-data" id="myform" class="d-flex flex-column ">														
								<input type="file" id="file" style="font-size:10px; width:70px; height:20px" name="file" class="form-control-file ml-3"  tabindex="9" onchange="return fileValidation()" >
															<div class="d-flex mt-1 flex-column">
										<input type="submit" class="form-control-file ml-3 " style="font-size:10px; width:70px; height:20px" value="Upload" id="but_upload" >  
										<span class="text-danger ml-3"><small style="font-size:10px">.jpg, .png</small></span>
										</div>
														
											</form>
                                        </div>
                                    </div>
				  
				
               </div>

               
             <!--/form-->
			 </div>
				

			  </div>
						</div>
		  </div>
		 			
  <form action="recognitions.asp?Source=<%=request("Source")%>" method="POST" id="formblock" class="row mx-0">
<input type="hidden" id="txtSource" name="txtSource" value="<%=request("Source")%>">
<div class="col-sm-6 mb-3 px-1">
                        <input class="form-control w-100 border-radius-0 " id="txtFirst_Name" name="txtFirst_Name" type="text" required="">
                        <span class="floating-label">
              First Name <span class="text-danger">*</span> </span>
                    </div>
                    <div class="col-sm-6 mb-3 px-1">
                        <input class="form-control w-100 border-radius-0 " id="txtLast_Name" name="txtLast_Name" type="text" required="">
                        <span class="floating-label">
                         Last Name <span class="text-danger">*</span> </span>
                    </div>
					

                    <div class="col-sm-6 mb-2 px-1">
                        <input class="form-control w-100 border-radius-0 " id="txtLinkedin" name="txtLinkedin" type="text" required="">
                        <span class="floating-label">
                        LinkedIn Link <span class="text-danger">*</span> </span>
                    </div>
                    <div class="col-sm-6 mb-2 px-1">
                        <input class="form-control w-100 border-radius-0 " id="txtPosition" name="txtPosition" type="text" required="">
                        <span class="floating-label">
                        Position <span class="text-danger">*</span> </span>
                    </div>
					
					<!----COMPANY LOGO----->
					
						
					<div class=" col-12 ml-4  pl-1 pb-2 d-flex align-items-center  justify-content-start mb-3">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1"  data-toggle="collapse" href="#collapseExample2" role="button" aria-expanded="false" aria-controls="collapseExample" style="width: 12px !important; height: 12px !important;">
                            <label class="form-check-labe ml-0 mb-0 mt-2" for="exampleCheck1" style="color:#a1a1a4; font-size:13px">Upload Company Logo</label>
                     </div>
		  
  
					 <div class="collapse  w-100 mb-3 mx-2" id="collapseExample2" style="">
						<div class="w-100">
						<div class="row position-relative d-flex align-items-center"> 
                <%
				 session("cmp_image")=Trim(GetNewGenImageName()) %>
              

              <div class=" position-relative d-flex align-items-center"> 
                <div class=" medium-2 large-2 columns text-center ">
                  <div class="circle mx-auto">
                     <img class="profile-pic" src="images/evolv/logo_placeholder.jpg">
                  </div>
                  <div class="p-image">
                  	 <!--i class="fa fa-camera upload-button"></i>
                     <input class="file-upload" type="file" accept="image/*"/-->					 
				
                    <div class="form-group">                                           
											<form method="post" action="upload_Image1.asp?RID=<%=Trim(session("cmp_image"))%>"  ENCTYPE="multipart/form-data" id="myform" class="d-flex flex-column ">														
								<input type="file" id="file1" style="font-size:10px; width:70px; height:20px" name="file1" class="form-control-file ml-3"  tabindex="9" onchange="return fileValidation1()" >
															<div class="d-flex mt-1 flex-column">
										<input type="submit" class="form-control-file ml-3 " style="font-size:10px; width:70px; height:20px" value="Upload" id="but_upload1" >  
										<span class="text-danger ml-3"><small style="font-size:10px">.jpg, .png</small></span>
										</div>
														
											</form>
                      </div>
					 
					 
                  </div>
				  
				  <small style="font-size:10px">.jpg, .png</small>
               </div>

               
           
			 </div>
				

			  </div>
						</div>
		  </div>
					
					
					<!----cOMPANY LOGO----->
					
					
					

                    <div class="col-sm-6 mb-3 px-1">
                        <input class="form-control w-100 border-radius-0 " id="txtCompany" name="txtCompany" type="text" required="">
                        <span class="floating-label">
                            Company <span class="text-danger">*</span> </span>
                    </div>
                    <div class="col-sm-6 mb-3 px-1">
                        <input class="form-control w-100 border-radius-0 " id="txtEmail" name="txtEmail" type="email" required="">
                        <span class="floating-label">
                            Email <span class="text-danger">*</span> </span>
                    </div>
                    <div class="col-sm-12 mb-3 px-1">
					<span class="floating-label">
                            Country </span>
                        <select id="txtCountry" name="txtCountry" class="form-control">
                            <option value="Afghanistan"></option>
                            <option value="Afghanistan">Afghanistan</option>
                            <option value="Åland Islands">Åland Islands</option>
                            <option value="Albania">Albania</option>
                            <option value="Algeria">Algeria</option>
                            <option value="American Samoa">American Samoa</option>
                            <option value="Andorra">Andorra</option>
                            <option value="Angola">Angola</option>
                            <option value="Anguilla">Anguilla</option>
                            <option value="Antarctica">Antarctica</option>
                            <option value="Antigua and Barbuda">Antigua and Barbuda</option>
                            <option value="Argentina">Argentina</option>
                            <option value="Armenia">Armenia</option>
                            <option value="Aruba">Aruba</option>
                            <option value="Australia">Australia</option>
                            <option value="Austria">Austria</option>
                            <option value="Azerbaijan">Azerbaijan</option>
                            <option value="Bahamas">Bahamas</option>
                            <option value="Bahrain">Bahrain</option>
                            <option value="Bangladesh">Bangladesh</option>
                            <option value="Barbados">Barbados</option>
                            <option value="Belarus">Belarus</option>
                            <option value="Belgium">Belgium</option>
                            <option value="Belize">Belize</option>
                            <option value="Benin">Benin</option>
                            <option value="Bermuda">Bermuda</option>
                            <option value="Bhutan">Bhutan</option>
                            <option value="Bolivia">Bolivia</option>
                            <option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option>
                            <option value="Botswana">Botswana</option>
                            <option value="Bouvet Island">Bouvet Island</option>
                            <option value="Brazil">Brazil</option>
                            <option value="British Indian Ocean Territory">British Indian Ocean Territory</option>
                            <option value="Brunei Darussalam">Brunei Darussalam</option>
                            <option value="Bulgaria">Bulgaria</option>
                            <option value="Burkina Faso">Burkina Faso</option>
                            <option value="Burundi">Burundi</option>
                            <option value="Cambodia">Cambodia</option>
                            <option value="Cameroon">Cameroon</option>
                            <option value="Canada">Canada</option>
                            <option value="Cape Verde">Cape Verde</option>
                            <option value="Cayman Islands">Cayman Islands</option>
                            <option value="Central African Republic">Central African Republic</option>
                            <option value="Chad">Chad</option>
                            <option value="Chile">Chile</option>
                            <option value="China">China</option>
                            <option value="Christmas Island">Christmas Island</option>
                            <option value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</option>
                            <option value="Colombia">Colombia</option>
                            <option value="Comoros">Comoros</option>
                            <option value="Congo">Congo</option>
                            <option value="Congo, The Democratic Republic of The">Congo, The Democratic Republic of The</option>
                            <option value="Cook Islands">Cook Islands</option>
                            <option value="Costa Rica">Costa Rica</option>
                            <option value="Cote D'ivoire">Cote D'ivoire</option>
                            <option value="Croatia">Croatia</option>
                            <option value="Cuba">Cuba</option>
                            <option value="Cyprus">Cyprus</option>
                            <option value="Czech Republic">Czech Republic</option>
                            <option value="Denmark">Denmark</option>
                            <option value="Djibouti">Djibouti</option>
                            <option value="Dominica">Dominica</option>
                            <option value="Dominican Republic">Dominican Republic</option>
                            <option value="Ecuador">Ecuador</option>
                            <option value="Egypt">Egypt</option>
                            <option value="El Salvador">El Salvador</option>
                            <option value="Equatorial Guinea">Equatorial Guinea</option>
                            <option value="Eritrea">Eritrea</option>
                            <option value="Estonia">Estonia</option>
                            <option value="Ethiopia">Ethiopia</option>
                            <option value="Falkland Islands (Malvinas)">Falkland Islands (Malvinas)</option>
                            <option value="Faroe Islands">Faroe Islands</option>
                            <option value="Fiji">Fiji</option>
                            <option value="Finland">Finland</option>
                            <option value="France">France</option>
                            <option value="French Guiana">French Guiana</option>
                            <option value="French Polynesia">French Polynesia</option>
                            <option value="French Southern Territories">French Southern Territories</option>
                            <option value="Gabon">Gabon</option>
                            <option value="Gambia">Gambia</option>
                            <option value="Georgia">Georgia</option>
                            <option value="Germany">Germany</option>
                            <option value="Ghana">Ghana</option>
                            <option value="Gibraltar">Gibraltar</option>
                            <option value="Greece">Greece</option>
                            <option value="Greenland">Greenland</option>
                            <option value="Grenada">Grenada</option>
                            <option value="Guadeloupe">Guadeloupe</option>
                            <option value="Guam">Guam</option>
                            <option value="Guatemala">Guatemala</option>
                            <option value="Guernsey">Guernsey</option>
                            <option value="Guinea">Guinea</option>
                            <option value="Guinea-bissau">Guinea-bissau</option>
                            <option value="Guyana">Guyana</option>
                            <option value="Haiti">Haiti</option>
                            <option value="Heard Island and Mcdonald Islands">Heard Island and Mcdonald Islands</option>
                            <option value="Holy See (Vatican City State)">Holy See (Vatican City State)</option>
                            <option value="Honduras">Honduras</option>
                            <option value="Hong Kong">Hong Kong</option>
                            <option value="Hungary">Hungary</option>
                            <option value="Iceland">Iceland</option>
                            <option value="India">India</option>
                            <option value="Indonesia">Indonesia</option>
                            <option value="Iran, Islamic Republic of">Iran, Islamic Republic of</option>
                            <option value="Iraq">Iraq</option>
                            <option value="Ireland">Ireland</option>
                            <option value="Isle of Man">Isle of Man</option>
                            <option value="Israel">Israel</option>
                            <option value="Italy">Italy</option>
                            <option value="Jamaica">Jamaica</option>
                            <option value="Japan">Japan</option>
                            <option value="Jersey">Jersey</option>
                            <option value="Jordan">Jordan</option>
                            <option value="Kazakhstan">Kazakhstan</option>
                            <option value="Kenya">Kenya</option>
                            <option value="Kiribati">Kiribati</option>
                            <option value="Korea, Democratic People's Republic of">Korea, Democratic People's Republic of</option>
                            <option value="Korea, Republic of">Korea, Republic of</option>
                            <option value="Kuwait">Kuwait</option>
                            <option value="Kyrgyzstan">Kyrgyzstan</option>
                            <option value="Lao People's Democratic Republic">Lao People's Democratic Republic</option>
                            <option value="Latvia">Latvia</option>
                            <option value="Lebanon">Lebanon</option>
                            <option value="Lesotho">Lesotho</option>
                            <option value="Liberia">Liberia</option>
                            <option value="Libyan Arab Jamahiriya">Libyan Arab Jamahiriya</option>
                            <option value="Liechtenstein">Liechtenstein</option>
                            <option value="Lithuania">Lithuania</option>
                            <option value="Luxembourg">Luxembourg</option>
                            <option value="Macao">Macao</option>
                            <option value="Macedonia, The Former Yugoslav Republic of">Macedonia, The Former Yugoslav Republic of</option>
                            <option value="Madagascar">Madagascar</option>
                            <option value="Malawi">Malawi</option>
                            <option value="Malaysia">Malaysia</option>
                            <option value="Maldives">Maldives</option>
                            <option value="Mali">Mali</option>
                            <option value="Malta">Malta</option>
                            <option value="Marshall Islands">Marshall Islands</option>
                            <option value="Martinique">Martinique</option>
                            <option value="Mauritania">Mauritania</option>
                            <option value="Mauritius">Mauritius</option>
                            <option value="Mayotte">Mayotte</option>
                            <option value="Mexico">Mexico</option>
                            <option value="Micronesia, Federated States of">Micronesia, Federated States of</option>
                            <option value="Moldova, Republic of">Moldova, Republic of</option>
                            <option value="Monaco">Monaco</option>
                            <option value="Mongolia">Mongolia</option>
                            <option value="Montenegro">Montenegro</option>
                            <option value="Montserrat">Montserrat</option>
                            <option value="Morocco">Morocco</option>
                            <option value="Mozambique">Mozambique</option>
                            <option value="Myanmar">Myanmar</option>
                            <option value="Namibia">Namibia</option>
                            <option value="Nauru">Nauru</option>
                            <option value="Nepal">Nepal</option>
                            <option value="Netherlands">Netherlands</option>
                            <option value="Netherlands Antilles">Netherlands Antilles</option>
                            <option value="New Caledonia">New Caledonia</option>
                            <option value="New Zealand">New Zealand</option>
                            <option value="Nicaragua">Nicaragua</option>
                            <option value="Niger">Niger</option>
                            <option value="Nigeria">Nigeria</option>
                            <option value="Niue">Niue</option>
                            <option value="Norfolk Island">Norfolk Island</option>
                            <option value="Northern Mariana Islands">Northern Mariana Islands</option>
                            <option value="Norway">Norway</option>
                            <option value="Oman">Oman</option>
                            <option value="Pakistan">Pakistan</option>
                            <option value="Palau">Palau</option>
                            <option value="Palestinian Territory, Occupied">Palestinian Territory, Occupied</option>
                            <option value="Panama">Panama</option>
                            <option value="Papua New Guinea">Papua New Guinea</option>
                            <option value="Paraguay">Paraguay</option>
                            <option value="Peru">Peru</option>
                            <option value="Philippines">Philippines</option>
                            <option value="Pitcairn">Pitcairn</option>
                            <option value="Poland">Poland</option>
                            <option value="Portugal">Portugal</option>
                            <option value="Puerto Rico">Puerto Rico</option>
                            <option value="Qatar">Qatar</option>
                            <option value="Reunion">Reunion</option>
                            <option value="Romania">Romania</option>
                            <option value="Russian Federation">Russian Federation</option>
                            <option value="Rwanda">Rwanda</option>
                            <option value="Saint Helena">Saint Helena</option>
                            <option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option>
                            <option value="Saint Lucia">Saint Lucia</option>
                            <option value="Saint Pierre and Miquelon">Saint Pierre and Miquelon</option>
                            <option value="Saint Vincent and The Grenadines">Saint Vincent and The Grenadines</option>
                            <option value="Samoa">Samoa</option>
                            <option value="San Marino">San Marino</option>
                            <option value="Sao Tome and Principe">Sao Tome and Principe</option>
                            <option value="Saudi Arabia">Saudi Arabia</option>
                            <option value="Senegal">Senegal</option>
                            <option value="Serbia">Serbia</option>
                            <option value="Seychelles">Seychelles</option>
                            <option value="Sierra Leone">Sierra Leone</option>
                            <option value="Singapore">Singapore</option>
                            <option value="Slovakia">Slovakia</option>
                            <option value="Slovenia">Slovenia</option>
                            <option value="Solomon Islands">Solomon Islands</option>
                            <option value="Somalia">Somalia</option>
                            <option value="South Africa">South Africa</option>
                            <option value="South Georgia and The South Sandwich Islands">South Georgia and The South Sandwich Islands</option>
                            <option value="Spain">Spain</option>
                            <option value="Sri Lanka">Sri Lanka</option>
                            <option value="Sudan">Sudan</option>
                            <option value="Suriname">Suriname</option>
                            <option value="Svalbard and Jan Mayen">Svalbard and Jan Mayen</option>
                            <option value="Swaziland">Swaziland</option>
                            <option value="Sweden">Sweden</option>
                            <option value="Switzerland">Switzerland</option>
                            <option value="Syrian Arab Republic">Syrian Arab Republic</option>
                            <option value="Taiwan">Taiwan</option>
                            <option value="Tajikistan">Tajikistan</option>
                            <option value="Tanzania, United Republic of">Tanzania, United Republic of</option>
                            <option value="Thailand">Thailand</option>
                            <option value="Timor-leste">Timor-leste</option>
                            <option value="Togo">Togo</option>
                            <option value="Tokelau">Tokelau</option>
                            <option value="Tonga">Tonga</option>
                            <option value="Trinidad and Tobago">Trinidad and Tobago</option>
                            <option value="Tunisia">Tunisia</option>
                            <option value="Turkey">Turkey</option>
                            <option value="Turkmenistan">Turkmenistan</option>
                            <option value="Turks and Caicos Islands">Turks and Caicos Islands</option>
                            <option value="Tuvalu">Tuvalu</option>
                            <option value="Uganda">Uganda</option>
                            <option value="Ukraine">Ukraine</option>
                            <option value="United Arab Emirates">United Arab Emirates</option>
                            <option value="United Kingdom">United Kingdom</option>
                            <option value="United States">United States</option>
                            <option value="United States Minor Outlying Islands">United States Minor Outlying Islands</option>
                            <option value="Uruguay">Uruguay</option>
                            <option value="Uzbekistan">Uzbekistan</option>
                            <option value="Vanuatu">Vanuatu</option>
                            <option value="Venezuela">Venezuela</option>
                            <option value="Viet Nam">Viet Nam</option>
                            <option value="Virgin Islands, British">Virgin Islands, British</option>
                            <option value="Virgin Islands, U.S.">Virgin Islands, U.S.</option>
                            <option value="Wallis and Futuna">Wallis and Futuna</option>
                            <option value="Western Sahara">Western Sahara</option>
                            <option value="Yemen">Yemen</option>
                            <option value="Zambia">Zambia</option>
                            <option value="Zimbabwe">Zimbabwe</option>
                        </select>
                    </div>
                    <div class="col-sm-12 mb-0 p-1 mt-0 pb-2 ">
                        <div class="d-flex justify-content-start align-items-center">
                          <input type="checkbox" class="ml-2" id="txtI_know_the_nominee" name="txtI_know_the_nominee" value="Y" checked>
                          <p class="mb-0 ml-2">I know the nominee well professionally or personally.</p>
                        </div>
                    </div>

                   
                    <div class="col-sm-12 mb-0 p-1 mt-0 pb-2 ">
                     <p class="mb-0 ml-2"> Explain why this nominee is deserving of such a recognition.<span class="text-danger">*</span></p>
                    </div>
                    <div class="col-sm-12 mb-1 px-1">
                        <textarea rows="4" cols="50" class="w-100" form="usrform" id="txtExplain_is_deserving" name="txtExplain_is_deserving" placeholder=" 1500 characters Limit"></textarea>
                        </div>
                    <p class="text-xl-left text-lg-left ml-2 mt-0 text-md-left text-sm-left text-center mt-0  mandatory-msg ">Fields marked with <span style="color:red">*</span> are mandatory </p>
					
					<div class="d-flex align-items-center mt-2 ml-2 pl-0">
						 <input type="checkbox" id="acceptprivacy" name="acceptprivacy" class="mr-2">
						 <p>I have read and agree to the Evolve Fondation's Program  <a href="privacy.html" style="color:blue"> Privacy Policy </a> and <a href="serviceagreements.html" style="color:blue"> Service Agreement. </a> </p>					 
					</div>
					
                    <!-- Submit Button -->
                    <div class="col-12 text-center my-4">
                      <button class="btn btn-main-md mx-auto py-2 px-2 " onclick="SavePower_Women_inTech()">Submit</button>
                    </div>

                </div>
				

	</form>	



</body>





</html>