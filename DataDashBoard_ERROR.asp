<!DOCTYPE html>
<%
session("STcode")="srinivas"
If trim(session("STcode"))="" Then
	''response.redirect "https://www.strategyr.com/Evolv_Gateways.asp?login=sesout"
	response.redirect "https://www.strategyr.com/evolv/"
End If
%>
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
</head>

<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->

<body class="body-wrapper" data-spy="scroll" data-target=".privacy-nav">


<!--============================
=           Top Strip     Start   =
=============================-->
	<!--include file="ASPIncludes/topstrip.asp"-->
<!--============================
=            Top Strip      End   =
=============================-->
 <!--============================
=            HEADER           =
=============================-->
  <header-component></header-component>
  <!--============================
    PLACEKEEPTER BANNER
=============================-->    


<!--================================
=            Page Title            =
=================================-->

<section class="section page-title">
	<div class="container">
		<div class="row">

			
			<div class="col-sm-12 col-md-12 col-lg-8  m-auto">
				<!---img src="https://www.strategyr.com/images/zing__new2.JPG" width="20%" border="0"--->
				<!-- Page Title -->
				<div class="section-title mb-3">
					<h2>DATA DASHBOARD</h2>
				</div>
				<!-- Page Description -->
				
			

			</div>

			<div class="col-12 mx-auto ecosysem-dashboard" id="ecosysem-dashboard" >
				<div class="rounded  p-2 bg-white">
					<div class="row">
						<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-12     mt-2 text-center mb-2 px-1 px-xl-1 px-lg-3 px-md-4">
							<div style="height:55px;">
							<h3 class="mt-4 text-capitalize  h3 ">STARTUPS</h3>
							<h3 class="mt-2 text-capitalize   h2  counter"><span class=" counter d-block">715,294</span></h3>
							</div>
							<hr/>
							<div  class="col-xl-12 col-12 mx-auto  text-left px-2">
							<a class="collapse_click collapsed" data-toggle="collapse" href="#startups_byregion" role="button" aria-expanded="false" aria-controls="collapseExample">
							<h5 class="font-weight-bold text-left">By Region</h5></a>
							<div class="collapse" id="startups_byregion"> 
							<ul class="list-group list-group-flush mb-3">
							<%
							RegionQry="select count(*) as RegCNT,b.region from CB_Global_Startup_Companies a, REPORTS_REGIONS_LIST$ b where a.country =b.region_country_name group by b.region order by b.region"							
							Set RSRegion = Server.CreateObject("ADODB.Recordset")
							RSRegion.Open RegionQry, Datasource4
							If Not RSRegion.EOF Then 
							
							While Not RSRegion.EOF%>
							 
								<li class="list-group-item"><span><%=trim(RSRegion("region"))%> (<a href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(RSRegion("region"))%>&ShowType=STARTUPS&SRCWord=[A]" target="_new" style="color:blue;"><%=trim(RSRegion("RegCNT"))%></a>)</span></li>
								<!--<li class="list-group-item"><%=trim(RSRegion("region"))%> (<%=trim(RSRegion("RegCNT"))%>)</li>-->
							<%
							''&StupType=<%=trim(request("StupType"))
							
							RSRegion.movenext
							wend
							End If
							set RSRegion = nothing
							%>	
							  </ul>
							 </div>

							<a class="collapse_click collapsed" data-toggle="collapse" href="#startups_bycountry" role="button" aria-expanded="false" aria-controls="collapseExample">
							<h5 class="font-weight-bold text-left">By Country</h5></a>
							<div class="collapse" id="startups_bycountry"> 
							<ul class="list-group list-group-flush mb-3">
							<%
							''CountryQry="select country,count(*) as CountryCNT,flag_code from CB_Global_Startup_Companies group by country,flag_code having count(*)>49 and country is not null order by country "	
							CountryQry="select country,count(*) as CountryCNT,b.flag_code as flagcode from CB_Global_Startup_Companies a, REPORTS_REGIONS_LIST$ b where a.country =b.region_country_name group by a.country,b.flag_code having count(*)>99 and a.country is not null order by a.country"
							Set RSCountry = Server.CreateObject("ADODB.Recordset")
							RSCountry.Open CountryQry, Datasource4
							If Not RSCountry.EOF Then 
							
							While Not RSCountry.EOF%>
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags <%=trim(RSCountry("flagcode"))%>"></div><span><%=trim(RSCountry("country"))%> (<a href="Show_Country_Companies.asp?GTcountry=<%=trim(RSCountry("country"))%>&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;"><%=trim(RSCountry("CountryCNT"))%></a>)</span></li>
							<!--<a href="Show_Country_Companies.asp?GTcountry=<%=trim(RSCountry("country"))%>&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;"><%=trim(RSCountry("CountryCNT"))%></a>-->
							<%
							RSCountry.movenext
							wend
							End If
							set RSCountry = nothing
							%>	
							  </ul>
								</div>
							
							<!--<a class="collapse_click collapsed" data-toggle="collapse" href="#EVOLV_byDomain" role="button" aria-expanded="false" aria-controls="collapseExample">
							<h5 class="font-weight-bold text-left">EVOLV By Domain</h5></a>
							<div class="collapse" id="EVOLV_byDomain">
							<ul class="list-group list-group-flush mb-3">
							
							<%
							DomainQry="select GIA_KW,count(*) as DomainCNT FROM [GIA_MC_PROGRAM].[dbo].[CB_Industry_Wise_Companies] group by GIA_KW"							
							Set RSDomain = Server.CreateObject("ADODB.Recordset")
							RSDomain.Open DomainQry, Datasource4
							If Not RSDomain.EOF Then 
							dim getGIA_KW
							While Not RSDomain.EOF
							getGIA_KW = trim(RSDomain("GIA_KW"))
							
							If trim(getGIA_KW)="EduTech " Then
							getGIA_KW = "EdTech "
							End If
							%>
							
								<li class="list-group-item"><span><%=trim(getGIA_KW)%> (<a href="Show_Country_Companies.asp?GTCountry=<%=trim(getGIA_KW)%>&StupType=DOMAIN&ShowType=DOMAIN&SRCWord=[A]" target="_new" style="color:blue;"><%=trim(RSDomain("DomainCNT"))%></a>)</span></li>
							<%
							RSDomain.movenext
							wend
							End If
							set RSDomain = nothing
							%>	
								  </ul>
								  </div>
							<a class="collapse_click collapsed" data-toggle="collapse" href="#EVOLV_byStage" role="button" aria-expanded="false" aria-controls="collapseExample">	  
							<h5 class="font-weight-bold text-left">EVOLV By Stage</h5></a>
							<div class="collapse" id="EVOLV_byStage">
							<ul class="list-group list-group-flush mb-3">
							<%
							''StageQry="select t.range as [type], count(*) as [Stage_count] from ( select case when try_cast(Total_Funding_Amount_Currency_in_USD as float) between 0 and 999999 then ' Early Stage'  when try_cast(Total_Funding_Amount_Currency_in_USD as float) between 1000000 and 25000000 then ' Middle Stage' when try_cast(Total_Funding_Amount_Currency_in_USD as float) between 25000000 and 250000000000000 then ' Late Stage'  else ' Very Early Stage' end as range from CB_Global_Startup_Companies where try_cast(Total_Funding_Amount_Currency_in_USD as float)>=1) t group by t.range"
							''StageQry=" select 'SEED STAGE' as type,count(*) as Stage_count from  CB_Global_Startup_Companies where  try_cast(Total_Funding_Amount_Currency_in_USD as float) between 0 and 999999  union all  select 'GROWTH STAGE' as type,count(*) as Stage_count from  CB_Global_Startup_Companies where try_cast(Total_Funding_Amount_Currency_in_USD as float) between 1000000 and 25000000  union all  select 'LATE STAGE' as type,count(*) as Stage_count from  CB_Global_Startup_Companies where try_cast(Total_Funding_Amount_Currency_in_USD as float) between 25000000 and 2500000000  union all  select 'LATE STAGE' as type,count(*) as Stage_count from  CB_Global_Startup_Companies where try_cast(Total_Funding_Amount_Currency_in_USD as float) >  2500000000"
							StageQry="select 'SEED STAGE' as type,count(*) as Stage_count from  CB_Global_Startup_Companies where  try_cast(Total_Funding_Amount_Currency_in_USD as float) between 0 and 999999  union all  select 'GROWTH STAGE' as type,count(*) as Stage_count from  CB_Global_Startup_Companies where try_cast(Total_Funding_Amount_Currency_in_USD as float) between 1000000 and 25000000  union all  select 'LATE STAGE' as type,count(*) as Stage_count from  CB_Global_Startup_Companies where try_cast(Total_Funding_Amount_Currency_in_USD as float) > 25000000"
							Set RSStage = Server.CreateObject("ADODB.Recordset")
							RSStage.Open StageQry, Datasource4
							If Not RSStage.EOF Then 
							
							While Not RSStage.EOF%>
							
								<li class="list-group-item"><span><%=trim(RSStage("type"))%> (<a href="Show_Country_Companies.asp?GTCountry=<%=trim(RSStage("type"))%>&StupType=<%=trim(RSStage("type"))%>&ShowType=STARTUPS" target="_new" style="color:blue;"><%=trim(RSStage("Stage_count"))%></a>)</span></li>
							<%
							RSStage.movenext
							wend
							End If
							set RSStage = nothing
							%>
								</ul>
							</div>-->
							
							</div>


						</div>
						<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-12     mt-2 text-center mb-2 px-1 px-xl-1 px-lg-3 px-md-4">
							<div style="height:55px;">
							<h3 class="mt-4 text-capitalize  h3 ">INVESTORS</h3>
							<h3 class="mt-2 text-capitalize  h2 "><span class=" counter d-block" >114,870</span></h3>
							</div>
							<hr/>
							<div  class="col-lg-12 col-12 mx-auto  text-left px-2">
							<a class="collapse_click collapsed" data-toggle="collapse" href="#Investors_byRegion" role="button" aria-expanded="false" aria-controls="collapseExample">	  
							<h5 class="font-weight-bold text-left">By Region</h5></a>
							<div class="collapse" id="Investors_byRegion">
							<ul class="list-group list-group-flush mb-3">
								<%
							InRegionQry="select count(*) as RegCNT,b.region from eventdatacurator.dbo.CB_Investors a, REPORTS_REGIONS_LIST$ b where a.country =b.region_country_name group by b.region order by b.region"							
							Set inRSRegion = Server.CreateObject("ADODB.Recordset")
							inRSRegion.Open InRegionQry, Datasource4
							If Not inRSRegion.EOF Then 
							
							While Not inRSRegion.EOF%>
							 
								<li class="list-group-item"><span><%=trim(inRSRegion("region"))%> (<a href="Show_Investor_country_Companies.asp?GTcountry=<%=trim(inRSRegion("region"))%>&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=REGION" target="_new" style="color:blue;"><%=trim(inRSRegion("RegCNT"))%></a>)</span></li>
								<!--<li class="list-group-item"><span><%=trim(inRSRegion("region"))%> (<a href="Show_InvestorRegion_Countries.asp?GTregion=<%=trim(inRSRegion("region"))%>&ShowType=INVESTOR WORLD" target="_new" style="color:blue;"><%=trim(inRSRegion("RegCNT"))%></a>)</span></li>-->
								<!--<li class="list-group-item"><%=trim(inRSRegion("region"))%> (<%=trim(inRSRegion("RegCNT"))%>)</li>-->
							<%
							inRSRegion.movenext
							wend
							End If
							set inRSRegion = nothing
							%>	
							  </ul>
							</div>  
							  <a class="collapse_click collapsed" data-toggle="collapse" href="#INVESTORS_bytype" role="button" aria-expanded="false" aria-controls="collapseExample">
							  <h5 class="font-weight-bold text-left">By Type</h5></a>
							  <div class="collapse" id="INVESTORS_bytype">
								<ul class="list-group list-group-flush mb-3">
								
								<li class="list-group-item "><span>Venture Capital (<a href="Show_Investor_country_Companies.asp?GTcountry=Venture Capital&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=INVESTOR" target="_new" style="color:blue;">19922</a>)</span></li>
								<li class="list-group-item "><span>Angel Group (<a href="Show_Investor_country_Companies.asp?GTcountry=Angel Group&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=INVESTOR" target="_new" style="color:blue;">1516</a>)</span></li>
								<li class="list-group-item "><span>Accelerator (<a href="Show_Investor_country_Companies.asp?GTcountry=Accelerator&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=INVESTOR" target="_new" style="color:blue;">1815</a>)</span></li>
								<li class="list-group-item "><span>Incubator (<a href="Show_Investor_country_Companies.asp?GTcountry=Incubator&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=INVESTOR" target="_new" style="color:blue;">1040</a>)</span></li>
							  <li class="list-group-item "><span>Family Investment Office (<a href="Show_Investor_country_Companies.asp?GTcountry=Family Investment Office&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=INVESTOR" target="_new" style="color:blue;">918</a>)</span></li>
							  <li class="list-group-item "><span>Private Equity Firm (<a href="Show_Investor_country_Companies.asp?GTcountry=Private Equity Firm&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=INVESTOR" target="_new" style="color:blue;">7864</a>)</span></li>
							  <li class="list-group-item "><span>Corporate Venture Capital (<a href="Show_Investor_country_Companies.asp?GTcountry=Corporate Venture Capital&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=INVESTOR" target="_new" style="color:blue;">1110</a>)</span></li>
							  </ul>
							  </div>
							 
							
							<!--<a class="collapse_click collapsed" data-toggle="collapse" href="#INVESTORS_bycountry" role="button" aria-expanded="false" aria-controls="collapseExample">
							<h5 class="font-weight-bold text-left">By Country</h5></a>
							<div class="collapse" id="INVESTORS_bycountry"> 
							
							<ul class="list-group list-group-flush mb-3">
							<%
							inCountryQry="select country,count(*) as CountryCNT,b.flag_code  as flagcode from eventdatacurator.dbo.CB_Investors a, REPORTS_REGIONS_LIST$ b where a.country =b.region_country_name  group by a.country,b.flag_code having count(*)>99 and country is not null order by country "							
							Set inRSCountry = Server.CreateObject("ADODB.Recordset")
							inRSCountry.Open inCountryQry, Datasource4
							If Not inRSCountry.EOF Then 
							
							While Not inRSCountry.EOF%>
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags <%=trim(inRSCountry("flagcode"))%>"></div><span><%=trim(inRSCountry("country"))%> (<a href="Show_Investor_country_Companies.asp?GTcountry=<%=trim(inRSCountry("country"))%>&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;"><%=trim(inRSCountry("CountryCNT"))%></a>)</span></li>
								
							<%
							inRSCountry.movenext
							wend
							End If
							set inRSCountry = nothing
							%>	
							  </ul>
							  </div>-->
							
						<!--	  <h5 class="font-weight-bold text-left">By Type</h5>
							
								<ul class="list-group list-group-flush mb-3">-->
								<%
							inTypeQry="select company_type,count(company_type) as typecount from eventdatacurator.dbo.CB_Investors group by  company_type having count(company_type)>100 order by company_type"							
							Set inRSType = Server.CreateObject("ADODB.Recordset")
							inRSType.Open inTypeQry, Datasource4
							If Not inRSType.EOF Then 
							
							While Not inRSType.EOF%>
							
							<!--	<li class="list-group-item"><%=trim(inRSType("company_type"))%> (<%=trim(inRSType("typecount"))%>)</li>-->
							<%
							inRSType.movenext
							wend
							End If
							set inRSType = nothing
							%>	
							<!--	  </ul>-->

		
							<!--	  <h5 class="font-weight-bold text-left">By Media</h5>
							
								  <ul class="list-group list-group-flush mb-3">
									  <li class="list-group-item">Media-1</li>
									  <li class="list-group-item">Media-2</li>
									  <li class="list-group-item">Media-3</li>
									  <li class="list-group-item">Media-4</li>
									  <li class="list-group-item">Media-5</li>
									</ul>-->
							
							
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-12     mt-2 text-center mb-2 px-1 px-xl-1 px-lg-3 px-md-4">
							<div style="height:55px;">						
							<h3 class="mt-4 text-capitalize  h3 ">ENTERPRISES</h3>
							<h3 class="mt-2 text-capitalize  h2 "><span class=" counter d-block" >813,544</span></h3>							
							</div>
							<hr/>
							<div  class="col-lg-12 col-12 mx-auto  text-left px-2">
							<a class="collapse_click collapsed" data-toggle="collapse" href="#ENTERPRISES_byregion" role="button" aria-expanded="false" aria-controls="collapseExample">
							<h5 class="font-weight-bold text-left">By Region</h5></a>	
							<div class="collapse" id="ENTERPRISES_byregion"> 							
							<ul class="list-group list-group-flush">							
							<%
							''' LIST FROM CB PUBLIC COMPANIES
							'''InRegionQry="select count(*) as RegCNT,b.region from [GIA_MC_PROGRAM].[dbo].[Public_CB_Companies_Full_List] a, REPORTS_REGIONS_LIST$ b where ltrim(rtrim(a.country)) =ltrim(rtrim(b.region_country_name)) group by b.region order by b.region"							
							''[GIA_MC_PROGRAM].[dbo].[uld_marketglass_company_images] '' [vw_InfluencersCompany_Variables]						
							''InRegionQry="select count(*) as RegCNT,b.region from [GIA_MC_PROGRAM].[dbo].[uld_marketglass_company_images] a, REPORTS_REGIONS_LIST$ b where ltrim(rtrim(a.country)) =ltrim(rtrim(b.region_country_name)) group by b.region order by b.region"							
							InRegionQry="select count(*) as RegCNT,b.region from [GIA_MC_PROGRAM].[dbo].[vw_InfluencersCompany_Variables] a, REPORTS_REGIONS_LIST$ b where ltrim(rtrim(a.country)) =ltrim(rtrim(b.region_country_name)) group by b.region order by b.region"							
							Set inRSRegion = Server.CreateObject("ADODB.Recordset")
							inRSRegion.Open InRegionQry, Datasource4
							If Not inRSRegion.EOF Then 
							
							While Not inRSRegion.EOF%>
							 
								<li class="list-group-item"><span><%=trim(inRSRegion("region"))%> (<a href="Show_enterprise_country_Companies.asp?GTregion=<%=trim(inRSRegion("region"))%>&ShowType=ENTERPRISE&SRCWord=[A]" target="_new" style="color:blue;"><%=trim(inRSRegion("RegCNT"))%></a>)</span></li>
								<!--li class="list-group-item"><%=trim(inRSRegion("region"))%> (<%=trim(inRSRegion("RegCNT"))%>)</li-->
								
							<%
							inRSRegion.movenext
							wend
							End If
							set inRSRegion = nothing
							%>	
								
							  </ul>
							 </div>
							<a class="collapse_click collapsed" data-toggle="collapse" href="#ENTERPRISES_bycountry" role="button" aria-expanded="false" aria-controls="collapseExample">
							<h5 class="font-weight-bold text-left">By Country</h5></a>
							<div class="collapse" id="ENTERPRISES_bycountry"> 
							
							<ul class="list-group list-group-flush mb-3">
							<%
							''' LIST FROM CB PUBLIC COMPANIES
							''' inCountryQry="select country,count(*) as CountryCNT,b.flag_code as flagcode from [GIA_MC_PROGRAM].[dbo].[Public_CB_Companies_Full_List] a, REPORTS_REGIONS_LIST$ b where trim(a.country) =b.region_country_name group by a.country,b.flag_code having count(*)>99 and a.country is not null order by a.country "							
							inCountryQry="select country,count(*) as CountryCNT,b.flag_code as flagcode from [GIA_MC_PROGRAM].[dbo].[vw_InfluencersCompany_Variables] a, REPORTS_REGIONS_LIST$ b where trim(a.country) = b.region_country_name group by a.country,b.flag_code having count(*)>49 and a.country is not null order by a.country "							
							Set inRSCountry = Server.CreateObject("ADODB.Recordset")
							inRSCountry.Open inCountryQry, Datasource4
							If Not inRSCountry.EOF Then 
							
							While Not inRSCountry.EOF%>							
									<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags <%=trim(inRSCountry("flagcode"))%>"></div><span><%=trim(inRSCountry("country"))%> (<a href="Show_Country_Companies.asp?GTcountry=<%=trim(inRSCountry("country"))%>&SRCWord=[A]&ShowType=Enterprises" target="_new" style="color:blue;"><%=trim(inRSCountry("CountryCNT"))%>)</span></a>
								
							<%
							inRSCountry.movenext
							wend
							End If
							set inRSCountry = nothing
							%>	
							  </ul>
							  </div>
							  
							
							
							</div>
						</div>
						
						
						<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-12     mt-2 text-center mb-2 px-1 px-xl-1 px-lg-3 px-md-4">
							<div style="height:55px;">
							<h3 class="mt-4 text-capitalize  h3 ">INFLUENCERS</h3>
							<h3 class="mt-2 text-capitalize  h2 "><span class=" counter d-block" >4,875,331</span></h3>
							</div>
							<hr/>
							<div  class="col-lg-12 col-12 mx-auto  text-left px-2">
							<a class="collapse_click collapsed" data-toggle="collapse" href="#INFLUENCERS_byRegion" role="button" aria-expanded="false" aria-controls="collapseExample"> 							
							<h5 class="font-weight-bold text-left">By Region</h5></a>
							<div class="collapse" id="INFLUENCERS_byRegion"> 
							<ul class="list-group list-group-flush mb-3">
							<%
							inCountryQry="select count(*) as RegCNT,b.region from [GIA_MC_PROGRAM].[dbo].[InfluencersPeople] a, REPORTS_REGIONS_LIST$ b where ltrim(rtrim(a.country)) =ltrim(rtrim(b.region_country_name)) group by b.region order by b.region "							
							Set inRSCountry = Server.CreateObject("ADODB.Recordset")
							inRSCountry.Open inCountryQry, Datasource4
							If Not inRSCountry.EOF Then 
							
							While Not inRSCountry.EOF%>
							
								<li class="list-group-item "><span><%=trim(inRSCountry("region"))%> (<a href="Show_Region_Country_People.asp?GTRegion=<%=trim(inRSCountry("region"))%>" target="_new" style="color:blue;"><%=trim(inRSCountry("RegCNT"))%></a>)</span></li>
							<%
							inRSCountry.movenext
							wend
							End If
							set inRSCountry = nothing
							%>	
							  </ul>
							  </div>
							 
							<a class="collapse_click collapsed" data-toggle="collapse" href="#INFLUENCERS_byTier" role="button" aria-expanded="false" aria-controls="collapseExample"> 
							<h5 class="font-weight-bold text-left">By Tier</h5></a>
							<div class="collapse" id="INFLUENCERS_byTier"> 
							<ul class="list-group list-group-flush mb-3">
							
							<li class="list-group-item "><span>CXO (<a href="Show_Country_People.asp?SrcType=CXO&SRCWord=[A]" target="_new" style="color:blue;">904540</a>)</span></li>
							<li class="list-group-item list-group-sub"><span>CEO (115654)</span></li>
							<li class="list-group-item list-group-sub"><span>CMO (10543)</span></li>
							<li class="list-group-item list-group-sub"><span>CIO (25692)</span></li>
							<li class="list-group-item list-group-sub"><span>CTO (39054)</span></li>
							<li class="list-group-item list-group-sub"><span>CFO (41088)</span></li>
							<li class="list-group-item "><span>VP (<a href="Show_Country_People.asp?SrcType=VP&SRCWord=[A]" target="_new" style="color:blue;">570618</a>)</span></li>
							<li class="list-group-item "><span>DIRECTOR (<a href="Show_Country_People.asp?SrcType=DIR&SRCWord=[A]" target="_new" style="color:blue;">1030955</a>)</span></li>
							<li class="list-group-item "><span>MANAGER (<a href="Show_Country_People.asp?SrcType=MGR&SRCWord=[A]" target="_new" style="color:blue;">1883468</a>)</span></li>
							<li class="list-group-item "><span>OTHER (<a href="Show_Country_People.asp?SrcType=REST&SRCWord=[A]" target="_new" style="color:blue;">971217</a>)</span></li>
							</ul>
							
							</div>
							
						<!--	<a class="collapse_click collapsed" data-toggle="collapse" href="#INFLUENCERS_Indian" role="button" aria-expanded="false" aria-controls="collapseExample"> 
							<h5 class="font-weight-bold text-left d-block"><span class="mr-2">By Indian Origin</span></h5> </a>
							<div class="collapse" id="INFLUENCERS_Indian">
							<ul class="list-group list-group-flush">
							<li class="list-group-item"><span>Total Count (1,032,352)</span></li>
							<%''1,032,352
							''InRegionQry="select 'CXO' as title,count(*) as infcnt from InfluencersPeople where is_indian='Y' and (title like '%chief%' or title like '%CEO%' or title like 'CTO' or title like 'C%') union select 'VP' as title,count(*)as infcnt from InfluencersPeople where is_indian='Y' and (title like '%vice%' or title like 'VP %') union select 'DIR' as title,count(*)as infcnt from InfluencersPeople where is_indian='Y' and (title like '%Director%' or title like 'Dir.%') union select 'MGR' as title,count(*)as infcnt from InfluencersPeople where is_indian='Y' and (title like '%Manager%' or title like 'Mgr.%') union select 'REST' as title,count(*)as infcnt from InfluencersPeople where is_indian='Y' and (title not like '%Manager%' and title not like '%chief%' and title not like 'C%' and title not like '%vice%' and title not like 'VP %' and title not like '%Director%' )"							
														
							''Set inRSRegion = Server.CreateObject("ADODB.Recordset")
							''inRSRegion.Open InRegionQry, Datasource4
							''If Not inRSRegion.EOF Then 
							
							''While Not inRSRegion.EOF%>
							 
								<li class="list-group-item"><span><%''=trim(inRSRegion("title"))%> (<a href="Show_Country_People.asp?SrcType=<%''=trim(inRSRegion("title"))%>&SRCWord=[A]&CHKType=Indian" target="_new" style="color:blue;"><%''=trim(inRSRegion("infcnt"))%></a>)</span></li>
							<%
							''inRSRegion.movenext
							''wend
							''End If
							''set inRSRegion = nothing
							%>	
								
							  </ul>
							</div>-->
							
						</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-12     mt-2 text-center mb-2 px-1 px-xl-1 px-lg-3 px-md-4">
						<div style="height:55px;">
							<h3 class="mt-4 text-capitalize  h3 ">EVENTS  SPEAKER</h3>
							<h3 class="mt-2 text-capitalize  h2 "><span class=" counter d-block" >&nbsp;</span></h3>
							</div>
							<hr/>
							<a class="collapse_click collapsed" data-toggle="collapse" href="#EVOLV_Speakers" role="button" aria-expanded="false" aria-controls="collapseExample"> 
							<h5 class="font-weight-bold text-left">SPEAKERS</h5></a>
							<div class="collapse" id="EVOLV_Speakers"> 
							<ul class="list-group list-group-flush mb-3 event_speaker_list">
							
							<li class="list-group-item"><span>Supply Chain Management (<a href="Show_Event_Speakers.asp?SrcType=Supply Chain Management&SRCWord=[A]&ShowType=Speakers&EID=202" target="_new" style="color:blue;">3050</a>)</span></li>
							<li class="list-group-item"><span>Artificial Intelligence/Machine Learning (<a href="Show_Event_Speakers.asp?SrcType=Artificial Intelligence/Machine Learning&SRCWord=[A]&ShowType=Speakers&EID=26" target="_new" style="color:blue;">25347</a>)</span></li>
							<li class="list-group-item"><span>Robotics (<a href="Show_Event_Speakers.asp?SrcType=Robotics&SRCWord=[A]&ShowType=Speakers&EID=36" target="_new" style="color:blue;">3398</a>)</span></li>
							<li class="list-group-item"><span>Enterprise & Cloud Security (<a href="Show_Event_Speakers.asp?SrcType=Enterprise and Cloud Security&SRCWord=[A]&ShowType=Speakers&EID=7" target="_new" style="color:blue;">34343</a>)</span></li>
							<li class="list-group-item"><span>AutoTech (<a href="Show_Event_Speakers.asp?SrcType=AutoTech&SRCWord=[A]&ShowType=Speakers&EID=203" target="_new" style="color:blue;">5579</a>)</span></li>
							<li class="list-group-item"><span>Gaming (<a href="Show_Event_Speakers.asp?SrcType=Gaming&SRCWord=[A]&ShowType=Speakers&EID=19,90" target="_new" style="color:blue;">14189</a>)</span></li>
							<li class="list-group-item"><span>HealthTech (<a href="Show_Event_Speakers.asp?SrcType=HealthTech&SRCWord=[A]&ShowType=Speakers&EID=10,195" target="_new" style="color:blue;">31141</a>)</span></li>
							<li class="list-group-item"><span>AgTech (Food Tech) (<a href="Show_Event_Speakers.asp?SrcType=AgTech (Food Tech)&SRCWord=[A]&ShowType=Speakers&EID=581" target="_new" style="color:blue;">4607</a>)</span></li>
							<li class="list-group-item"><span>Education/Online Learning (<a href="Show_Event_Speakers.asp?SrcType=Education/Online Learning&SRCWord=[A]&ShowType=Speakers&EID=13,197" target="_new" style="color:blue;">11767</a>)</span></li>
							<li class="list-group-item"><span>Augmented Reality (<a href="Show_Event_Speakers.asp?SrcType=Augmented Reality&SRCWord=[A]&ShowType=Speakers&EID=42,51" target="_new" style="color:blue;">12497</a>)</span></li>
							<li class="list-group-item"><span>Big Data (<a href="Show_Event_Speakers.asp?SrcType=Supply Chain Management&SRCWord=[A]&ShowType=Speakers&EID=4" target="_new" style="color:blue;">5219</a>)</span></li>
							<li class="list-group-item"><span>CleanTech (<a href="Show_Event_Speakers.asp?SrcType=CleanTech&SRCWord=[A]&ShowType=Speakers&EID=6,183,201" target="_new" style="color:blue;">5292</a>)</span></li>
							<li class="list-group-item"><span>Cloud Technologies/Services (<a href="Show_Event_Speakers.asp?SrcType=Cloud Technologies/Services&SRCWord=[A]&ShowType=Speakers&EID=50,184" target="_new" style="color:blue;">20271</a>)</span></li>
							</ul></div>
							
							<a class="collapse_click collapsed" data-toggle="collapse" href="#EVOLV_Sponsors" role="button" aria-expanded="false" aria-controls="collapseExample"> 
							<h5 class="font-weight-bold text-left">EVOLV Sponsors</h5></a>
							<div class="collapse" id="EVOLV_Sponsors">
							<ul class="list-group list-group-flush mb-3 event_speaker_list">
							<li class="list-group-item"><span>Supply Chain Management (<a href="Show_Event_Sponsors.asp?SrcType=Supply Chain Management&SRCWord=[A]&ShowType=Speakers&EID=202" target="_new" style="color:blue;">542</a>)</span></li>
							<li class="list-group-item"><span>Artificial Intelligence/Machine Learning (<a href="Show_Event_Sponsors.asp?SrcType=Artificial Intelligence/Machine Learning&SRCWord=[A]&ShowType=Speakers&EID=26" target="_new" style="color:blue;">2425</a>)</span></li>
							<li class="list-group-item"><span>Robotics (<a href="Show_Event_Sponsors.asp?SrcType=Robotics&SRCWord=[A]&ShowType=Speakers&EID=36" target="_new" style="color:blue;">588</a>)</span></li>
							<li class="list-group-item"><span>Enterprise & Cloud Security (<a href="Show_Event_Sponsors.asp?SrcType=Enterprise and Cloud Security&SRCWord=[A]&ShowType=Speakers&EID=7" target="_new" style="color:blue;">5258</a>)</span></li>
							<li class="list-group-item"><span>AutoTech (<a href="Show_Event_Sponsors.asp?SrcType=AutoTech&SRCWord=[A]&ShowType=Speakers&EID=203" target="_new" style="color:blue;">621</a>)</span></li>
							<li class="list-group-item"><span>Gaming (<a href="Show_Event_Sponsors.asp?SrcType=Gaming&SRCWord=[A]&ShowType=Speakers&EID=19,90" target="_new" style="color:blue;">1175</a>)</span></li>
							<li class="list-group-item"><span>HealthTech (<a href="Show_Event_Sponsors.asp?SrcType=HealthTech&SRCWord=[A]&ShowType=Speakers&EID=10,195" target="_new" style="color:blue;">3513</a>)</span></li>
							<li class="list-group-item"><span>AgTech (Food Tech) (<a href="Show_Event_Sponsors.asp?SrcType=AgTech (Food Tech)&SRCWord=[A]&ShowType=Speakers&EID=581" target="_new" style="color:blue;">581</a>)</span></li>
							<li class="list-group-item"><span>Education/Online Learning (<a href="Show_Event_Sponsors.asp?SrcType=Education/Online Learning&SRCWord=[A]&ShowType=Speakers&EID=13,197" target="_new" style="color:blue;">1420</a>)</span></li>
							<li class="list-group-item"><span>Augmented Reality (<a href="Show_Event_Sponsors.asp?SrcType=Augmented Reality&SRCWord=[A]&ShowType=Speakers&EID=42,51" target="_new" style="color:blue;">1096</a>)</span></li>
							<li class="list-group-item"><span>Big Data (<a href="Show_Event_Sponsors.asp?SrcType=Supply Chain Management&SRCWord=[A]&ShowType=Speakers&EID=4" target="_new" style="color:blue;">675</a>)</span></li>
							<li class="list-group-item"><span>CleanTech (<a href="Show_Event_Sponsors.asp?SrcType=CleanTech&SRCWord=[A]&ShowType=Speakers&EID=6,183,201" target="_new" style="color:blue;">914</a>)</span></li>
							<li class="list-group-item"><span>Cloud Technologies/Services (<a href="Show_Event_Sponsors.asp?SrcType=Cloud Technologies/Services&SRCWord=[A]&ShowType=Speakers&EID=50,184" target="_new" style="color:blue;">3668</a>)</span></li>
							</ul>
						</div>							
							
							
							
							
							</div>

							<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-12     mt-2 text-center mb-2 px-1 px-xl-1 px-lg-3 px-md-4">
								<div style="height:55px;">
									<h3 class="mt-4 text-capitalize  h3 ">EVENTS SPONSORS</h3>
									<h3 class="mt-2 text-capitalize  h2 "><span class=" counter d-block" >&nbsp;</span></h3>
									</div>
									<hr/>
								
									<a class="collapse_click collapsed" data-toggle="collapse" href="#EVOLV_Sponsors" role="button" aria-expanded="false" aria-controls="collapseExample"> 
									<h5 class="font-weight-bold text-left">SPONSORS</h5></a>
									<div class="collapse" id="EVOLV_Sponsors">
									<ul class="list-group list-group-flush mb-3 event_speaker_list">
									<li class="list-group-item"><span>Supply Chain Management (<a href="Show_Event_Sponsors.asp?SrcType=Supply Chain Management&SRCWord=[A]&ShowType=Speakers&EID=202" target="_new" style="color:blue;">542</a>)</span></li>
									<li class="list-group-item"><span>Artificial Intelligence/Machine Learning (<a href="Show_Event_Sponsors.asp?SrcType=Artificial Intelligence/Machine Learning&SRCWord=[A]&ShowType=Speakers&EID=26" target="_new" style="color:blue;">2425</a>)</span></li>
									<li class="list-group-item"><span>Robotics (<a href="Show_Event_Sponsors.asp?SrcType=Robotics&SRCWord=[A]&ShowType=Speakers&EID=36" target="_new" style="color:blue;">588</a>)</span></li>
									<li class="list-group-item"><span>Enterprise & Cloud Security (<a href="Show_Event_Sponsors.asp?SrcType=Enterprise and Cloud Security&SRCWord=[A]&ShowType=Speakers&EID=7" target="_new" style="color:blue;">5258</a>)</span></li>
									<li class="list-group-item"><span>AutoTech (<a href="Show_Event_Sponsors.asp?SrcType=AutoTech&SRCWord=[A]&ShowType=Speakers&EID=203" target="_new" style="color:blue;">621</a>)</span></li>
									<li class="list-group-item"><span>Gaming (<a href="Show_Event_Sponsors.asp?SrcType=Gaming&SRCWord=[A]&ShowType=Speakers&EID=19,90" target="_new" style="color:blue;">1175</a>)</span></li>
									<li class="list-group-item"><span>HealthTech (<a href="Show_Event_Sponsors.asp?SrcType=HealthTech&SRCWord=[A]&ShowType=Speakers&EID=10,195" target="_new" style="color:blue;">3513</a>)</span></li>
									<li class="list-group-item"><span>AgTech (Food Tech) (<a href="Show_Event_Sponsors.asp?SrcType=AgTech (Food Tech)&SRCWord=[A]&ShowType=Speakers&EID=581" target="_new" style="color:blue;">581</a>)</span></li>
									<li class="list-group-item"><span>Education/Online Learning (<a href="Show_Event_Sponsors.asp?SrcType=Education/Online Learning&SRCWord=[A]&ShowType=Speakers&EID=13,197" target="_new" style="color:blue;">1420</a>)</span></li>
									<li class="list-group-item"><span>Augmented Reality (<a href="Show_Event_Sponsors.asp?SrcType=Augmented Reality&SRCWord=[A]&ShowType=Speakers&EID=42,51" target="_new" style="color:blue;">1096</a>)</span></li>
									<li class="list-group-item"><span>Big Data (<a href="Show_Event_Sponsors.asp?SrcType=Supply Chain Management&SRCWord=[A]&ShowType=Speakers&EID=4" target="_new" style="color:blue;">675</a>)</span></li>
									<li class="list-group-item"><span>CleanTech (<a href="Show_Event_Sponsors.asp?SrcType=CleanTech&SRCWord=[A]&ShowType=Speakers&EID=6,183,201" target="_new" style="color:blue;">914</a>)</span></li>
									<li class="list-group-item"><span>Cloud Technologies/Services (<a href="Show_Event_Sponsors.asp?SrcType=Cloud Technologies/Services&SRCWord=[A]&ShowType=Speakers&EID=50,184" target="_new" style="color:blue;">3668</a>)</span></li>
									</ul></div>							
									
									
									
									
									</div>





							<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-12     mt-2 text-center mb-2 px-1 px-xl-1 px-lg-3 px-md-4">
							<div style="height:55px;">
							<h3 class="mt-4 text-capitalize  h3 " STYLE="margin-bottom:22.5px !important;">WORLD MEDIA</h3>
							<!--h3 class="mt-2 text-capitalize  h2 "><span class=" counter d-block" >&nbsp;</span></h3-->
							</div>
							<hr/>
							<a class="collapse_click collapsed" data-toggle="collapse" href="#EVOLV_Media" role="button" aria-expanded="false" aria-controls="collapseExample">
							<h5 class="font-weight-bold text-left">MEDIA</h5></a>
							<div class="collapse" id="EVOLV_Media">							
							<ul class="list-group list-group-flush mb-3">							
							<li class="list-group-item"><span>Companies (<a href="Show_Media_Companies.asp?GTcountry=World&SRCWord=[A]&ShowType=Media" target="_new" style="color:blue;">32549</a>)</span></li>
							<li class="list-group-item"><span>People (<a href="Show_Media_People.asp?GTcountry=World&SRCWord=[A]&ShowType=Media" target="_new" style="color:blue;">88748</a>)</span></li>
							<li class="list-group-item list-group-sub"><span>Writer (<a href="Show_Media_People.asp?GTcountry=World&SRCWord=[A]&ShowType=Media&actType=Writer" target="_new" style="color:blue;">5012</a>)</span></li>
							<li class="list-group-item list-group-sub"><span>Journalist (<a href="Show_Media_People.asp?GTcountry=World&SRCWord=[A]&ShowType=Media&actType=Journalist" target="_new" style="color:blue;">2007</a>)</span></li>
							<li class="list-group-item list-group-sub"><span>Editor (<a href="Show_Media_People.asp?GTcountry=World&SRCWord=[A]&ShowType=Media&actType=Editor" target="_new" style="color:blue;">13823</a>)</span></li>
							<li class="list-group-item list-group-sub"><span>Reporter (<a href="Show_Media_People.asp?GTcountry=World&SRCWord=[A]&ShowType=Media&actType=Reporter" target="_new" style="color:blue;">1845</a>)</span></li>
							<li class="list-group-item list-group-sub"><span>Blogger (<a href="Show_Media_People.asp?GTcountry=World&SRCWord=[A]&ShowType=Media&actType=Blogger" target="_new" style="color:blue;">3351</a>)</span></li>
							<li class="list-group-item list-group-sub"><span>Publisher (<a href="Show_Media_People.asp?GTcountry=World&SRCWord=[A]&ShowType=Media&actType=Publisher" target="_new" style="color:blue;">1601</a>)</span></li>
							</ul></div>
							<a class="collapse_click collapsed" data-toggle="collapse" href="#AnalystFirms" role="button" aria-expanded="false" aria-controls="collapseExample">
							<h5 class="font-weight-bold text-left">Analyst Firms</h5></a>
							<div class="collapse" id="AnalystFirms">	
							<ul class="list-group list-group-flush mb-3">
							<li class="list-group-item"><span>Executives (<a href="Show_AnalystFirms_People.asp?GTcountry=World&SRCWord=[A]&ShowType=Analyst Firm" target="_new" style="color:blue;">10295</a>)</span></li>
							</ul></div>
							
							</div>

							<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-12     mt-2 text-center mb-2 px-1 px-xl-1 px-lg-3 px-md-4">
								<div style="height:55px;">
								<h3 class="mt-4 text-capitalize  h3 " STYLE="margin-bottom:22.5px !important;">MEDIA & RESEARCH FIRMS</h3>
								<!--h3 class="mt-2 text-capitalize  h2 "><span class=" counter d-block" >&nbsp;</span></h3-->
								</div>
								<hr/>
								<a class="collapse_click collapsed" data-toggle="collapse" href="#EVOLV_Media" role="button" aria-expanded="false" aria-controls="collapseExample">
								<h5 class="font-weight-bold text-left">World Media</h5></a>
								<div class="collapse" id="EVOLV_Media">							
								<ul class="list-group list-group-flush mb-3">							
								<li class="list-group-item"><span>Companies (<a href="Show_Media_Companies.asp?GTcountry=World&SRCWord=[A]&ShowType=Media" target="_new" style="color:blue;">32549</a>)</span></li>
								<li class="list-group-item"><span>People (<a href="Show_Media_People.asp?GTcountry=World&SRCWord=[A]&ShowType=Media" target="_new" style="color:blue;">88748</a>)</span></li>
								<li class="list-group-item list-group-sub"><span>Writer (<a href="Show_Media_People.asp?GTcountry=World&SRCWord=[A]&ShowType=Media&actType=Writer" target="_new" style="color:blue;">5012</a>)</span></li>
								<li class="list-group-item list-group-sub"><span>Journalist (<a href="Show_Media_People.asp?GTcountry=World&SRCWord=[A]&ShowType=Media&actType=Journalist" target="_new" style="color:blue;">2007</a>)</span></li>
								<li class="list-group-item list-group-sub"><span>Editor (<a href="Show_Media_People.asp?GTcountry=World&SRCWord=[A]&ShowType=Media&actType=Editor" target="_new" style="color:blue;">13823</a>)</span></li>
								<li class="list-group-item list-group-sub"><span>Reporter (<a href="Show_Media_People.asp?GTcountry=World&SRCWord=[A]&ShowType=Media&actType=Reporter" target="_new" style="color:blue;">1845</a>)</span></li>
								<li class="list-group-item list-group-sub"><span>Blogger (<a href="Show_Media_People.asp?GTcountry=World&SRCWord=[A]&ShowType=Media&actType=Blogger" target="_new" style="color:blue;">3351</a>)</span></li>
								<li class="list-group-item list-group-sub"><span>Publisher (<a href="Show_Media_People.asp?GTcountry=World&SRCWord=[A]&ShowType=Media&actType=Publisher" target="_new" style="color:blue;">1601</a>)</span></li>
								</ul></div>
								<a class="collapse_click collapsed" data-toggle="collapse" href="#AnalystFirms" role="button" aria-expanded="false" aria-controls="collapseExample">
								<h5 class="font-weight-bold text-left">Analyst Firms</h5></a>
								<div class="collapse" id="AnalystFirms">	
								<ul class="list-group list-group-flush mb-3">
								<li class="list-group-item"><span>Executives (<a href="Show_AnalystFirms_People.asp?GTcountry=World&SRCWord=[A]&ShowType=Analyst Firm" target="_new" style="color:blue;">10295</a>)</span></li>
								</ul></div>
								
								</div>
							
					</div>
				</div>




			</div>



		</div>
	</div>
</section>

<!--====  End of Page Title  ====-->




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
<script type="text/javascript">
    function googleTranslateElementInit() {
      new google.translate.TranslateElement({pageLanguage: 'en', layout: google.translate.TranslateElement.FloatPosition.TOP_LEFT}, 'google_translate_element');
    }

	function triggerHtmlEvent(element, eventName) {
	  var event;
	  if (document.createEvent) {
		event = document.createEvent('HTMLEvents');
		event.initEvent(eventName, true, true);
		element.dispatchEvent(event);
	  } else {
		event = document.createEventObject();
		event.eventType = eventName;
		element.fireEvent('on' + event.eventType, event);
	  }
	}

	jQuery('.lang-select').click(function() {
	  var theLang = jQuery(this).attr('data-lang');
	  jQuery('.goog-te-combo').val(theLang);

	  //alert(jQuery(this).attr('href'));
	  window.location = jQuery(this).attr('href');
	  location.reload();

	});
  </script>
<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
</body>

</html>