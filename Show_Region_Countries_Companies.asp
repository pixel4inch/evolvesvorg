<!DOCTYPE html>
<!--#include file="LoadingImage.asp"-->
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
  <link href="https://evolvesv.org/css/style.css" rel="stylesheet"/>
  <link href="https://evolvesv.org/css/custome.css" rel="stylesheet"/>
  <link href="https://strategyr.com/css/CardsDesing.css" rel="stylesheet"/>
  <link href="https://evolvesv.org/css/view_speakers.css" rel="stylesheet"/>
  <link href="https://evolvesv.org/css/phoca-flags.css" rel="stylesheet"/>
  <link href="./plugins/jsvectormap-master/dist/css/jsvectormap.css" rel="stylesheet"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
  
  <!---WEB COMPONETNS-->
  <script src="./webcomponts/headerComponents.js"></script>
  <script src="./webcomponts/FooterComponent.js"></script>
  <script src="./webcomponts/ScrollToTop.js"></script>
  <script src="./webcomponts/dummytext.js"></script>
 
  <script>
  window.onbeforeunload = function () {
  window.scrollTo(0, 0);
	}
  </script>
  
<%
Response.flush
Function SelectedActive(val1,val2)
	IF trim(val1) = trim(val2) then
		SelectedActive = "active"		
	else
		SelectedActive = ""
	End IF
END Function


'' for paging
	dim k,rec_per_page
	rec_per_page=36
	Dim Cp,rowcount,i
		cp=Request.QueryString("Cp")
		EforEdit=Request.QueryString("E")
	if cp="" then
		cp=1
		EforEdit=cint(rec_per_page)
	end if 
	cpForEdit=cp

%>

<style>
.no-list-style, .no-list-style li {
	list-style: none;
}

</style>
</head>

<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->
<!--#include file="Encrypt_Decrypt_Links.asp"-->
<!--#include file="rc4.inc"-->
<body class="body-wrapper" id="container" data-spy="scroll" data-target=".privacy-nav" onBeforePrint="document.body.style.display='none';" onAfterPrint="document.body.style.display='block';" onContextmenu="return false" onSelectstart="return false" onDragstart="return false"  topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0">
<!--<div id="overlay">
    <div id="progstat" ></div>
    <div id="progress"></div>
    </div>
  
  </div>-->
<!--============================
=           Top Strip     Start   =
=============================-->
	<!--include file="ASPIncludes/topstrip.asp"-->
	<header-component></header-component>
<!--============================
=            Top Strip      End   =
=============================-->



<!--================================
=            Page Title            =
=================================-->
<!--<div id="endPopup">
						<a class="btn btn-sm btn-danger mt-3 <%=SelectedActive(request("Cp"),GTnum) %>" href="https://evolvesv.org/JoinUs.asp?PageType=<%=trim(SrcTypeSTR)%>" target="_blank" style=" align-items: center;   font-size: 17px;">MEMBER ZONE</a>
					</div>-->
