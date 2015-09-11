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
        <li><a href="#" title="Forex banking">Banking</a></li>
        <li class="current" ><a  href="#" title="">Forex</a></li>
        <li><a  href="#" title="Mobile Banking">Mobile Money</a></li>
      </ul>
    </div>
    <div class="gridContainer clearfix"style="background-color:#C83537">
      <ul id="subMenu">
        <li class="current"><a href="<c:url value="/" />" title="Forex banking">Top Rates</a></li>
        <li><a  href="<c:url value="/forex/all" />" title="">All Forex </a></li>
        <li><a  href="#" title="Mobile Banking">Contact</a></li>
        <li><a  href="#" title="Mobile Banking">Contact Rates</a></li>
      </ul>
    </div>
  </div>
</header>
<div class="gridContainer clearfix">
  <div id="div1" class="fluid"  style="overflow:visible; margin-bottom:40px; clear:bothmin-; height:1200px;">
    <div class="fluid" style="height:200px; background-color:#CBCBCB;">
      <div style="300px; margin-top: 100px; margin-left:40px; clear:none"> <img src="<c:url value="/resources/img/logo_lg/no_logo.png" />" style="width:200px; height:200px; clear:none; float:left; margin-bottom:10px;"/>
        <div style=" padding-left:210px; font-size:30px">MyName</div>
        <div style=" padding-left:210px; font-size:25px">Forex Bureau</div>
        <div style=" padding-left:210px; font-size:12px">(1 Branch)</div>
      </div>
      <div style="width:100%; clear:both">
        <table id="forex_details" style="width:45%; clear:none; float:left">
          <tr>
            <th colspan="5">Currency Rates</th>
          </tr>
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
          <tr style="height:60px; vertical-align:bottom">
            <th colspan="5">Add New Currency Rate</th>
          </tr>
          <form>
            <tr>
              <td><input type="button" value="Add Logo"/></td>
              <td><input type="text" placeholder="Currency Name"/></td>
              <td><input type="text" placeholder="Currency Code" maxlength="3"/></td>
              <td><input type="number" placeholder="Buying" maxlength="5"/></td>
              <td><input type="number" placeholder="Selling" maxlength="5"/></td>
            </tr>
            <tr>
              <td colspan="5"><input style="float:right; padding:4px 50px;" type="submit" value="Save Rate" /></td>
            </tr>
          </form>
        </table>
        <div style="background-color:#D6FDFF; min-height:200px; width:40%; float:right">
          <p>Welcome to your Forex, So far this is just 5% complete.
            You can add barches and rates to increase ratings and reviews</p>
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
          <th style="height:60px; vertical-align:bottom" colspan="8">Add new Branches</th>
        </tr>       
          <form>
            <tr>
              <td><input type="text" placeholder="Branch Name"/></td>
              <td><textarea placeholder="Add Location"></textarea></td>
              <td><input type="number" placeholder="Add contacts" maxlength="5"/></td>
              <td><textarea placeholder="Add Details"></textarea></td>
            </tr>
            <tr>
              <td colspan="5"><input style="float:right; padding:4px 50px;" type="submit" value="Add Location" /></td>
            </tr>
          </form>
      </table>
      <div>
        <button>&lt;&lt;</button></div>
    </div>
  </div>
  <div id="div1" class="fluid" style="height:200px; background:#BCB846; text-align:center;">Context</div>
  <div id="div1" class="fluid" style="height:80px; background:#A698F1; margin-top:40px; text-align:center;">News</div>
</div>
</body>
</html>
