<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/include.jsp" %>
<!doctype html>
<!--[if lt IE 7]> <html class="ie6 oldie"> <![endif]-->
<!--[if IE 7]>    <html class="ie7 oldie"> <![endif]-->
<!--[if IE 8]>    <html class="ie8 oldie"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Banking Guide</title>
<link rel="stylesheet" href="<c:url value="/resources/css/boilerplate.css" />" type="text/css" />
<link rel="stylesheet" href="<c:url value="/resources/css/styles.css" />" type="text/css" />
<link rel="stylesheet" href="<c:url value="/resources/css/custom.css" />" type="text/css" />
<!-- 
To learn more about the conditional comments around the html tags at the top of the file:
paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/

Do the following if you're using your customized build of modernizr (http://www.modernizr.com/):
* insert the link to your js here
* remove the link below to the html5shiv
* add the "no-js" class to the html tags at the top
* you can also remove the link to respond.min.js if you included the MQ Polyfill in your modernizr build 
-->
<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<script type="text/javascript" src="<c:url value="/resources/js/respond.min.js" />"></script>
<style>
#div1 {
	display: block
}
</style>
<link rel="stylesheet" href="<c:url value="/resources/js/jqueryUi/jquery.ui.core.min.css" />" type="text/css" />
<link rel="stylesheet" href="<c:url value="/resources/js/jqueryUi/jquery.ui.theme.min.css" />" type="text/css" />
<link rel="stylesheet" href="<c:url value="/resources/js/jqueryUi/jquery.ui.tabs.min.css" />" type="text/css" />
</head>
<body>
<header class="myHeader">
  <div class="gridContainer clearfix" id="logoArea">
    <div id="logo">bankingGuide</div>
  </div>
  <div class="clearfix" id="menuArea">
    <div class="gridContainer clearfix">
      <ul id="menu">
        <li><a href="banking" title="Forex banking">Banking</a></li>
        <li class="current" ><a  href="#" title="">Forex</a></li>
        <li><a  href="mm" title="Mobile Banking">Mobile Money</a></li>
      </ul>
     <c:choose>
		<c:when test="${pageContext.request.remoteUser == null}">
			<a href="<c:url value="/login" />" style="float:right"><button>Login</button></a> |
			<a href="<c:url value="/register" />" style="float:right"><button>Register</button></a>
		</c:when>
		<c:otherwise>
			   Welcome : <a href="<c:url value="/forex/detail" />" style="float:right">${pageContext.request.remoteUser} </a>
		           | <a href="<c:url value="/logout" />" style="float:right"> Logout</a> 
		</c:otherwise>
	</c:choose>
    </div>
    <div class="gridContainer clearfix"style="background-color:#C83537">
      <ul id="subMenu">
        <li class="current"><a href="home.html" title="Forex banking">Top Rates</a></li>
        <li><a  href="all_forex.html" title="">All Forex </a></li>
        <li><a  href="/" title="Mobile Banking">Contact</a></li>
        <li><a  href="/" title="Mobile Banking">Contact Rates</a></li>
      </ul>
    </div>
  </div>
