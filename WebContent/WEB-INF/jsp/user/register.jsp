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
  <div id="div1" class="fluid"  style="overflow:visible; margin-top:40px; clear:bothmin-; height:500px;">
    <table id="register_forex">
      <tr>
        <th colspan="8">Register for an Account</th>
      </tr>
      <form:form modelAttribute="command" method="POST">
        <tr>
          <td>Forex Name</td>
          <td><form:input path="name" /></td>
          <td><form:errors  path="name" /></td>
        </tr>
        <tr>
          <td>Physical Address</td>
          <td><form:input path="physicalAddress" /></td>
          <td><form:errors  path="physicalAddress" /></td>
        </tr>
        <tr>
          <td>Postal Address</td>
          <td><form:input path="postalAddress" /></td>
          <td><form:errors  path="postalAddress" /></td>
        </tr>
        <tr>
          <td>Slogan</td>
          <td><form:input path="slogan" /></td>
          <td><form:errors  path="slogan" /></td>
        </tr>
        <tr>
          <td>Email Address</td>
          <td><form:input path="email" /></td>
          <td><form:errors  path="email" /></td>
        </tr>
        <tr>
          <td>Phone</td>
          <td><form:input path="phone" /></td>
          <td><form:errors  path="phone" /></td>
        </tr>
        <tr>
          <td>Password</td>
          <td><form:password path="password" /></td>
          <td><form:errors  path="password" /></td>
        </tr>
        <tr>
          <td>Confirm Password</td>
          <td><form:password path="confirmPassword" /></td>
          <td><form:errors  path="confirmPassword" /></td>
        </tr>
       
        <tr>
          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
          <td colspan="2"><input type="submit" value="Register" /></td>
        </tr>
      </form:form>
    </table>
  </div>
  <div id="div1" class="fluid" style="height:200px; background:#BCB846; text-align:center;">Context</div>
  <div id="div1" class="fluid" style="height:80px; background:#A698F1; margin-top:40px; text-align:center;">News</div>
</div>
</body>
</html>