<section class="w-100">
	<div>
		<div class="row">
			<div class="w-100">
				<!-- Page Title -->
				
				
				<%
			
				dim ShowTypeSTR, SRCWordSTR, GTregionSTR
				ShowTypeSTR = EnDeCrypt(trim(request("ShowType")),CHkGiaPSWD)
				SRCWordSTR = EnDeCrypt(trim(request("SRCWord")),CHkGiaPSWD)
				GTregionSTR = EnDeCrypt(trim(request("GTregion")),CHkGiaPSWD)
				
				'''ENCRYPT AGAIN
				dim REShowTypeSTR, RESRCWordSTR, REGTregionSTR
				REShowTypeSTR = server.urlencode(EnDeCrypt(trim(ShowTypeSTR),CHkGiaPSWD))
				RESRCWordSTR = server.urlencode(EnDeCrypt(trim(SRCWordSTR),CHkGiaPSWD))
				REGTregionSTR = server.urlencode(EnDeCrypt(trim(GTregionSTR),CHkGiaPSWD))
				
				Dim GetStatrtVal
				GetStatrtVal = EnDeCrypt(trim(request("Start")),CHkGiaPSWD)
							
				''response.write "GTregionSTR :"& GTregionSTR
				''Response.end%>
				<h1 class="main-font-color mb-0 font-display1 text-center" id="section-top">
					
					<%=ucase(ShowTypeSTR)%> IN 
					<%If (trim(GTregionSTR)="Asia-Pacific") or (trim(GTregionSTR)="Middle East") Then%>
					 THE
					<%END IF%>
					 <%=ucase(trim(GTregionSTR))%></h1>
				
				<%Dim Start1, StartBack
				If trim(GetStatrtVal)<>"" Then
					Start1 = trim(GetStatrtVal)+36
					If trim(GetStatrtVal)<>0 then
						StartBack = trim(GetStatrtVal) - 36
					else
						StartBack = 0
					End If
				Else
					Start1 = 36
					StartBack = 0
				End If%>
				
				
				
				
				
				<!-- Page Description -->

			</div>

			<div class="col-12 mx-auto"  >
				<div class="rounded  p-2 bg-white" >
					<div class="row d-flex flex-nowrap justify-content-center align-items-center mb-0 mt-3" style="gap: 16px;">
					<%If trim(Start1)>=72 Then
				
					''Response.write "<p align='center'><B> <font color='red'><strong style='color:red;'>VIEWING LIMIT EXCEEEDED. PLEASE CONTACT XING FOR MORE INFORMATION ON VIWING RESTRICTIONS. THANK YOU</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></b></p>"
					''response.end
					%>
					<div class="w-100 position-absolute  mb-1" style="display: flex;  top:-16px;  justify-content: space-between;    width: 100%;    padding: 10px;">
						<a class="a_back a_nav <%=SelectedActive(request("Cp"),GTnum) %>" href="Show_Region_Countries_Companies.asp?Start=<%=server.urlencode(EnDeCrypt(StartBack,CHkGiaPSWD))%>&amp;E=<%=E1%>&amp;SrcType=<%=Trim(request("SrcType"))%>&amp;SRCWord=<%=Trim(RESRCWordSTR)%>&amp;EncryptSTR=<%=Trim(request("EncryptSTR"))%>&ShowType=<%=trim(REShowTypeSTR)%>&GTregion=<%=trim(REGTregionSTR)%>" style="z-index:9999;  align-items: center; display:flex ;  font-weight: bold;   font-size: 25px;"><i class="fa fa-caret-left" aria-hidden="true"></i>	</a>
					</div>
					<div id="endPopup" style="width: 100%;height: 100vh;justify-content: space-between;flex-direction:column; left: 0px;top: 0px;background: rgb(237 237 237 / 90%);z-index: 99999; position: fixed !important; display: flex;justify-content: center; align-items: center;">
						<a class="btn btn-sm btn-danger mt-3 <%=SelectedActive(request("Cp"),GTnum) %>" href="https://evolvesv.org/JoinUs.asp?PageType=<%=trim(SrcTypeSTR)%>" target="_blank" style=" align-items: center;   font-size: 17px;">Login  to  Continue</a>
					</div>
				<%else%>
				
				
					
				
					<a class="a_back a_nav <%=SelectedActive(request("Cp"),GTnum) %>" href="Show_Region_Countries_Companies.asp?Start=<%=server.urlencode(EnDeCrypt(StartBack,CHkGiaPSWD))%>&amp;E=<%=E1%>&amp;SrcType=<%=Trim(request("SrcType"))%>&amp;SRCWord=<%=Trim(RESRCWordSTR)%>&amp;EncryptSTR=<%=Trim(request("EncryptSTR"))%>&ShowType=<%=trim(REShowTypeSTR)%>&GTregion=<%=trim(REGTregionSTR)%>" style="z-index:9999;  align-items: center; display:flex ;  font-weight: bold;   font-size: 25px;"><i class="fa fa-caret-left" aria-hidden="true"></i></a>
					<a class="a_next a_nav <%=SelectedActive(request("Cp"),GTnum) %>" href="Show_Region_Countries_Companies.asp?Start=<%=server.urlencode(EnDeCrypt(Start1,CHkGiaPSWD))%>&amp;E=<%=E1%>&amp;SrcType=<%=Trim(request("SrcType"))%>&amp;SRCWord=<%=Trim(RESRCWordSTR)%>&amp;EncryptSTR=<%=Trim(request("EncryptSTR"))%>&ShowType=<%=trim(REShowTypeSTR)%>&GTregion=<%=trim(REGTregionSTR)%>" style="z-index:9999;  align-items: center; display:flex ;font-weight: bold;   font-size: 25px;order: 2; "	><i class="fa fa-caret-right" aria-hidden="true"></i></a>
				
				
				<% 
				end if%>	
							<p class="Alp_Display  mt-0 mb-3 text-center"> 
				<%'if trim(chkOpt)="Company" then%>					
					<a style="width:42px" class="<%=SelectedActive(SRCWordSTR,"[0-9]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[0-9]",CHkGiaPSWD))%>">0-9</a>&nbsp;
				<%'end if%>
                  <a class="<%=SelectedActive(SRCWordSTR,"[A]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[A]",CHkGiaPSWD))%>">A</a> 
				  <a class="<%=SelectedActive(SRCWordSTR,"[B]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[B]",CHkGiaPSWD))%>">B</a>
                  <a class="<%=SelectedActive(SRCWordSTR,"[C]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[C]",CHkGiaPSWD))%>">C</a>
			      <a class="<%=SelectedActive(SRCWordSTR,"[D]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[D]",CHkGiaPSWD))%>">D</a>
			      <a class="<%=SelectedActive(SRCWordSTR,"[E]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[E]",CHkGiaPSWD))%>">E</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[F]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[F]",CHkGiaPSWD))%>">F</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[G]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[G]",CHkGiaPSWD))%>">G</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[H]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[H]",CHkGiaPSWD))%>">H</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[I]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[I]",CHkGiaPSWD))%>">I</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[J]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[J]",CHkGiaPSWD))%>">J</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[K]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[K]",CHkGiaPSWD))%>">K</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[L]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[L]",CHkGiaPSWD))%>">L</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[M]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[M]",CHkGiaPSWD))%>">M</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[N]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[N]",CHkGiaPSWD))%>">N</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[O]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[O]",CHkGiaPSWD))%>">O</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[P]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[P]",CHkGiaPSWD))%>">P</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[Q]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[Q]",CHkGiaPSWD))%>">Q</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[R]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[R]",CHkGiaPSWD))%>">R</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[S]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("S",CHkGiaPSWD))%>">S</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[T]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[T]",CHkGiaPSWD))%>">T</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[U]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[U]",CHkGiaPSWD))%>">U</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[V]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[V]",CHkGiaPSWD))%>">V</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[W]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[W]",CHkGiaPSWD))%>">W</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[X]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[X]",CHkGiaPSWD))%>">X</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[Y]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[Y]",CHkGiaPSWD))%>">Y</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[Z]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[Z]",CHkGiaPSWD))%>">Z</a>
				  		   </p>
					 </div> 
					 <!--div class="row">	
							<h5 class="font-weight-bold text-center w-100">By Region</h5>
					 </div-->
							<div id="delegation_speakers" class="pt-2 d-flex flex-wrap  justify-content-lg-center  justify-content-xl-center justify-content-md-center justify-content-center">
							<%
							dim TBlName
							TBlName = "GIA_MC_Program.dbo.CB_Global_Startup_Companies"
							
							If trim(ShowTypeSTR)="STARTUPS" Then
								TBlName = "GIA_MC_Program.dbo.CB_Global_Startup_Companies"
								CountryQry="select a.*,a.image_path as Company_Image_url from "&TBlName&" a, GIA_MC_Program.dbo.REPORTS_REGIONS_LIST$ b where a.country =b.region_country_name and b.region = '"&trim(GTregionSTR)&"' and a.image_path is not null"
								If Trim(SRCWordSTR) <> "" Then
										CountryQry = CountryQry & " and ([Organization_Name] like '"&Trim(SRCWordSTR)&"%') order by image_path desc "									
								End If
							ElseIf trim(ShowTypeSTR)="Enterprises" Then
								TBlName = "GIA_MC_Program.dbo.uld_marketglass_company_images"
								CountryQry="select *,Company_Name as Organization_Name,company_website as website  from "&TBlName&" where country = '"&trim(GTregionSTR)&"' and [Company_Sales] not in ('$1 Million - $10 Million','Under $1 Million','NULL') and Company_Image_url is not null"
								If Trim(SRCWordSTR) <> "" Then
										CountryQry = CountryQry & " and ([Company_Name] like '"&Trim(SRCWordSTR)&"%') order by Company_Name "									
								End If
							End If
							
							''limit 100, 200
							Dim LimitSTR
							LimitSTR = ""
							''OFFSET 0 ROWS -- START FROM RECORD
							''FETCH NEXT 30 ROWS ONLY
							If trim(GetStatrtVal)="" then
								LimitSTR = "OFFSET 0 ROWS FETCH NEXT "&cdbl(rec_per_page)&" ROWS ONLY"
							Else
								LimitSTR = "OFFSET "&trim(GetStatrtVal)&" ROWS FETCH NEXT "&cdbl(rec_per_page)&" ROWS ONLY" 
								'''"limit "&trim(request("Start"))&", "&trim(request("E"))
							End If
							
							CountryQry = CountryQry & "  " &LimitSTR
									
							''CountryQry = CountryQry & " and country is not null order by country"		
							''response.write CountryQry
							''response.end
							Set RSCountry = Server.CreateObject("ADODB.Recordset")
							RSCountry.CursorType = 3				
							
							RSCountry.Open CountryQry, Datasource1
							RSCountry.PageSize = cdbl(rec_per_page)	
							If Not RSCountry.EOF Then 
							
							While Not RSCountry.EOF%>
							
							<div class="delegation-card ">
							<div class="item">
								<div class="col-12 card-desing-1 mx-auto p-2">
								<!--<a href="<%=trim(RSCountry("website"))%>" target="new" class="lablehreflink">-->
									<div class="d-flex justify-content-start align-items-center flex-column">

										<div class="img-block text-center">
											<%
											If trim(RSCountry("Company_Image_url"))<>"NA" Then%>
											<img src="<%=trim(RSCountry("Company_Image_url"))%>" class="w-100"  border="0">
											<%End If
											%>
										</div>

										<div class="card-content">
											
												<h3><%=trim(RSCountry("Organization_name"))%></h3>
												<h4> <%=trim(RSCountry("Country"))%></h4>
												<!--h3></h3-->
							
											
										</div>
							
									</div>
									<!--</a>-->
							
								</div>
								</div>
							</div>
							<%
							RSCountry.movenext
							wend
							else
							response.write "<li class='col-xl-4 col-lg-4 col-md-6 col-sm-12 mx-auto mt-2 text-center mb-2 '><font color='red'>No Companies Found With this Search</font></li>"
							End If
							set RSCountry = nothing
							
							
							
							'''server.urlencode(EnDeCrypt(trim(ShowTypeSTR),CHkGiaPSWD))
							%>					
								
								
							</div>

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
					<div class="row d-flex flex-nowrap justify-content-center align-items-center mb-4" style="gap: 16px;">
					<%If trim(Start1)>=72 Then
				
					''Response.write "<p align='center'><B> <font color='red'><strong style='color:red;'>VIEWING LIMIT EXCEEEDED. PLEASE CONTACT XING FOR MORE INFORMATION ON VIWING RESTRICTIONS. THANK YOU</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></b></p>"
					''response.end
					%>
					<div class="w-100 position-absolute  mb-1" style="display: flex;  top:-16px;  justify-content: space-between;    width: 100%;    padding: 10px;">
						<a class="a_back a_nav <%=SelectedActive(request("Cp"),GTnum) %>" href="Show_Region_Countries_Companies.asp?Start=<%=server.urlencode(EnDeCrypt(StartBack,CHkGiaPSWD))%>&amp;E=<%=E1%>&amp;SrcType=<%=Trim(request("SrcType"))%>&amp;SRCWord=<%=Trim(RESRCWordSTR)%>&amp;EncryptSTR=<%=Trim(request("EncryptSTR"))%>&ShowType=<%=trim(REShowTypeSTR)%>&GTregion=<%=trim(REGTregionSTR)%>" style="z-index:9999;  align-items: center; display:flex ;  font-weight: bold;   font-size: 25px;"><i class="fa fa-caret-left" aria-hidden="true"></i>	</a>
					</div>
					<div id="endPopup" style="width: 100%;height: 100vh;justify-content: space-between;flex-direction:column; left: 0px;top: 0px;background: rgb(237 237 237 / 90%);z-index: 999; position: fixed !important; display: flex;justify-content: center; align-items: center;">
						<a class="btn btn-sm btn-danger mt-3 <%=SelectedActive(request("Cp"),GTnum) %>" href="https://evolvesv.org/JoinUs.asp?PageType=<%=trim(SrcTypeSTR)%>" target="_blank" style=" align-items: center;   font-size: 17px;">Login  to  Continue</a>
					</div>
				<%else%>
				
				
					
				
					<a class="a_back a_nav <%=SelectedActive(request("Cp"),GTnum) %>" href="Show_Region_Countries_Companies.asp?Start=<%=server.urlencode(EnDeCrypt(StartBack,CHkGiaPSWD))%>&amp;E=<%=E1%>&amp;SrcType=<%=Trim(request("SrcType"))%>&amp;SRCWord=<%=Trim(RESRCWordSTR)%>&amp;EncryptSTR=<%=Trim(request("EncryptSTR"))%>&ShowType=<%=trim(REShowTypeSTR)%>&GTregion=<%=trim(REGTregionSTR)%>" style="z-index:9999;  align-items: center; display:flex ;  font-weight: bold;   font-size: 25px;"><i class="fa fa-caret-left" aria-hidden="true"></i></a>
					<a class="a_next a_nav <%=SelectedActive(request("Cp"),GTnum) %>" href="Show_Region_Countries_Companies.asp?Start=<%=server.urlencode(EnDeCrypt(Start1,CHkGiaPSWD))%>&amp;E=<%=E1%>&amp;SrcType=<%=Trim(request("SrcType"))%>&amp;SRCWord=<%=Trim(RESRCWordSTR)%>&amp;EncryptSTR=<%=Trim(request("EncryptSTR"))%>&ShowType=<%=trim(REShowTypeSTR)%>&GTregion=<%=trim(REGTregionSTR)%>" style="z-index:9999;  align-items: center; display:flex ;font-weight: bold;   font-size: 25px;order: 2; "	><i class="fa fa-caret-right" aria-hidden="true"></i></a>
				
				
				<% 
				end if%>	
							<p class="Alp_Display  mt-0 mb-3 text-center"> 
				<%'if trim(chkOpt)="Company" then%>					
					<a  style="width:42p" class="<%=SelectedActive(SRCWordSTR,"[0-9]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[0-9]",CHkGiaPSWD))%>">0-9</a>&nbsp;
				<%'end if%>
                  <a class="<%=SelectedActive(SRCWordSTR,"[A]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[A]",CHkGiaPSWD))%>">A</a> 
				  <a class="<%=SelectedActive(SRCWordSTR,"[B]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[B]",CHkGiaPSWD))%>">B</a>
                  <a class="<%=SelectedActive(SRCWordSTR,"[C]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[C]",CHkGiaPSWD))%>">C</a>
			      <a class="<%=SelectedActive(SRCWordSTR,"[D]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[D]",CHkGiaPSWD))%>">D</a>
			      <a class="<%=SelectedActive(SRCWordSTR,"[E]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[E]",CHkGiaPSWD))%>">E</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[F]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[F]",CHkGiaPSWD))%>">F</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[G]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[G]",CHkGiaPSWD))%>">G</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[H]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[H]",CHkGiaPSWD))%>">H</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[I]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[I]",CHkGiaPSWD))%>">I</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[J]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[J]",CHkGiaPSWD))%>">J</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[K]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[K]",CHkGiaPSWD))%>">K</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[L]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[L]",CHkGiaPSWD))%>">L</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[M]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[M]",CHkGiaPSWD))%>">M</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[N]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[N]",CHkGiaPSWD))%>">N</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[O]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[O]",CHkGiaPSWD))%>">O</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[P]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[P]",CHkGiaPSWD))%>">P</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[Q]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[Q]",CHkGiaPSWD))%>">Q</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[R]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[R]",CHkGiaPSWD))%>">R</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[S]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("S",CHkGiaPSWD))%>">S</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[T]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[T]",CHkGiaPSWD))%>">T</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[U]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[U]",CHkGiaPSWD))%>">U</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[V]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[V]",CHkGiaPSWD))%>">V</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[W]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[W]",CHkGiaPSWD))%>">W</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[X]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[X]",CHkGiaPSWD))%>">X</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[Y]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[Y]",CHkGiaPSWD))%>">Y</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[Z]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(REGTregionSTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[Z]",CHkGiaPSWD))%>">Z</a>
				  		   </p>
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
 <!-- <div class="scroll-top-to">
    <i class="ti-angle-up"></i>
  </div>-->
  
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

<script id="jsbin-javascript">
  ;(function(){
    function id(container){return document.getElementById(container); }
    function loadbar() {
      var ovrl = id("overlay"),
          prog = id("progress"),
          stat = id("progstat"),
          img = document.images,
          c = 0;
          tot = img.length;
  
      function imgLoaded(){
        c += 1;
        var perc = ((100/tot*c) << 0) +"%";
        prog.style.width = perc;
        stat.innerHTML = "Loading <div><span></span></div>"+ "<i>" + perc + "</i>";
        if(c===tot) return doneLoading();
      }
      function doneLoading(){
        ovrl.style.opacity = 0;
        setTimeout(function(){ 
          ovrl.style.display = "none";
        }, 1200);
      }
      for(var i=0; i<tot; i++) {
        var tImg     = new Image();
        tImg.onload  = imgLoaded;
        tImg.onerror = imgLoaded;
        tImg.src     = img[i].src;
      }    
    }
    document.addEventListener('DOMContentLoaded', loadbar, false);
  }());
  </script>
  <script type="text/javascript">
	$(document).ready(function() {
		$("#overlay_loading").hide();
	});
</script>
</html>