<!DOCTYPE html>

<html lang="en">
<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->
<head>

  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>EVOLV 2023 KICKOFF B20 2023 ROADSHOW - Evolv.cc</title>

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

<style>

.invitation_inputbox{
	width:150px !important;
}

.invitecode_block{
border-right: 1px solid #dee2e6 !important;
padding-right:20px;
}



@media (max-width: 767px){

.invitecode_block{
	border-right: 0px solid #dee2e6 !important;
	padding-right:0px;
}

}


@media (max-width: 400px){

.invitation_inputbox{
	width:120px !important;
}

}


</style>


  <!-- CUSTOM CSS -->
  <link href="css/style.css" rel="stylesheet" />
  <link href="css/custome.css" rel="stylesheet" />
  <link href="./plugins/jsvectormap-master/dist/css/jsvectormap.css" rel="stylesheet" />


  <!---WEB COMPONETNS-->
  <script src="./webcomponts/headerComponents.js"></script>
  <script src="./webcomponts/FooterComponent.js"></script>
  <script src="./webcomponts/ScrollToTop.js"></script>
  <script src="./webcomponts/dummytext.js"></script>
  
  
  
<script>
function SavePower_Request_invite(){              
		    //alert('Saved');
			
	      
			var vFirst_Name = $("#first_name").val();
			var vLast_Name = $("#last_name").val();
			
			var vLinkedin = $("#linkedInLink").val();
			var vPosition = $("#Position").val();
			var vCompany = $("#Company").val();
			var vEmail = $("#email").val();
			var vCountry = $("#country").val();
			var vSource_Page = '';
			var vInviteType = $("#InviteType").val();
		
			var checkbox1_check = 0;
			//alert (vInviteType);
			if($('#acceptprivacy').prop('checked')) {
				checkbox1_check = 1;
			} else {
				checkbox1_check = 0;
			}

			//alert ($checkbox1);
			//alert(vLast_Name);	
			if (vEmail != null && vEmail != '' && vFirst_Name != null && vFirst_Name != '' && vLast_Name != null && vLast_Name != '' && vCompany != null && vCompany != ''  && vPosition != null && vPosition != '' )	 
			{
				if (checkbox1_check == 1)
				{
					//alert(vReportName);
					$.ajax({
								url: "Ajax_AddRequest_invite.asp",
								type: "POST",						
								data:'vSource_Page='+encodeURIComponent(vSource_Page)+'&vInviteType='+encodeURIComponent(vInviteType)+'&vEmail='+encodeURIComponent(vEmail)+'&vFirst_Name='+encodeURIComponent(vFirst_Name)+'&vLast_Name='+encodeURIComponent(vLast_Name)+'&vLinkedin='+encodeURIComponent(vLinkedin)+'&vPosition='+encodeURIComponent(vPosition)+'&vCompany='+encodeURIComponent(vCompany)+'&vCountry='+encodeURIComponent(vCountry)+'',
								success: function(data){
									//alert(data);
									//alert('Thanks for submitting!');
									if (data==1)
									{
										alert ("Your request has been received. Thank you - Host committee");
										document.getElementById('first_name').value = "";
										document.getElementById('last_name').value = "";
										document.getElementById('Position').value = "";
										document.getElementById('Company').value = "";
										document.getElementById('email').value = "";
										document.getElementById('txtInvite_code').value = "";
									}
									else if (data==2)
									{
										alert ("Your invite registration is confirmed. We will get back to you within one business day. Thank you");
										document.getElementById('first_name').value = "";
										document.getElementById('last_name').value = "";
										document.getElementById('Position').value = "";
										document.getElementById('Company').value = "";
										document.getElementById('email').value = "";
										document.getElementById('txtInvite_code').value = "";
									}
									else
									{
										window.open("https://www.evolv.cc/loginLinkedin_User.asp?UsID=0&rcode=0&ecode="+encodeURIComponent(vEmail));	
									}						  
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
					alert("Please accept our privacy policy to continue");
				 }
			 }
			 else
			 {
			    
				alert("Fields marked with * are mandatory");
			  
			 }        


			}
</script>
</head>

<body class="body-wrapper" data-spy="scroll" data-target=".privacy-nav">

  <!--============================
=            HEADER           =
=============================-->
  <header-component></header-component>
  <!--============================
    PLACEKEEPTER BANNER
=============================-->    

<div class="body-content">


  <section class="section  pt-5 page-title">
    <div class="container">
      <div class="row">
        <div class="col-sm-12 col-md-12 col-lg-10 m-auto">
				<div class="border-bottom pb-3">
					  <h1 class="font-display1 text-center main-font-color mx-auto" style="margin-bottom:7px !important">Evolv<sup>TM</sup> PROGRAM LAUNCH <br/> B20 ROADSHOW</h1>
						<h5 class="para-display1 mb-0"><b>March 29, 2023</b></h5> 	
						<h5 class="para-display1 mb-0">Crowne Plaza Palo Alto</h5>
						<h5 class="para-display1 mb-0">4290 El Camino Real, Palo Alto, CA 94306</h5> 
				</div>	
							
				<!-----INVITATION CODE BLOCK START------>				
				<div class=" w-100   w-100 mt-3 bg-light shadow-sm border ">
					<!--input type="checkbox" class="form-check-input collapsed" id="exampleCheck1"  data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample"--->					
					<%DIm InviteCode
					InviteCode = ""
					
						InviteCode = trim(request("InviteCode"))
					
					if trim(request("txtInvite_code")) <> "" then
						''InviteCode = trim(request("txtInvite_code"))
					end if
					''response.write trim(request("txtInvite_code"))
					%>	
					<form method="post"  id="frmcheck" name="frmcheck"  >	
					<div class="d-flex flex-column flex-xl-row flex-lg-row  flex-md-row w-100 justify-content-lg-center  py-2 px-2 justify-content-start">							
							<div class=" d-flex flex-row align-itmes-center mr-3 my-2 invitecode_block">
									<p class="mr-2 font-weight-bold para-dispay2 d-block main-font-color ">INVITATION CODE:</p> 
									<input class="border d-block invitation_inputbox"  type="text" id="txtInvite_code" name="txtInvite_code"  maxlength="18" style=" border-radius:0px;" value="<%=InviteCode%>" /> 
									<button type="submit" class="btn btn-sm main-bg-color text-white border-radius-0" style="height:28px; border-radius:0px !important" id="invitationbutton" >GO</button>
							</div>
							<!----Request Code Start
								<div class="text-left my-2 pt-1">
									<a id="exampleCheck1"   class="main-font-color font-weight-bold para-dispay2 pt-1" style="cursor:pointer" >REQUEST AN INVITATION</a>
								</div>
							Request Code End------>
					</div>
					</form>
					
				</div>
				<!-----INVITATION CODE BLOCK END------>
					
				<!---COLLAPSE BLOCK FORM START---->
				<%if trim(request("txtInvite_code"))= "" then%>
					<div class="collapse border shadow p-2 " id="collapseExample" style="">
				<%else%>
					<div class="collapse border shadow p-2 show" id="collapseExample" style="">
				<%end if%>
                <div class="panel-body w-100">
				<%
							dim InviteType
							InviteType = 0
							Set MyCon = Server.CreateObject("ADODB.Connection")		
							MyCon.Open Datasource4
							Set rsChkInvite = Server.CreateObject("ADODB.Recordset")
							SqlInvite="Select * from invite_users where invite_code='" & trim(request("txtInvite_code")) & "' and status='Y'"
							session("InfCode")= trim(request("txtInvite_code"))
							rsChkInvite.Open SqlInvite,MyCon		
							''response.write SqlInvite
							IF not rsChkInvite.EOF Then
								If ucase(trim(rsChkInvite("Invite_Type")))="VIP" Then
									Invite_name="<b>GUEST OF " & ucase(rsChkInvite("Display_name")) & "</b><br/> VIP LUNCHEON IN CYPRUS ROOM @ 12:15PM <br/><font color='red'> (Not Transferable)</font>"
									''Invite_name = Invite_name & " "
								Else
									Invite_name="<b>GUEST OF " & ucase(rsChkInvite("Display_name")) & "</b><br/><font color='red'> (Not Transferable)</font>"
								End If
								session("InfCode")=rsChkInvite("Invite_code")
								InviteType = 1
							else
								
								''''CHECK FOR INVITE CODE FORM Invitee_10M_People TABLE (REQUEST TO JOIN THE CONFERENCE)
								RecChkSQL = "SELECT * FROM  Invitee_10M_People WHERE INVITE_CODE ='"&trim(request("txtInvite_code"))&"'" 
								Set RecChkRS = Server.CreateObject("ADODB.Recordset")
								RecChkRS.Open RecChkSQL, MyCon
								IF not RecChkRS.EOF Then
									Invite_name="<b>INVITATION FOR " & ucase(RecChkRS("first_name")) & " " & ucase(RecChkRS("last_name")) & "</b><br/><font color='red'> (Not Transferable)</font>"
									session("InfCode")=RecChkRS("INVITE_CODE")
									InviteType = 2
								Else
									Invite_name="Subject to availability"
									session("InfCode")=""
									InviteType = 0
								End If
								set RecChkRS = nothing
								
							end if
							set rsChkInvite=nothing
							Set MyCon = nothing
							invite_nametitle= Invite_name
							
 %>
						   	
				<p class="w-100 text-center pt-2"><small><label id="lblInvite_name" name="lblInvite_name"><%=Invite_name%></small></p>
                <div class="row mx-0 w-100 mt-4 pt-2" id="formblock">
				<%
				If trim(request("txtInvite_code"))<>"" Then
				 
					Set MyCon = Server.CreateObject("ADODB.Connection")		
					MyCon.Open Datasource4		

					RecChkSQL = "SELECT * FROM  Invitee_10M_People WHERE INVITE_CODE ='"&trim(request("txtInvite_code"))&"'" 
					Set RecChkRS = Server.CreateObject("ADODB.Recordset")
					RecChkRS.Open RecChkSQL, MyCon	
					''response.write RecChkSQL
					
					If not RecChkRS.EOF Then	
					''response.write "for test"
						first_name = trim(RecChkRS("first_name"))
						last_name = trim(RecChkRS("last_name"))
						title = trim(RecChkRS("title"))
						company = trim(RecChkRS("companyname"))
						email = trim(RecChkRS("email"))
					else
						first_name=""
						last_name= ""
						title= ""
						company=""
						email= ""
					end if
					set RecChkRS=nothing
					
					session("InfCode") = trim(request("txtInvite_code"))
				End If
				%>
                  <div class="col-sm-6 mb-3 px-1">
                    <input class="form-control w-100 border-radius-0 " id="first_name" name="first_name" type="text" value="<%=first_name%>" required="">
                    <span class="floating-label">
                      First Name <span class="text-danger">*</span> </span>
                  </div>
                  <div class="col-sm-6 mb-3 px-1">
                    <input class="form-control w-100 border-radius-0 " id="last_name" name="last_name" type="text" value="<%=last_name%>" required="">
                    <span class="floating-label">
                      Last Name <span class="text-danger">*</span> </span>
                  </div>

                  <!--div class="col-sm-6 mb-3 px-1">
                    <input class="form-control w-100 border-radius-0 " id="linkedInLink" name="linkedInLink" type="text" required="">
                    <span class="floating-label">
                      LinkedIn Link <span class="text-danger">*</span> </span>
                  </div-->
					
					       <div class="col-sm-6 mb-3 px-1">
                    <input class="form-control w-100 border-radius-0 " id="Company" name="Company" type="text"  value="<%=company%>" required="">
                    <span class="floating-label">
                      Organization <span class="text-danger">*</span> </span>
                  </div>
					
                  <div class="col-sm-6 mb-3 px-1">
                    <input class="form-control w-100 border-radius-0 " id="Position" name="Position" type="text"  value="<%=title%>" required="">
                    <span class="floating-label">
                      Position <span class="text-danger">*</span> </span>
                  </div>

           
                  <div class="col-sm-6 mb-3 px-1">
                    <input class="form-control w-100 border-radius-0 " id="email" name="email" type="email"  value="<%=email%>" required="" >
                     <span class="floating-label">
                      Email <span class="text-danger">*</span> </span>
                  </div>
                  <div class="col-sm-6 mb-3 px-1">
                   <span class="floating-label">
                      Country </span>
					  <select id="country" name="country" class="form-control">
					  <option value="United States">United States</option>
                      <option value="Afghanistan">Afghanistan</option>
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
                      <option value="South Georgia and The South Sandwich Islands">South Georgia and The South Sandwich
                        Islands</option>
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
             
					<input type="hidden" name="InviteType" id="InviteType" value="<%=InviteType%>">
                  <p class="text-xl-left text-lg-left ml-2 mt-0 text-md-left text-sm-left text-center mt-0  mandatory-msg ">
                   
                  <!-- Submit Button -->
                  
					<%If trim(session("InfCode"))<>"" Then%>
						<small> Fields marked with <span style="color:red">*</span> are mandatory. </small></p>
						
						 <div class="d-flex align-items-center mt-2 ml-2">
										 <input type="checkbox" id="acceptprivacy" name="acceptprivacy" class="mr-2"/>
										 <p>I have read and agree to the Evolv Program  <a href="https://www.evolv.cc/privacy.html" style="color:blue"> Privacy Policy </a> and <a href="https://www.evolv.cc/serviceagreements.html" style="color:blue"> Service Agreement. </a> </p>
						 </div>
						
						<div class="col-12 text-center my-4">
							<button class="btn btn-main-md mx-auto py-2 px-2 " id="submitbtn1" onclick="SavePower_Request_invite();" data-nlok-ref-guid="6ba6e217-6e4c-4031-9299-e9cc289e16f1">Submit</button>
						</div>
					<%Else%>
						<small> Fields marked with <span style="color:red">*</span> are mandatory. To complete your request, you must be authenticated via Linkedin. </small></p>
						
						 <div class="d-flex align-items-center mt-2 ml-1">
										 <input type="checkbox" id="acceptprivacy" name="acceptprivacy" class="mr-2"/>
										 <p>I have read and agree to the Evolv Program  <a href="https://www.evolv.cc/privacy.html" style="color:blue"> Privacy Policy </a> and <a href="https://www.evolv.cc/serviceagreements.html" style="color:blue"> Service Agreement. </a> </p>					 </div>
						
						<div class="col-12 text-center my-4">
							<button class="btn btn-main-md mx-auto py-2 px-2 " onclick="SavePower_Request_invite();" data-nlok-ref-guid="6ba6e217-6e4c-4031-9299-e9cc289e16f1">Submit via LinkedIn</button>
						</div>
					<%End If%>
                 

                </div>

              </div>
                          </div>
				
				<!---COLLAPSE BLOCK FORM END----->
				
				
				<p class="mt-4 text-left">
				Guest attendees include deep tech startups; scale-ups; several leading venture capitalists and big enterprise CXOs from the Silicon Valley.
				
				</p>
				
				
				
				<!-----PROGARAM BLOCK START
				
			
				
					<div class="col-12 pl-0 ml-0  pt-4 text-left">
					<p class="d-block font-weight-bold">PROGRAM DETAILS COMING SOON</p>
					<p class="d-block mt-1"><i>About 100 deep tech startups; scale-ups; several leading venture capitalists and big enterprise CXOs from the Silicon Valley are invited. Senior leadership from the Confederation of Indian Industry <a href="https://www.cii.in/">www.CII.in</a> will meet and greet Silicon Valley's influencer community and present a plan for a globally interconnected Innovation ecosystem. </i></p>
					</div>
			
				
				
			PROGRAM BLOCK END------->
				
				
				
				
				<!-----AGENDA BLOCK START----->
				
				<div class="w-100 text-left agenda_slot" >
				
				<h3 class="font-display3 pt-4 main-font-color mb-3 text-center  pb-2">AGENDA</h3>
				
				<div class="border shadow-sm p-3">
				<!---01--->
					<div class="d-block  col-12 pl-0 m-l-0  texgt-left" >09:30 AM:</div>
					<div class="d-block   col-12 pl-0 ml-0 mt-2 text-left">
					<p class="d-block  " style="font-weight:600">CHECK-IN</p>
					</div>
				
				<!---02--->
				<hr class="divider" style="margin-top:10px !important"/>
				<div class="d-flex flex-column flex-column mr-2 justify-content-start">
					<div class="d-block  col-12 pl-0 m-l-0 text-left mt-2 " >10:00 - 10:45 AM:</div>
						<div class="d-block   col-12 pl-0 ml-0 mt-2 text-left">
						<p class="d-block  " style="font-weight:600">Evolv<sup>TM</sup> PROGRAM LAUNCH</p>
						<p class="d-block mt-1">The Evolv<sup>TM</sup> team will present action-oriented plans for how entrepreneurs worldwide and particularly those in the Silicon Valley building innovative tech companies can get engaged with India's massive economic growth engine. </p>
				
							<!---SPEAKERS IMAGE GALLERY START----->
							
						
							<div class="row mt-4 justify-content-center ">
									<!----Profile 1 START--->									
									<div class="col-lg-3 col-xl-2 col-md-3  col-sm-4 col-6 mb-3">
										<div class="text-center agenda_speakers_card">
											<!-- Team Member Image -->
											<div class="image mb-2">
												<a href="https://www.linkedin.com/in/rajan-navani/" target="_blank">
												<img class="w-100 shadow border img-fluid"src="./images/evolv/leader-ship/img_02.jpg"  alt="member-image"></a>
											</div>
											<!-- Name -->
											<div class="agenda_speakers_info">
												<h3 class="text-center font-weight-bold ">Rajan Navani</h3>
												 <p class="text-center designation">Founder &amp; CEO</p>
												  <p class="text-center designation">JetSynthesys </p>
											</div>
										</div>
									</div>
									<!---Profile 1 END---->	
									<!----Profile 2--->						
									<div class="col-lg-3 col-xl-2 col-md-3 col-sm-4 col-6 mb-3">			
										<div class="text-center agenda_speakers_card">
											<!-- Team Member Image -->
											<div class="image mb-2">
												<a href="https://www.linkedin.com/in/ramreddyk" target="_blank">
												<img class="w-100 shadow border img-fluid" src="./images/evolv/leader-ship/img_01.jpg" alt="member-image"></a>
											</div>
											<!-- Name -->
											<div class="agenda_speakers_info">
												<h3 class="text-center font-weight-bold ">Ram K Reddy</h3>
												 <p class="text-center designation">Founder &amp; CEO</p>
												  <p class="text-center designation">StrategyR<sup>TM</sup> </p>
											</div>
										</div>
									</div>
									<!---Profile 2 END---->						
									
								</div>
					
					</div>
				</div>
				
				
				<!---03--->
				<hr class="divider" style="margin-top:10px !important"/>
				<div class="d-flex flex-column flex-column mr-2 justify-content-start">
					<div class="d-block  col-12 pl-0 m-l-0 text-left mt-2 " >10:45 - 11:30 AM:</div>
						<div class="d-block   col-12 pl-0 ml-0 mt-2 text-left">
					<p class="d-block  " style="font-weight:600">SILICON VALLEY B20 ROADSHOW</p>
					<p class="d-block mt-1">Hosted by Consul General of India and guest invitee G20 Consuls. <a href="https://www.g20.org/" style="color:blue" target="_blank">www.g202023.in</a> As the official Secretariat of B20 2023, <a href="https://www.b20india2023.org" style="color:blue" target="_blank" >www.b20india2023.org</a> CII sets the agenda and will present details of how innovation ecosystems in G20 countries can get involved with domain-focused programs.</p>
				
							<!---SPEAKERS IMAGE GALLERY START----->
							
						
							<div class="row mt-4 justify-content-center ">
									<!----Profile 1 START--->									
									<div class="col-lg-3 col-xl-2 col-md-3  col-sm-4 col-6 mb-3">
										<div class="text-center agenda_speakers_card">
											<!-- Team Member Image -->
											<div class="image mb-2">
												<a href="https://www.linkedin.com/in/dr-tv-nagendra-prasad-a22a5096/" target="_blank">
												<img class="w-100 shadow border img-fluid"src="./images/Speaker_Images/NagendraPrasad.jpg"  alt="member-image"></a>
											</div>
											<!-- Name -->
											<div class="agenda_speakers_info">
												<h3 class="text-center font-weight-bold ">Dr. TV Nagendra Prasad</h3>
												 <p class="text-center designation">Consulate General of India</p>
												  <p class="text-center designation">San Francisco, CA </p>
											</div>
										</div>
									</div>
									<!---Profile 1 END---->	
									<!----Profile 2--->						
									<div class="col-lg-3 col-xl-2 col-md-3 col-sm-4 col-6 mb-3">			
										<div class="text-center agenda_speakers_card">
											<!-- Team Member Image -->
											<div class="image mb-2">
												<a href="https://www.linkedin.com/in/ramreddyk" target="_blank">
												<img class="w-100 shadow border img-fluid" src="./images/Speaker_Images/C_Banerjee.jpg" alt="member-image"></a>
											</div>
											<!-- Name -->
											<div class="agenda_speakers_info">
												<h3 class="text-center font-weight-bold ">Chandrajit Banerjee</h3>
												 <p class="text-center designation">Director General</p>
												  <p class="text-center designation">Confederation of Indian Industry (CII) </p>
											</div>
										</div>
									</div>
									<!---Profile 2 END---->						
									
								</div>
					
					</div>
				</div>
				
					<!---04--->
				<hr class="divider" style="margin-top:10px !important"/>
			<div class="d-flex flex-column flex-column mr-2 texgt-left">
					<div class="d-block  col-12 pl-0 m-l-0 text-left mt-2 " >11:30 - 12:15 PM:</div>
						<div class="d-block   col-12 pl-0 ml-0 mt-2 text-left">
						<p class="d-block  " style="font-weight:600">FUNDRAISING IN TODAY'S MARKETPLACE </p>
						<p class="d-block mt-1">Panel discussion addresses today's valuation compression and fundraising challenges.</p>
						
						

						<!---SPEAKERS IMAGE GALLERY START----->
							
						
							<div class="row mt-4 justify-content-center ">
							
									<!----Profile 4--->						
									<div class="col-lg-3 col-xl-2 col-md-3 col-sm-4 col-6 mb-3">			
										<div class="text-center agenda_speakers_card">
											<!-- Team Member Image -->
											<div class="image mb-2">
												<a href="https://www.linkedin.com/in/ankurp4517" target="_blank">
												<img class="w-100 shadow border img-fluid" src="./images/Speaker_Images/Navsher.jpg" alt="member-image"></a>
											</div>
											<!-- Name -->
											<div class="agenda_speakers_info">
												<h3 class="text-center font-weight-bold ">Navsher Singh</h3>
												 <p class="text-center designation">Venture Investor</p>
												  <p class="text-center designation">Liberty Global Ventures</p>
											</div>
										</div>
									</div>
									<!---Profile 4 END---->	
									<!----Profile 1 START--->									
									<div class="col-lg-3 col-xl-2 col-md-3  col-sm-4 col-6 mb-3">
										<div class="text-center agenda_speakers_card">
											<!-- Team Member Image -->
											<div class="image mb-2">
												<a href="https://www.linkedin.com/in/garygauba" target="_blank">
												<img class="w-100 shadow border img-fluid"src="./images/Speaker_Images/G_Gauba.jpg"  alt="member-image"></a>
											</div>
											<!-- Name -->
											<div class="agenda_speakers_info">
												<h3 class="text-center font-weight-bold ">Gary Gauba</h3>
												 <p class="text-center designation">Founder and MD</p>
												  <p class="text-center designation">the CXO Fund </p>
											</div>
										</div>
									</div>
									<!---Profile 1 END---->	
									<!----Profile 2--->						
									<div class="col-lg-3 col-xl-2 col-md-3 col-sm-4 col-6 mb-3">			
										<div class="text-center agenda_speakers_card">
											<!-- Team Member Image -->
											<div class="image mb-2">
												<a href="https://www.linkedin.com/in/shrutigandhi" target="_blank">
												<img class="w-100 shadow border img-fluid" src="./images/Speaker_Images/shruti_Gandhi.jpg" alt="member-image"></a>
											</div>
											<!-- Name -->
											<div class="agenda_speakers_info">
												<h3 class="text-center font-weight-bold ">Shruti Gandhi</h3>
												 <p class="text-center designation">Founder & Managing Partner</p>
												  <p class="text-center designation">Array Ventures </p>
											</div>
										</div>
									</div>
									<!---Profile 2 END---->

									<!----Profile 3--->						
									<div class="col-lg-3 col-xl-2 col-md-3 col-sm-4 col-6 mb-3">			
										<div class="text-center agenda_speakers_card">
											<!-- Team Member Image -->
											<div class="image mb-2">
												<a href="https://www.linkedin.com/in/ankurp4517" target="_blank">
												<img class="w-100 shadow border img-fluid" src="./images/Speaker_Images/Ankur_Prakash.jpg" alt="member-image"></a>
											</div>
											<!-- Name -->
											<div class="agenda_speakers_info">
												<h3 class="text-center font-weight-bold ">Ankur Prakash</h3>
												 <p class="text-center designation">Partner</p>
												  <p class="text-center designation">Liberty Global Ventures </p>
											</div>
										</div>
									</div>
									<!---Profile 3 END---->	
									
									<!----Profile 4--->						
									<!--div class="col-lg-3 col-xl-2 col-md-3 col-sm-4 col-6 mb-3">			
										<div class="text-center agenda_speakers_card">
											
											<div class="image mb-2">
												<a href="https://www.linkedin.com/in/surbhi-sarna" target="_blank">
												<img class="w-100 shadow border img-fluid" src="./images/Speaker_Images/Surbhi_Sarna.jpg" alt="member-image"></a>
											</div>
											
											<div class="agenda_speakers_info">
												<h3 class="text-center font-weight-bold ">Surbhi Sarna</h3>
												 <p class="text-center designation">Group Partner</p>
												  <p class="text-center designation">Y Combinator</p>
											</div>
										</div>
									</div-->
									<!---Profile 4 END---->	
									
								</div>
					
					
					</div>
					

				</div>
				
				
				<!---05--->
				<hr class="divider" style="margin-top:10px !important"/>
				<div class="d-flex flex-column flex-column mr-2">
					<div class="d-block  col-12 pl-0 m-l-0 text-left mt-2 " >12:15 - 01:30 PM:</div>
					<div class="d-block   col-12 pl-0 ml-0 mt-2 text-left">
					<p class="d-block  " style="font-weight:600">LUNCH </p>
					</div>
				</div>
				
				<!---08---->
				<hr class="divider" style="margin-top:10px !important"/>
				<div class="d-flex flex-column flex-column mr-2">
					<div class="d-block  col-12 pl-0 m-l-0 text-left mt-2 " >01:30 - 04:15 PM:</div>
					<div class="d-block   col-12 pl-0 ml-0 mt-2 text-left">
						<p class="d-block  " style="font-weight:600">TECHNOLOGY TRENDSETTERS</p>
						<p class="d-block mt-1"> A new generation of tech entrepreneurs driving today's fast-track deep tech startups are featured. Each trendsetter will speak on the domain trends and present their company's unique value proposition. Keynote format.</p>

						<!--p class="d-block mt-3">Artificial Intelligence</p>
						<p class="d-block ">Quantum Computing</p>
						<p class="d-block ">Robotics</p>
						<p class="d-block ">Biotechnologies</p>
						<p class="d-block ">Blockchain</p>
						<p class="d-block ">Security</p>
						<p class="d-block ">Web 3.0</p>
						<p class="d-block ">CleanTech</p-->
						
						

						<!---SPEAKERS IMAGE GALLERY START----->
							
						
							<div class="row mt-4 justify-content-center ">
							
									<!----Profile 1 START--->									
									<div class="col-lg-3 col-xl-2 col-md-3  col-sm-4 col-6 mb-3">
										<div class="text-center agenda_speakers_card">
											<!-- Team Member Image -->
											<div class="image mb-2">
												<a href="https://www.linkedin.com/in/ssangani" target="_blank">
												<img class="w-100 shadow border img-fluid"src="./images/Speaker_Images/sSangani.jpg"  alt="member-image"></a>
											</div>
											<!-- Name -->
											<div class="agenda_speakers_info">
												<h3 class="text-center font-weight-bold ">Satyen Sangani</h3>
												 <p class="text-center designation">CEO & Co-Founder</p>
												  <p class="text-center designation">Alation </p>
											</div>
										</div>
									</div>
									<!---Profile 1 END---->	
									<!----Profile 1 START--->									
									<div class="col-lg-3 col-xl-2 col-md-3  col-sm-4 col-6 mb-3">
										<div class="text-center agenda_speakers_card">
											<!-- Team Member Image -->
											<div class="image mb-2">
												<a href="https://www.linkedin.com/in/samirmenon" target="_blank">
												<img class="w-100 shadow border img-fluid"src="./images/Speaker_Images/Samir_Menon.jpg"  alt="member-image"></a>
											</div>
											<!-- Name -->
											<div class="agenda_speakers_info">
												<h3 class="text-center font-weight-bold ">Samir Menon</h3>
												 <p class="text-center designation">Founder & CEO</p>
												  <p class="text-center designation">Dexterity, Inc. </p>
											</div>
										</div>
									</div>
									<!---Profile 1 END---->	
									<!----Profile 2--->						
									<div class="col-lg-3 col-xl-2 col-md-3 col-sm-4 col-6 mb-3">			
										<div class="text-center agenda_speakers_card">
											<!-- Team Member Image -->
											<div class="image mb-2">
												<a href="https://www.linkedin.com/in/garimakap" target="_blank">
												<img class="w-100 shadow border img-fluid" src="./images/Speaker_Images/Garima_Kapoor.jpg" alt="member-image"></a>
											</div>
											<!-- Name -->
											<div class="agenda_speakers_info">
												<h3 class="text-center font-weight-bold ">Garima Kapoor</h3>
												 <p class="text-center designation">Co-Founder, COO</p>
												  <p class="text-center designation">Minio, Inc. </p>
											</div>
										</div>
									</div>
									<!---Profile 2 END---->	

									<!----Profile 2--->						
									<div class="col-lg-3 col-xl-2 col-md-3 col-sm-4 col-6 mb-3">			
										<div class="text-center agenda_speakers_card">
											<!-- Team Member Image -->
											<div class="image mb-2">
												<a href="https://www.linkedin.com/in/jayvijayan" target="_blank">
												<img class="w-100 shadow border img-fluid" src="./images/Speaker_Images/Jay_Vijayan.jpg" alt="member-image"></a>
											</div>
											<!-- Name -->
											<div class="agenda_speakers_info">
												<h3 class="text-center font-weight-bold ">Jay Vijayan</h3>
												 <p class="text-center designation">Founder & CEO</p>
												  <p class="text-center designation">Tekion </p>
											</div>
										</div>
									</div>
									<!---Profile 2 END---->	
									
									<!----Profile 2--->						
									<div class="col-lg-3 col-xl-2 col-md-3 col-sm-4 col-6 mb-3">			
										<div class="text-center agenda_speakers_card">
											<!-- Team Member Image -->
											<div class="image mb-2">
												<a href="https://www.linkedin.com/in/muddusudhakar" target="_blank">
												<img class="w-100 shadow border img-fluid" src="./images/Speaker_Images/muddu_sudhakar.jpg" alt="member-image"></a>
											</div>
											<!-- Name -->
											<div class="agenda_speakers_info">
												<h3 class="text-center font-weight-bold ">Muddu Sudhakar</h3>
												 <p class="text-center designation">Co-Founder & CEO</p>
												  <p class="text-center designation">Aisera </p>
											</div>
										</div>
									</div>
									<!---Profile 2 END---->	
									
									<!----Profile 2--->						
									<!--div class="col-lg-3 col-xl-2 col-md-3 col-sm-4 col-6 mb-3">			
										<div class="text-center agenda_speakers_card">
											
											<div class="image mb-2">
												<a href="https://www.linkedin.com/in/shehnaaz-suliman-m-d-mb-chb-m-b-a-m-phil-380005a" target="_blank">
												<img class="w-100 shadow border img-fluid" src="./images/Speaker_Images/S_Suliman.jpg" alt="member-image"></a>
											</div>
											
											<div class="agenda_speakers_info">
												<h3 class="text-center font-weight-bold ">Shehnaaz Suliman</h3>
												 <p class="text-center designation">CEO & Board Member</p>
												  <p class="text-center designation">ReCode Therapeutics </p>
											</div>
										</div>
									</div-->
									<!---Profile 2 END---->
									
								</div>
					</div>
				</div>
				
				<!---06-->
				<!--hr class="divider" style="margin-top:10px !important"/>
				<div class="d-flex flex-column flex-column mr-2">
					<div class="d-block   col-12 pl-0 ml-0 text-left">01:30 - 02:15 PM:</div>
						<div class="d-block   col-12 pl-0 ml-0 mt-2 text-left">
					<p class="d-block  " style="font-weight:600">WOMAN FOUNDER EXPERIENCES </p>
					<p class="d-block mt-1">A panel of inspiring women founders building massive tech startups will discuss challenges, experiences, and advise.
					</div>
				</div-->
				
				
				<!---07--->
				<hr class="divider" style="margin-top:10px !important"/>
				<div class="d-flex flex-column flex-column mr-2">
					<div class="d-block  col-12 pl-0 m-l-0 text-left mt-2 " >04:15 - 05:00 PM:</div>
					<div class="d-block   col-12 pl-0 ml-0 mt-2 text-left">
						<p class="d-block "style="font-weight:600" >LIFE CHANGING INVENTIONS</p>
						<p class="d-block mt-1">Entrepreneurs will present their life changing inventions for the betterment of mankind.</p>
						
							<!---SPEAKERS IMAGE GALLERY START----->
							
						
							<div class="row mt-4 justify-content-center ">
									<!----Profile 1 START--->									
									<div class="col-lg-3 col-xl-2 col-md-3  col-sm-4 col-6 mb-3">
										<div class="text-center agenda_speakers_card">
											<!-- Team Member Image -->
											<div class="image mb-2">
												<a href="https://www.linkedin.com/in/heather-maecker-8958b5112" target="_blank">
												<img class="w-100 shadow border img-fluid"src="./images/Speaker_Images/Heather_Maecker.jpg"  alt="member-image"></a>
											</div>
											<!-- Name -->
											<div class="agenda_speakers_info">
												<h3 class="text-center font-weight-bold ">Heather Maecker</h3>
												 <p class="text-center designation">Senior Vice President IO</p>
												  <p class="text-center designation">San Francisco, CA </p>
											</div>
										</div>
									</div>
									<!---Profile 1 END---->
									<!----Profile 2--->						
									<div class="col-lg-3 col-xl-2 col-md-3 col-sm-4 col-6 mb-3">			
										<div class="text-center agenda_speakers_card">
											<!-- Team Member Image -->
											<div class="image mb-2">
												<a href="https://www.linkedin.com/in/sarvajnadwivedi" target="_blank">
												<img class="w-100 shadow border img-fluid" src="./images/Speaker_Images/S_Dwivedi.jpg" alt="member-image"></a>
											</div>
											<!-- Name -->
											<div class="agenda_speakers_info">
												<h3 class="text-center font-weight-bold ">Sarvajna Dwivedi</h3>
												 <p class="text-center designation">President and CEO, Co-founder and Board Member</p>
												  <p class="text-center designation">AngioSafe </p>
											</div>
										</div>
									</div>
									<!---Profile 2 END---->						
									
								</div>


					</div>
				</div>
				
				
				
				
				
				<!---09--->
				<hr class="divider" style="margin-top:10px !important"/>
				<div class="d-flex flex-column flex-column mr-2">
					<div class="d-block  col-12 pl-0 m-l-0 text-left mt-2 " >05:00 - 06:30 PM:</div>
						<div class="d-block   col-12 pl-0 ml-0 mt-2 text-left">
					<p class="d-block  " style="font-weight:600">NETWORKING RECEPTION</p>
					<p class="d-block mt-1">Network with some of Silicon Valley's prominent venture capitalists, enterprise executives, startup founders, and G20/B20 leadership.</p>
					</div>
				</div>
				
				<hr class="divider" style="margin-top:10px !important"/>
				<div class="d-flex flex-column flex-column mr-2">
					<div class="d-block   col-12 pl-0 ml-0 mt-2 text-left">
					<p class="d-block text-center font-display2 my-2 main-font-color " style="font-weight:600">RAINMAKERS @ EVOLV<sup>TM</sup></p>
					
							<div class="row mt-4 justify-content-center ">
				
									 <!----Profile 1 START--->									
									<div class="col-lg-3 col-xl-2 col-md-3  col-sm-4 col-6 mb-3">
										<div class="text-center agenda_speakers_card">
											<!-- Team Member Image -->
											<div class="image mb-2">
												<a href="https://www.linkedin.com/in/sujachandra-businessleader/" target="_blank">
										  <img class="w-100 shadow border" src="./images/evolv/leader-ship/Suja_Chandrasekharan.jpg" alt="Suja_Chandrasekharan"></a>
											</div>
											<!-- Name -->
											<div class="agenda_speakers_info">
												<h3 class="text-center font-weight-bold ">Suja Chandrasekharan</h3>
												 <p class="text-center designation">Member, Board of Directors</p>
												  <p class="text-center designation">Cardinal Health, American Eagle Outfitters....</p>
											</div>
										</div>
									</div>
									<!---Profile 1 END---->	
				
								
								<!----Profile 1 START--->									
								<div class="col-lg-3 col-xl-2 col-md-3  col-sm-4 col-6 mb-3">
									<div class="text-center agenda_speakers_card">
										<!-- Team Member Image -->
										<div class="image mb-2">
											<a href="https://www.linkedin.com/in/rashmi-kumar-136b47/" target="_blank">
									  <img class="w-100 shadow border" src="./images/evolv/leader-ship/Rashmi_Kumar.jpg" alt="Rashmi Kumar"></a>
										</div>
										<!-- Name -->
										<div class="agenda_speakers_info">
											<h3 class="text-center font-weight-bold ">Rashmi Kumar</h3>
											 <p class="text-center designation">SVP and Global CIO</p>
											  <p class="text-center designation">Medtronic</p>
										</div>
									</div>
								</div>
								<!---Profile 1 END---->	
				
							<!----Profile 1 START--->									
				<div class="col-lg-3 col-xl-2 col-md-3  col-sm-4 col-6 mb-3">
					<div class="text-center agenda_speakers_card">
						<!-- Team Member Image -->
						<div class="image mb-2">
							<a href="https://www.linkedin.com/in/prathi/" target="_blank">
                      <img class="w-100 shadow border" src="./images/evolv/leader-ship/Preeti_Rathi.jpg" alt="Preeti Rathi"></a>
						</div>
						<!-- Name -->
						<div class="agenda_speakers_info">
							<h3 class="text-center font-weight-bold ">Preeti Rathi</h3>
							 <p class="text-center designation">General Partner</p>
							  <p class="text-center designation">Icon Ventures</p>
						</div>
					</div>
				</div>
				<!---Profile 1 END---->	
				
				
				<!----Profile 1 START--->									
				<div class="col-lg-3 col-xl-2 col-md-3  col-sm-4 col-6 mb-3">
					<div class="text-center agenda_speakers_card">
						<!-- Team Member Image -->
						<div class="image mb-2">
							<a href="https://www.linkedin.com/in/padmaja-dasari-93a95612/" target="_blank">
                      <img class="w-100 shadow border" src="./images/evolv/leader-ship/Padmaja.jpg" alt="Padmaja Dasari"></a>
						</div>
						<!-- Name -->
						<div class="agenda_speakers_info">
							<h3 class="text-center font-weight-bold ">Padmaja Dasari</h3>
							 <p class="text-center designation">Head of Information Technology and Information Systems</p>
							  <p class="text-center designation">Nextdoor</p>
						</div>
					</div>
				</div>
				<!---Profile 1 END---->	
				
				
				 <!----Profile 1 START--->									
				<div class="col-lg-3 col-xl-2 col-md-3  col-sm-4 col-6 mb-3">
					<div class="text-center agenda_speakers_card">
						<!-- Team Member Image -->
						<div class="image mb-2">
							<a href="https://www.linkedin.com/in/sudha-mahajan-9944471/" target="_blank">
                      <img class="w-100 shadow border" src="./images/evolv/leader-ship/Sudha_Mahajan.jpg" alt="Sudha Mahajan"></a>
						</div>
						<!-- Name -->
						<div class="agenda_speakers_info">
							<h3 class="text-center font-weight-bold ">Sudha Mahajan</h3>
							 <p class="text-center designation">General Manager and Partner- Azure Core</p>
							  <p class="text-center designation">Microsoft</p>
						</div>
					</div>
				</div>
				<!---Profile 1 END---->	
				
				<!----Profile 1 START--->									
				<div class="col-lg-3 col-xl-2 col-md-3  col-sm-4 col-6 mb-3">
					<div class="text-center agenda_speakers_card">
						<!-- Team Member Image -->
						<div class="image mb-2">
							<a href="https://www.linkedin.com/in/sumantmandal/" target="_blank">
                      <img class="w-100 shadow border" src="./images/evolv/leader-ship/Sumant_Mandal.jpg" alt="Sumant Mandal"></a>
						</div>
						<!-- Name -->
						<div class="agenda_speakers_info">
							<h3 class="text-center font-weight-bold ">Sumant Mandal</h3>
							 <p class="text-center designation">Co-Founder &amp; Managing Partner</p>
							  <p class="text-center designation">March Capital</p>
						</div>
					</div>
				</div>
				<!---Profile 1 END---->	
				
				 <!----Profile 1 START--->									
				<div class="col-lg-3 col-xl-2 col-md-3  col-sm-4 col-6 mb-3">
					<div class="text-center agenda_speakers_card">
						<!-- Team Member Image -->
						<div class="image mb-2">
							<a href="https://www.linkedin.com/in/chandarp/" target="_blank">
                      <img class="w-100 shadow border" src="./images/evolv/leader-ship/Chandar_Pattabhiram.jpg" alt="Chandar Pattabhiram"></a>
						</div>
						<!-- Name -->
						<div class="agenda_speakers_info">
							<h3 class="text-center font-weight-bold ">Chandar Pattabhiram</h3>
							 <p class="text-center designation">Chief Marketing Officer</p>
							  <p class="text-center designation">Coupa Software</p>
						</div>
					</div>
				</div>
				<!---Profile 1 END---->	
				
									<!----Profile 1 START--->									
									<div class="col-lg-3 col-xl-2 col-md-3  col-sm-4 col-6 mb-3">
										<div class="text-center agenda_speakers_card">
											<!-- Team Member Image -->
											<div class="image mb-2">
												<a href="https://www.linkedin.com/in/sujithharidas/" target="_blank">
												<img class="w-100 shadow border img-fluid"src="./images/Speaker_Images/Sujith_Haridas.jpg"  alt="member-image" style="width: 123px; height:123px;"></a>
											</div>
											<!-- Name -->
											<div class="agenda_speakers_info">
												<h3 class="text-center font-weight-bold ">Sujith Haridas</h3>
												 <p class="text-center designation">Deputy Director General</p>
												  <p class="text-center designation">Confederation of Indian Industry </p>
											</div>
										</div>
									</div>
									<!---Profile 1 END---->	
									
									<!----Profile 1 START--->									
									<div class="col-lg-3 col-xl-2 col-md-3  col-sm-4 col-6 mb-3">
										<div class="text-center agenda_speakers_card">
											<!-- Team Member Image -->
											<div class="image mb-2">
												<a href="https://www.linkedin.com/in/dr-ashish-mohan-52527220/" target="_blank">
												<img class="w-100 shadow border img-fluid"src="./images/Speaker_Images/Ashish_Mohan.jpg"  alt="member-image" style="width: 123px; height:123px;"></a>
											</div>
											<!-- Name -->
											<div class="agenda_speakers_info">
												<h3 class="text-center font-weight-bold ">Ashish_Mohan</h3>
												 <p class="text-center designation">Innovation Transformation Leader, New Technology development</p>
												  <p class="text-center designation">Confederation of Indian Industry </p>
											</div>
										</div>
									</div>
									<!---Profile 1 END---->	
									
									<!----Profile 1 START--->									
									<div class="col-lg-3 col-xl-2 col-md-3  col-sm-4 col-6 mb-3">
										<div class="text-center agenda_speakers_card">
											<!-- Team Member Image -->
											<div class="image mb-2">
												<a href="https://www.linkedin.com/in/prakashkedia/" target="_blank">
												<img class="w-100 shadow border img-fluid"src="./images/Speaker_Images/Prakaash_Kedia.jpg"  alt="member-image" style="width: 123px; height:123px;"></a>
											</div>
											<!-- Name -->
											<div class="agenda_speakers_info">
												<h3 class="text-center font-weight-bold ">Prakaash Kedia</h3>
												 <p class="text-center designation">Deputy Director</p>
												  <p class="text-center designation">Confederation of Indian Industry </p>
											</div>
										</div>
									</div>
									<!---Profile 1 END---->	
									
									<!----Profile 1 START--->									
									<div class="col-lg-3 col-xl-2 col-md-3  col-sm-4 col-6 mb-3">
										<div class="text-center agenda_speakers_card">
											<!-- Team Member Image -->
											<div class="image mb-2">
												<a href="https://www.linkedin.com/in/darren-rodricks-594246185" target="_blank">
												<img class="w-100 shadow border img-fluid"src="./images/Speaker_Images/D_Rodricks.jpg"  alt="member-image" style="width: 123px; height:123px;"></a>
											</div>
											<!-- Name -->
											<div class="agenda_speakers_info">
												<h3 class="text-center font-weight-bold ">Darren Rodricks</h3>
												 <p class="text-center designation">Student</p>
												  <p class="text-center designation">Santa Clara University </p>
											</div>
										</div>
									</div>
									<!---Profile 1 END---->	
									<!----Profile 2--->						
									<div class="col-lg-3 col-xl-2 col-md-3 col-sm-4 col-6 mb-3">			
										<div class="text-center agenda_speakers_card">
											<!-- Team Member Image -->
											<div class="image mb-2">
												<a href="https://www.linkedin.com/in/ria-saroya-490138269" target="_blank">
												<img class="w-100 shadow border img-fluid" src="./images/Speaker_Images/Ria_Saroya.jpg" alt="member-image" style="width: 123px; height:123px;"></a>
											</div>
											<!-- Name -->
											<div class="agenda_speakers_info">
												<h3 class="text-center font-weight-bold ">Ria Saroya</h3>
												 <p class="text-center designation">Student</p>
												  <p class="text-center designation">UC Riverside </p>
											</div>
										</div>
									</div>
									<!---Profile 2 END---->		
									
									<!----Profile 2--->						
									<div class="col-lg-3 col-xl-2 col-md-3 col-sm-4 col-6 mb-3">			
										<div class="text-center agenda_speakers_card">
											<!-- Team Member Image -->
											<div class="image mb-2">
												<a href="https://www.linkedin.com/in/ilina-navani-210429251" target="_blank">
												<img class="w-100 shadow border img-fluid" src="./images/Speaker_Images/Ilina_Navani.jpg" alt="member-image" style="width: 123px; height:123px;"></a>
											</div>
											<!-- Name -->
											<div class="agenda_speakers_info">
												<h3 class="text-center font-weight-bold ">Ilina Navani</h3>
												 <p class="text-center designation">Student</p>
												  <p class="text-center designation">Davidson College </p>
											</div>
										</div>
									</div>
									<!---Profile 2 END---->	
									
									<!----Profile 2--->						
									<div class="col-lg-3 col-xl-2 col-md-3 col-sm-4 col-6 mb-3">			
										<div class="text-center agenda_speakers_card">
											<!-- Team Member Image -->
											<div class="image mb-2">
												<a href="https://www.linkedin.com/in/anikamuddu" target="_blank">
												<img class="w-100 shadow border img-fluid" src="./images/Speaker_Images/Anika_Muddu.jpg" alt="member-image" style="width: 123px; height:123px;"></a>
											</div>
											<!-- Name -->
											<div class="agenda_speakers_info">
												<h3 class="text-center font-weight-bold ">Anika Muddu</h3>
												 <p class="text-center designation">Student</p>
												  <p class="text-center designation">Harker </p>
											</div>
										</div>
									</div>
									<!---Profile 2 END---->	
									
									
									
								</div>
					</div>
				</div>
				
				
					<!---10--->
				<!--hr class="divider" style="margin-top:10px !important"/>
				<div class="d-flex flex-column flex-column mr-2">
					<div class="d-block  col-12 pl-0 m-l-0 text-left mt-2 " >06:30 - 08:00 PM:</div>
					<div class="d-block   col-12 pl-0 ml-0 mt-2 text-left">
					<p class="d-block  " style="font-weight:600">DINNER</p>
					</div>
				</div-->
				
				</div>
					
                </div>
				
					<!----AGENDA BLOCK END----->
					
					
							
				
				
				
			</div>
			
          
        </div>
      </div>
    </div>
  </section>
  
  
  <script>
  $(document).ready(function () {
  $('#acceptprivacy1').click(function () {
    $('#submitbtn1').prop("disabled", !$("#acceptprivacy1").prop("checked")); 
  })
});
  </script>

  </div>

  <!--====  End of Page Title  ====-->

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

  <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>

<script type="text/javascript">
    $(document).ready(function(){
$('#google_translate_element').bind('DOMNodeInserted', function(event) {
$('.goog-te-menu-value span:first').html('LANGUAGE');
$('.goog-te-menu-frame.skiptranslate').load(function(){
    setTimeout(function(){
    $('.goog-te-menu-frame.skiptranslate').contents().find('.goog-te-menu2-item-selected .text').html('LANGUAGE');    
    }, 100);
});
});
});
</script>


<script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en', includedLanguages: "en,es,zh-CN,de,ja,nl,fr,it,pt,ar,ko,sv,zh-TW", layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
}
</script>

<script>
	$("#invitationbutton, #exampleCheck1").click(function(){
	
	var vInvite_code = $("#txtInvite_code").val();
	//alert(vInvite_code);
	
	 
		 
		 
		 if (vInvite_code != null && vInvite_code != '' )	 
			 {
			$("#collapseExample").toggle();
			  $.ajax({
						url: "ajax_invitecode.asp",
						type: "POST",						
						data:'vInvite_code='+encodeURIComponent(vInvite_code)+'',
						success: function(data){
						//alert(data);
						//$("#lblInvite_name").attr(data);
						document.getElementById('lblInvite_name').innerHTML = data;
						
						//var getsesscode;
						//getsesscode = vInvite_code;
						//alert (getsesscode);
						if (vInvite_code != null && vInvite_code != '' )
						{
							///Call from Database
							<%
								Set MyCon = Server.CreateObject("ADODB.Connection")		
									MyCon.Open Datasource4
									''''CHECK FOR INVITE CODE FORM Invitee_10M_People TABLE (REQUEST TO JOIN THE CONFERENCE)
									RecChkSQL = "SELECT * FROM  Invitee_10M_People WHERE INVITE_CODE ='"&trim(vInvite_code)&"'" 
									Set RecChkRS = Server.CreateObject("ADODB.Recordset")
									RecChkRS.Open RecChkSQL, MyCon
									IF not RecChkRS.EOF Then%>
											document.getElementById('first_name').value = '<%=RecChkRS("First_Name")%>';
											document.getElementById('last_name').value = '<%=RecChkRS("Last_Name")%>';
											document.getElementById('Position').value = '<%=RecChkRS("title")%>';
											document.getElementById('Company').value = '<%=RecChkRS("CompanyName")%>';
											document.getElementById('email').value = '<%=RecChkRS("email")%>';
									<%End If
									set RecChkRS = nothing
									Set MyCon = nothing
							%>
							//End the database call
							//window.location.reload(true);
						}
						//alert('Thanks for submitting!');	
                        //  window.open("https://www.evolv.cc/loginLinkedin_User.asp?UsID=0&rcode=0&ecode="+encodeURIComponent(vEmail));
						
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
			
	  
	  
	});
	
	$("#exampleCheck1").click(function(){
	$("#collapseExample").toggle();
	
	});
	
	
</script>
<%''If trim(InviteCode)<>"" Then%>
	<!--script type="text/javascript">
	window.onload = function(){
	  document.getElementById('invitationbutton').click();
	}
	</script-->
<%''End If%>
</body>




</html>