</header>
<div class="gridContainer clearfix">
  <div id="div1" class="fluid"  style="overflow:visible; margin-bottom:40px; clear:bothmin-; height:1200px;">
    <div class="fluid" style="height:200px; background-color:#99E391;">
      <div style="300px; margin-top: 100px; margin-left:40px; clear:none"> <img src="images/profile_logo/profile-logo.png" style="width:200px; height:200px; clear:none; float:left; margin-bottom:10px;"/>
        <div style=" padding-left:210px; font-size:30px">Dahabshir</div>
        <div style=" padding-left:210px; font-size:25px">Forex Bureau</div>
        <div style=" padding-left:210px; font-size:12px">(8 Branches)</div>
      </div>
      <div style="background-color:#1421B5; width:100%; clear:both">
        <table id="forex_details" style="width:50%; clear:none; float:left">
          <tr>
            <th colspan="2">Currency</th>
            <th>CODE</th>
            <th>Buying</th>
            <th>Selling</th>
          </tr>
          <tr>
            <td><img src="images/flags/gbp.png"/></td>
            <td>Pound Sterling</td>
            <td>GBP</td>
            <td>5852</td>
            <td>1252</td>
          </tr>
          <tr>
            <td><img src="images/flags/usd.png"/></td>
            <td>US Dollar</td>
            <td>USD </td>
            <td>3560</td>
            <td>3590</td>
          </tr>
          <tr>
            <td><img src="images/flags/eur.png"/></td>
            <td>Euro</td>
            <td>EUR</td>
            <td>4620</td>
            <td>4700</td>
          </tr>
          <tr>
            <td><img src="images/flags/cad.png"/></td>
            <td>Canadian Dollar</td>
            <td>CAD</td>
            <td>2092</td>
            <td>2122</td>
          </tr>
          <tr>
            <td><img src="images/flags/uae.png"/></td>
            <td>UAE Dollar</td>
            <td>UAE</td>
            <td>810</td>
            <td>895</td>
          </tr>
          <tr>
            <td><img src="images/flags/hkd.png"/></td>
            <td>Hong Kong Dollar</td>
            <td>HKD</td>
            <td>2052</td>
            <td>2202</td>
          </tr>
          <tr>
            <td><img src="images/flags/jpy.png"/></td>
            <td>Japanese Yen</td>
            <td>JPY</td>
            <td>2520</td>
            <td>2552</td>
          </tr>
          <tr>
            <td><img src="images/flags/zar.png"/></td>
            <td>South African Rand</td>
            <td>ZAR</td>
            <td>552</td>
            <td>581</td>
          </tr>
          <tr>
            <td><img src="images/flags/sgd.png"/></td>
            <td>Singapore Dollar</td>
            <td>SGD</td>
            <td>852</td>
            <td>892</td>
          </tr>
          <tr>
            <td><img src="images/flags/chf.png"/></td>
            <td>Swiss Francs</td>
            <td>CHF</td>
            <td>1252</td>
            <td>1320</td>
          </tr>
          <tr>
            <td><img src="images/flags/aud.png"/></td>
            <td>Australian Dollar</td>
            <td>AUD</td>
            <td>582</td>
            <td>652</td>
          </tr>
          <tr>
            <td><img src="images/flags/tzs.png"/></td>
            <td>Tanzania Shillings</td>
            <td>TZS</td>
            <td>52</td>
            <td>58</td>
          </tr>
          <tr>
            <td><img src="images/flags/ksh.png"/></td>
            <td>Kenya Shillings</td>
            <td>KSH</td>
            <td>32</td>
            <td>40</td>
          </tr>
          <tr>
            <td><img src="images/flags/rwf.png"/></td>
            <td>Rwandese Francs</td>
            <td>RWF</td>
            <td>85</td>
            <td>90</td>
          </tr>
        </table>
        <div style="background-color:#D6FDFF; height:450px; width:48%; float:right">
        	<p>Forex Details</p>
            <p>Conversion Calculator</p>
            <p>Latest News</p>
        </div>
      </div>
      <table id="braches">
        <tr>
          <th colspan="8">Branches</th>
        </tr>
        <tr>
          <th>Branch</th>
          <th>Location</th>
          <th>Contact Address</th>
          <th>Details</th>
        </tr>
        <tr>
          <td>Kampala Road<br/>(Main Branch)</td>
          <td>King Fahad Plaza<br/>
            Kampala</td>
          <td>+256 349 214 132 <br/>
            +245 414 218 219<br/>
            +256 759 134 124</td>
          <td>Level 4<br/>
            Room 16<br/>
            email:dahabshir_klaroad@dahbasjhir.com</td>
        </tr>
        <tr>
          <td>Kamokya Branch</td>
          <td>Acacia Mall<br/>
            Kampala</td>
          <td>0800 182 182<br/>
            +256 126 124</td>
          <td>Ground Floor<br/>
            Room 26<br/>
            email:dahbshir_acacia@gmail.com</td>
        </tr>
        <tr>
          <td>Market Steeet</td>
          <td>Banalweera Building<br/>
            Masaka</td>
          <td>0800 482 182<br/>
            +256 106 120</td>
          <td>Plot 6<br/>
            Level 4<br/>
            Room 25</td>
        </tr>
      </table>
      <div>
        <button>&lt;&lt;</button></div></div>
    </div>
  </div>
  <div id="div1" class="fluid" style="height:200px; background:#BCB846; text-align:center;">Context</div>
  <div id="div1" class="fluid" style="height:80px; background:#A698F1; margin-top:40px; text-align:center;">News</div>
</div>
</body>
</html>
