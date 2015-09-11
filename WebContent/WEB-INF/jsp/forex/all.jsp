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
        <li class="current"><a href="<c:url value="/" />" title="Forex banking">Top Rates</a></li>
        <li><a  href="<c:url value="/forex/all" />" title="">All Forex </a></li>
        <li><a  href="#" title="Mobile Banking">Contact</a></li>
        <li><a  href="#" title="Mobile Banking">Contact Rates</a></li>
      </ul>
    </div>
  </div>
</header>
<div class="gridContainer clearfix">
  <div id="div" class="fluid">
    <table id="allForexTable" style="background-color:#DF1417;width:">
      <tr>
        <th>&nbsp;</th>
        <th>Forex</th>
        <th>USD</th>
        <th>Pound</th>
        <th>Yen</th>
        <th>UAE</th>
        <th>KShs</th>
        <th>Rand</th>
        <th>China</th>
        <th>Francs</th>
        <th>Rupies</th>
      </tr>
      <tr>
        <td><img src='<c:url value="/resources/img/logo/barc.png" />' /></td>
        <td><a>Barclays Forex</a></td>
        <td><p>3452</p>
          <p>3510</p></td>
        <td><p>5852</p>
          <p>5530</p></td>
        <td><p>1252</p>
          <p>1410</p></td>
        <td><p>952</p>
          <p>910</p></td>
        <td><p>34</p>
          <p>38</p></td>
        <td><p>452</p>
          <p>4510</p></td>
        <td><p>1002</p>
          <p>1010</p></td>
        <td><p>1852</p>
          <p>18510</p></td>
        <td><p>852</p>
          <p>810</p></td>
      </tr>
      <tr>
        <td><img src='<c:url value="/resources/img/logo/cent.png" />' /></td>
        <td><a>Centenary Forex</a></td>
        <td><p>3454</p>
          <p>3510</p></td>
        <td><p>5852</p>
          <p>5530</p></td>
        <td><p>1252</p>
          <p>1410</p></td>
        <td><p>952</p>
          <p>910</p></td>
        <td><p>34</p>
          <p>38</p></td>
        <td><p>452</p>
          <p>4510</p></td>
        <td><p>1002</p>
          <p>1010</p></td>
        <td><p>1852</p>
          <p>18510</p></td>
        <td><p>852</p>
          <p>810</p></td>
      </tr>
      <tr>
        <td><img src='<c:url value="/resources/img/logo/crane.png" />' /></td>
        <td><a>Crane Forex</a></td>
        <td><p>3454</p>
          <p>3530</p></td>
        <td><p>5852</p>
          <p>5530</p></td>
        <td><p>1252</p>
          <p>1410</p></td>
        <td><p>952</p>
          <p>910</p></td>
        <td><p>34</p>
          <p>38</p></td>
        <td><p>452</p>
          <p>4510</p></td>
        <td><p>1002</p>
          <p>1010</p></td>
        <td><p>1852</p>
          <p>18510</p></td>
        <td><p>852</p>
          <p>810</p></td>
      </tr>
      <tr>
        <td><img src='<c:url value="/resources/img/logo/duamond.png" />' /></td>
        <td><a>Diamond Trust Forex</a></td>
        <td><p>3450</p>
          <p>3500</p></td>
        <td><p>5852</p>
          <p>5530</p></td>
        <td><p>1252</p>
          <p>1410</p></td>
        <td><p>952</p>
          <p>910</p></td>
        <td><p>34</p>
          <p>38</p></td>
        <td><p>452</p>
          <p>4510</p></td>
        <td><p>1002</p>
          <p>1010</p></td>
        <td><p>1852</p>
          <p>18510</p></td>
        <td><p>852</p>
          <p>810</p></td>
      </tr>
      <tr>
        <td><img src='<c:url value="/resources/img/logo/stan.png" />' /></td>
        <td><a>Standard Chattered Forex</a></td>
        <td><p>3440</p>
          <p>3490</p></td>
        <td><p>5852</p>
          <p>5530</p></td>
        <td><p>1252</p>
          <p>1410</p></td>
        <td><p>952</p>
          <p>910</p></td>
        <td><p>34</p>
          <p>38</p></td>
        <td><p>452</p>
          <p>4510</p></td>
        <td><p>1002</p>
          <p>1010</p></td>
        <td><p>1852</p>
          <p>18510</p></td>
        <td><p>852</p>
          <p>810</p></td>
      </tr>
      <tr>
        <td><img src='<c:url value="/resources/img/logo/dahabshir.png" />' /></td>
        <td><a href="<c:url value="/forex/detail" />">Dahabshir Forex</a></td>
        <td><p>3450</p>
          <p>3500</p></td>
        <td><p>5852</p>
          <p>5530</p></td>
        <td><p>1252</p>
          <p>1410</p></td>
        <td><p>952</p>
          <p>910</p></td>
        <td><p>34</p>
          <p>38</p></td>
        <td><p>452</p>
          <p>4510</p></td>
        <td><p>1002</p>
          <p>1010</p></td>
        <td><p>1852</p>
          <p>18510</p></td>
        <td><p>852</p>
          <p>810</p></td>
      </tr>
      <tr>
        <td><img src='<c:url value="/resources/img/logo/standard.png" />' /></td>
        <td><a>Stan Forex</a></td>
        <td><p>3452</p>
          <p>3510</p></td>
        <td><p>5852</p>
          <p>5530</p></td>
        <td><p>1252</p>
          <p>1410</p></td>
        <td><p>952</p>
          <p>910</p></td>
        <td><p>34</p>
          <p>38</p></td>
        <td><p>452</p>
          <p>4510</p></td>
        <td><p>1002</p>
          <p>1010</p></td>
        <td><p>1852</p>
          <p>18510</p></td>
        <td><p>852</p>
          <p>810</p></td>
      </tr>
    </table>
  </div>
  <div id="div1" class="fluid" style="height:200px; background:#BCB846; text-align:center;">Context</div>
  <div id="div1" class="fluid" style="height:80px; background:#A698F1; margin-top:40px; text-align:center;">News</div> 
</html>
