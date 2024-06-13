<!DOCTYPE html>

<html lang="en">
<head>

  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>Evolv - DASHBOARD</title>

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
  <%@Language="VBScript"%>
  
<%
Response.flush
Function SelectedActive(val1,val2)
	IF trim(val1) = trim(val2) then
		SelectedActive = "active"		
	else
		SelectedActive = ""
	End IF
END Function



%>

<style>
.no-list-style, .no-list-style li {
	list-style: none;
}

</style>
</head>

<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->

<body class="body-wrapper" data-spy="scroll" data-target=".privacy-nav">

<!--============================
=           Top Strip     Start   =
=============================-->
	<!--include file="ASPIncludes/topstrip.asp"-->
	<header-component></header-component>
<!--============================
=            Top Strip      End   =
=============================-->

<!---====================================
=            Hero Section            =
=====================================--->
<section class="section placekeeper_section theme-5">
  <div class="container">
    <div class="row align-items-center">
     
    </div>
  </div>
</section>
<!--====  End of Hero Section  ====-->
<!--================================
=            Page Title            =
=================================-->

<section class="section page-title">
	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12  m-auto">
				<!-- Page Title -->
				<div class="section-title mb-3">
				
				<h2>
					
					<%=ucase(trim(request("ShowType")))%> 
					<%If trim(request("ActType"))<>"" Then%>
						<span> <%=ucase(trim(request("ActType")))%></span>
					<%Else%>
						 CONTACTS
					<%End If%>
					</h2>
				</div>
				<!-- Page Description -->

			</div>

			<div class="col-12 mx-auto"  >
				<div class="rounded shadow p-2 bg-white" >
					<div class="row">
						
							<p class="Alp_Display w-100 my-3 "> 
					<%if trim(chkOpt)="Company" then%>					
					<a class="<%=SelectedActive(request("SRCWord"),"[0-9]") %>" href="Show_AnalystFirms_People.asp?GTcountry=<%=trim(request("GTcountry"))%>&ShowType=<%=trim(request("ShowType"))%>&ActType=<%=trim(request("ActType"))%>&SRCWord=[0-9]">0-9</a> 
					<%end if%>
                  <a class="<%=SelectedActive(request("SRCWord"),"[A]") %>" href="Show_AnalystFirms_People.asp?GTcountry=<%=trim(request("GTcountry"))%>&ShowType=<%=trim(request("ShowType"))%>&ActType=<%=trim(request("ActType"))%>&SRCWord=[A]">A</a> 
				  <a class="<%=SelectedActive(request("SRCWord"),"[B]") %>" href="Show_AnalystFirms_People.asp?GTcountry=<%=trim(request("GTcountry"))%>&ShowType=<%=trim(request("ShowType"))%>&ActType=<%=trim(request("ActType"))%>&SRCWord=[B]">B</a>
                  <a class="<%=SelectedActive(request("SRCWord"),"[C]") %>" href="Show_AnalystFirms_People.asp?GTcountry=<%=trim(request("GTcountry"))%>&ShowType=<%=trim(request("ShowType"))%>&ActType=<%=trim(request("ActType"))%>&SRCWord=[C]">C</a>
			      <a class="<%=SelectedActive(request("SRCWord"),"[D]") %>" href="Show_AnalystFirms_People.asp?GTcountry=<%=trim(request("GTcountry"))%>&ShowType=<%=trim(request("ShowType"))%>&ActType=<%=trim(request("ActType"))%>&SRCWord=[D]">D</a>
			      <a class="<%=SelectedActive(request("SRCWord"),"[E]") %>" href="Show_AnalystFirms_People.asp?GTcountry=<%=trim(request("GTcountry"))%>&ShowType=<%=trim(request("ShowType"))%>&ActType=<%=trim(request("ActType"))%>&SRCWord=[E]">E</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[F]") %>" href="Show_AnalystFirms_People.asp?GTcountry=<%=trim(request("GTcountry"))%>&ShowType=<%=trim(request("ShowType"))%>&ActType=<%=trim(request("ActType"))%>&SRCWord=[F]">F</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[G]") %>" href="Show_AnalystFirms_People.asp?GTcountry=<%=trim(request("GTcountry"))%>&ShowType=<%=trim(request("ShowType"))%>&ActType=<%=trim(request("ActType"))%>&SRCWord=[G]">G</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[H]") %>" href="Show_AnalystFirms_People.asp?GTcountry=<%=trim(request("GTcountry"))%>&ShowType=<%=trim(request("ShowType"))%>&ActType=<%=trim(request("ActType"))%>&SRCWord=[H]">H</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[I]") %>" href="Show_AnalystFirms_People.asp?GTcountry=<%=trim(request("GTcountry"))%>&ShowType=<%=trim(request("ShowType"))%>&ActType=<%=trim(request("ActType"))%>&SRCWord=[I]">I</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[J]") %>" href="Show_AnalystFirms_People.asp?GTcountry=<%=trim(request("GTcountry"))%>&ShowType=<%=trim(request("ShowType"))%>&ActType=<%=trim(request("ActType"))%>&SRCWord=[J]">J</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[K]") %>" href="Show_AnalystFirms_People.asp?GTcountry=<%=trim(request("GTcountry"))%>&ShowType=<%=trim(request("ShowType"))%>&ActType=<%=trim(request("ActType"))%>&SRCWord=[K]">K</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[L]") %>" href="Show_AnalystFirms_People.asp?GTcountry=<%=trim(request("GTcountry"))%>&ShowType=<%=trim(request("ShowType"))%>&ActType=<%=trim(request("ActType"))%>&SRCWord=[L]">L</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[M]") %>" href="Show_AnalystFirms_People.asp?GTcountry=<%=trim(request("GTcountry"))%>&ShowType=<%=trim(request("ShowType"))%>&ActType=<%=trim(request("ActType"))%>&SRCWord=[M]">M</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[N]") %>" href="Show_AnalystFirms_People.asp?GTcountry=<%=trim(request("GTcountry"))%>&ShowType=<%=trim(request("ShowType"))%>&ActType=<%=trim(request("ActType"))%>&SRCWord=[N]">N</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[O]") %>" href="Show_AnalystFirms_People.asp?GTcountry=<%=trim(request("GTcountry"))%>&ShowType=<%=trim(request("ShowType"))%>&ActType=<%=trim(request("ActType"))%>&SRCWord=[O]">O</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[P]") %>" href="Show_AnalystFirms_People.asp?GTcountry=<%=trim(request("GTcountry"))%>&ShowType=<%=trim(request("ShowType"))%>&ActType=<%=trim(request("ActType"))%>&SRCWord=[P]">P</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[Q]") %>" href="Show_AnalystFirms_People.asp?GTcountry=<%=trim(request("GTcountry"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[Q]">Q</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[R]") %>" href="Show_AnalystFirms_People.asp?GTcountry=<%=trim(request("GTcountry"))%>&ShowType=<%=trim(request("ShowType"))%>&ActType=<%=trim(request("ActType"))%>&SRCWord=[R]">R</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[S]") %>" href="Show_AnalystFirms_People.asp?GTcountry=<%=trim(request("GTcountry"))%>&ShowType=<%=trim(request("ShowType"))%>&ActType=<%=trim(request("ActType"))%>&SRCWord=[S]">S</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[T]") %>" href="Show_AnalystFirms_People.asp?GTcountry=<%=trim(request("GTcountry"))%>&ShowType=<%=trim(request("ShowType"))%>&ActType=<%=trim(request("ActType"))%>&SRCWord=[T]">T</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[U]") %>" href="Show_AnalystFirms_People.asp?GTcountry=<%=trim(request("GTcountry"))%>&ShowType=<%=trim(request("ShowType"))%>&ActType=<%=trim(request("ActType"))%>&SRCWord=[U]">U</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[V]") %>" href="Show_AnalystFirms_People.asp?GTcountry=<%=trim(request("GTcountry"))%>&ShowType=<%=trim(request("ShowType"))%>&ActType=<%=trim(request("ActType"))%>&SRCWord=[V]">V</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[W]") %>" href="Show_AnalystFirms_People.asp?GTcountry=<%=trim(request("GTcountry"))%>&ShowType=<%=trim(request("ShowType"))%>&ActType=<%=trim(request("ActType"))%>&SRCWord=[W]">W</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[X]") %>" href="Show_AnalystFirms_People.asp?GTcountry=<%=trim(request("GTcountry"))%>&ShowType=<%=trim(request("ShowType"))%>&ActType=<%=trim(request("ActType"))%>&SRCWord=[X]">X</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[Y]") %>" href="Show_AnalystFirms_People.asp?GTcountry=<%=trim(request("GTcountry"))%>&ShowType=<%=trim(request("ShowType"))%>&ActType=<%=trim(request("ActType"))%>&SRCWord=[Y]">Y</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[Z]") %>" href="Show_AnalystFirms_People.asp?GTcountry=<%=trim(request("GTcountry"))%>&ShowType=<%=trim(request("ShowType"))%>&ActType=<%=trim(request("ActType"))%>&SRCWord=[Z]">Z</a>
				  		   </p>
					 </div>
					 <!--div class="row">	
							<h5 class="font-weight-bold text-center w-100">By Companies</h5>
					 </div-->
							<ul class="no-list-style mb-3 row mx-0 p-0 ">
							<%
							dim TBlName
							''select distinct(companyname),[Website],country from [UPLEAD_MEDIA_PEOPLE]
							TBlName = "CB_Analyst_Firm_People"
								''CountryQry="select *,image_src as Company_Image_url from "&TBlName&" where [SRC_TYPE]='SOURCE1' "
							If trim(request("ActType"))<>"" Then
								CountryQry="select firstname,lastname,title,companyname,[Website],country,Company_Logo ,PERSON_LOGO from [VW_InfluencerPeople_And_Media_UL_People] where title like ('%"&trim(request("ActType"))&"%') "
								If Trim(request("SRCWord")) <> "" Then
										CountryQry = CountryQry & " and ([lastname] like '"&Trim(request("SRCWord"))&"%')  order by person_Logo desc,lastname"									
								End If

							else
								CountryQry="select firstname,lastname,title,companyname,[Website],country,Company_Logo ,PERSON_LOGO from [CB_Analyst_Firm_People] where 1=1 "
								If Trim(request("SRCWord")) <> "" Then
										CountryQry = CountryQry & "and (companyname like ('%Gartner%') OR companyname like ('%IDC%') OR companyname like ('%Forrester%') OR companyname like ('%Aberdeen%') OR companyname like ('%GigaOm%')) and ([lastname] like '"&Trim(request("SRCWord"))&"%')  order by person_Logo desc,lastname"									
								End If
							End If
							'''[VW_InfluencerPeople_And_Media_UL_People]
									
							''CountryQry = CountryQry & " and country is not null order by country"		
							''response.write CountryQry
							Set RSCountry = Server.CreateObject("ADODB.Recordset")
							RSCountry.Open CountryQry, Datasource4
							If Not RSCountry.EOF Then 
							
							While Not RSCountry.EOF%>
							
							<li class="col-xl-4 col-lg-4 col-md-6 col-sm-12 mx-auto mt-2 text-center mb-2 ">
								<div class="col-12 mx-auto border label   trademark  zing  p-2">
									<div class="d-flex justify-content-start align-items-center">

										<div class="left-block">
											<%
											if trim(RSCountry("person_Logo"))<>"NULL" Then%>
											<img src="<%=trim(RSCountry("person_Logo"))%>" class="img-fluid" border="0">
											<%elseIf trim(RSCountry("Company_Logo"))<>"NULL" Then%>
											<img src="<%=trim(RSCountry("Company_Logo"))%>" class="img-fluid" border="0">
											<%End If
											%>
										</div>
										<%
										dim websiteLink
										websiteLink = ""
										if instr(trim(RSCountry("website")),"http")>0 then
											websiteLink = trim(RSCountry("website"))
										Else
											websiteLink = "http://"&trim(RSCountry("website"))
										End If
										%>
										<div class="right-block">
											<div class="title pl-2">
												<h2><%=trim(RSCountry("firstname"))%>&nbsp;<%=trim(RSCountry("lastname"))%></h2>
												<h3> <%=trim(RSCountry("title"))%></h3>
												<h3> <a href='<%=trim(websiteLink)%>'><%=trim(RSCountry("companyname"))%></a></h3>
												<h3> <%=trim(RSCountry("country"))%></h3>
												<!--h5><a href='<%=trim(websiteLink)%>'class="lablehreflink"><%=trim(RSCountry("website"))%></a></h5-->
												
												
											</div>
										</div>
							
									</div>
							
								</div>
							</li>
							<%
							RSCountry.movenext
							wend
							else
							response.write "<li class='col-xl-4 col-lg-4 col-md-6 col-sm-12 mx-auto mt-2 text-center mb-2 '><font color='red'>No Companies Found With this Search</font></li>"
							End If
							set RSCountry = nothing
							%>	
							</ul>

						<!--div class="col-xl-3 col-lg-6 col-md-10 col-sm-12 mx-auto   mt-2 text-center mb-2">
							
							<h3 class="mt-4 text-capitalize  h3 ">INFLUENCERS</h3>
							<h3 class="mt-2 text-capitalize  h2 "><span class=" counter d-block" data-TargetNum="1524" data-Speed="2500">7321</span></h3>
							
							<hr/>
							<div  class="col-lg-11 col-12 mx-auto  text-left px-3">
							<h5 class="font-weight-bold text-left">Enterprise Level</h5>
							
							<ul class="list-group list-group-flush">
								<li class="list-group-item">Enterprise Level-1</li>
								<li class="list-group-item">Enterprise Level-2</li>
								<li class="list-group-item">Enterprise Level-3</li>
								<li class="list-group-item">Enterprise Level-4</li>
								<li class="list-group-item">Enterprise Level-5</li>
							  </ul>
							
							
							</div>
						</div-->
					</div>
				</div>




		</div>



		</div>
	
</section>

<!--====  End of Page Title  ====-->




<!--============================
=            Footer            =
=============================-->
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
<script src="./plugins/animated-counter/multi-animated-counter.js"></script>

</body>

</html>