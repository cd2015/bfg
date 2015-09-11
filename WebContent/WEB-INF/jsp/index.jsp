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
<script type="text/javascript" src="<c:url value="/resources/js/jqueryUi/jquery-1.8.3.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/js/jqueryUi/jquery-ui-1.9.2.tabs.custom.min.js" />"></script>
<style>
#div1{
	display:block;}
</style>
<link rel="stylesheet" href="<c:url value="/resources/js/jqueryUi/jquery.ui.core.min.css" />" type="text/css" />
<link rel="stylesheet" href="<c:url value="/resources/js/jqueryUi/jquery.ui.theme.min.css" />" type="text/css" />
<link rel="stylesheet" href="<c:url value="/resources/js/jqueryUi/jquery.ui.tabs.min.css" />" type="text/css" />


</head>
<body>
<header class="myHeader">
  <div class="gridContainer clearfix" id="logoArea">
    <div id="logo">bankingGuide</div>
<%--     <fmt:message key="app" /> --%>
  </div>
  <div class="clearfix" id="menuArea">
    <div class="gridContainer clearfix">
      <ul id="menu">
        <li><a href="#" title="banking">Banking</a></li>
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
        <li class="current"> <a href="#" title="Forex banking">Top Rates</a></li>
        <li><a href="<c:url value="/forex/all" />" title="">All Forex </a></li>
        <li><a  href="#" title="Mobile Banking">Contact</a></li>
        <li><a  href="#" title="Mobile Banking">Contact Rates</a></li>
      </ul>
    </div>
  </div>
</header>
<div class="gridContainer clearfix" style="height:20px;">
  <div id="div1" class="fluid" style="width:65%">
    <div id="Tabs1" style="border:0px;">
      <ul>
        <li><a href="#tabs-1">USD</a></li>
        <li><a href="#tabs-4">KeShs</a></li>
        <li><a href="#tabs-5">UAE </a></li>
        <li><a href="#tabs-6">Swiss Franks</a></li>
        <li><a href="#tabs-7">Russian</a></li>
        <li><a href="#tabs-2">Pounds</a></li>
        <li><a href="#tabs-3">Japanese Yen</a></li>
      </ul>
      <div id="tabs-1">
        <div class="Tabs2">
          <ul>
            <li style="width:40%"><a href="#tabs-8">Buying</a></li>
            <li style="width:40%"><a href="#tabs-9">Selling</a></li>
          </ul>
          <div id="tabs-8">
            <table id="topRates"border="0" style="width:100%">
              <tr>
                <th>&nbsp;</th>
                <th scope="col">Forex</th>
                <th scope="col">Buying</th>
                <th scope="col4">Selling</th>
              </tr>
              <tr>
                <td>1</td>
                <td>Dahabshir</td>
                <td>3520</td>
                <td scope="col4">42134</td>
              </tr>
              <tr>
                <td>2</td>
                <td>Barclays</td>
                <td>3519</td>
                <td>32445</td>
              </tr>
              <tr>
                <td>3</td>
                <td>UAE forex</td>
                <td>3519</td>
                <td>3453543</td>
              </tr>
              <tr>
                <td>4</td>
                <td>Crane Forex</td>
                <td>3518</td>
                <td>3243244</td>
              </tr>
              <tr>
                <td>5</td>
                <td>Amal Forex</td>
                <td>3512</td>
                <td>32424</td>
              </tr>
              <tr>
                <td>6</td>
                <td>Equity Forex</td>
                <td>3489</td>
                <td>345354</td>
              </tr>
              <tr>
                <td>7</td>
                <td>West Apex Forex</td>
                <td>3403</td>
                <td>345354</td>
              </tr>
            </table>
          </div>
          <div id="tabs-9">
            <table id="topRates"border="0" style="width:100%">
              <tr>
                <th>&nbsp;</th>
                <th scope="col">Forex</th>
                <th scope="col">Selling</th>
                <th scope="col4">Buying</th>
              </tr>
              <tr>
                <td>1</td>
                <td>Amal Forex</td>
                <td>32424</td>
                <td>3512</td>
              </tr>
              <tr>
                <td>2</td>
                <td>Barclays</td>
                <td>32445</td>
                <td>3519</td>
              </tr>
              <tr>
                <td>3</td>
                <td>Dahabshir</td>
                <td>42134</td>
                <td>3520</td>
              </tr>
              <tr>
                <td>4</td>
                <td>West Apex Forex</td>
                <td>345354</td>
                <td>3403</td>
              </tr>
              <tr>
                <td>5</td>
                <td>Equity Forex</td>
                <td>345354</td>
                <td>3489</td>
              </tr>
              <tr>
                <td>6</td>
                <td>Crane Forex</td>
                <td>3243244</td>
                <td>3518</td>
              </tr>
              <tr>
                <td>7</td>
                <td>UAE forex</td>
                <td>3453543</td>
                <td>3519</td>
              </tr>
            </table>
          </div>
        </div>
      </div>
      <div id="tabs-4">
        <div class="Tabs2">
          <ul>
            <li style="width:40%"><a href="#tabs-8">Buying</a></li>
            <li style="width:40%"><a href="#tabs-9">Selling</a></li>
          </ul>
          <div id="tabs-8">
            <table id="topRates"border="0" style="width:100%">
              <tr>
                <th>&nbsp;</th>
                <th scope="col">Forex</th>
                <th scope="col">Buying</th>
                <th scope="col4">Selling</th>
              </tr>
              <tr>
                <td>1</td>
                <td>Barclays Forex</td>
                <td>45</td>
                <td scope="col4">49</td>
              </tr>
              <tr>
                <td>2</td>
                <td>West Apex Forex</td>
                <td>43</td>
                <td>47</td>
              </tr>
              <tr>
                <td>3</td>
                <td>Equity Forex</td>
                <td>39</td>
                <td>48</td>
              </tr>
              <tr>
                <td>4</td>
                <td>Crane Forex</td>
                <td>34</td>
                <td>51</td>
              </tr>
              <tr>
                <td>5</td>
                <td>Amal Forex</td>
                <td>33</td>
                <td>54</td>
              </tr>
              <tr>
                <td>6</td>
                <td>Dahabshir</td>
                <td>32</td>
                <td>41</td>
              </tr>
              <tr>
                <td>7</td>
                <td>UAE forex</td>
                <td>28</td>
                <td>34</td>
              </tr>
            </table>
          </div>
          <div id="tabs-9">
            <table id="topRates"border="0" style="width:100%">
              <tr>
                <th>&nbsp;</th>
                <th scope="col">Forex</th>
                <th scope="col">Selling</th>
                <th scope="col4">Buying</th>
              </tr>
              <tr>
                <td>1</td>
                <td>UAE forex</td>
                <td>32</td>
                <td>28</td>
              </tr>
              <tr>
              <tr>
                <td>3</td>
                <td>Dahabshir</td>
                <td>41</td>
                <td>32</td>
              </tr>
                <td>2</td>
                <td>West Apex Forex</td>
                <td>47</td>
                <td>43</td>
              </tr>
              <tr>
                <td>4</td>
                <td>Equity Forex</td>
                <td>48</td>
                <td>39</td>
              </tr>
              <tr>
                <td>5</td>
                <td>Barclays Forex</td>
                <td>49</td>
                <td>45</td>
              </tr>
              <tr>
                <td>6</td>
                <td>Crane Forex</td>
                <td>51</td>
                <td>34</td>
              </tr>
              <tr>
                <td>7</td>
                <td>Amal Forex</td>
                <td>54</td>
                <td>33</td>
              </tr>
            </table>
          </div>
        </div>
      </div>
      <div id="tabs-5">
        <div class="Tabs2">
          <ul>
            <li style="width:40%"><a href="#tabs-8">Buying</a></li>
            <li style="width:40%"><a href="#tabs-9">Selling</a></li>
          </ul>
          <div id="tabs-8">
            <table id="topRates"border="0" style="width:100%">
              <tr>
                <th>&nbsp;</th>
                <th scope="col">Forex</th>
                <th scope="col">Buying</th>
                <th scope="col4">Selling</th>
              </tr>
              <tr>
                <td>1</td>
                <td>Dahabshir</td>
                <td>3520</td>
                <td scope="col4">42134</td>
              </tr>
              <tr>
                <td>2</td>
                <td>Barclays</td>
                <td>3519</td>
                <td>32445</td>
              </tr>
              <tr>
                <td>3</td>
                <td>UAE forex</td>
                <td>3519</td>
                <td>3453543</td>
              </tr>
              <tr>
                <td>4</td>
                <td>Crane Forex</td>
                <td>3518</td>
                <td>3243244</td>
              </tr>
              <tr>
                <td>5</td>
                <td>Amal Forex</td>
                <td>3512</td>
                <td>32424</td>
              </tr>
              <tr>
                <td>6</td>
                <td>Equity Forex</td>
                <td>3489</td>
                <td>345354</td>
              </tr>
              <tr>
                <td>7</td>
                <td>West Apex Forex</td>
                <td>3403</td>
                <td>345354</td>
              </tr>
            </table>
          </div>
          <div id="tabs-9">
            <table id="topRates"border="0" style="width:100%">
              <tr>
                <th>&nbsp;</th>
                <th scope="col">Forex</th>
                <th scope="col">Selling</th>
                <th scope="col4">Buying</th>
              </tr>
              <tr>
                <td>1</td>
                <td>Amal Forex</td>
                <td>32424</td>
                <td>3512</td>
              </tr>
              <tr>
                <td>2</td>
                <td>Barclays</td>
                <td>32445</td>
                <td>3519</td>
              </tr>
              <tr>
                <td>3</td>
                <td>Dahabshir</td>
                <td>42134</td>
                <td>3520</td>
              </tr>
              <tr>
                <td>4</td>
                <td>West Apex Forex</td>
                <td>345354</td>
                <td>3403</td>
              </tr>
              <tr>
                <td>5</td>
                <td>Equity Forex</td>
                <td>345354</td>
                <td>3489</td>
              </tr>
              <tr>
                <td>6</td>
                <td>Crane Forex</td>
                <td>3243244</td>
                <td>3518</td>
              </tr>
              <tr>
                <td>7</td>
                <td>UAE forex</td>
                <td>3453543</td>
                <td>3519</td>
              </tr>
            </table>
          </div>
        </div>
      </div>
      <div id="tabs-6">
        <div class="Tabs2">
          <ul>
            <li style="width:40%"><a href="#tabs-8">Buying</a></li>
            <li style="width:40%"><a href="#tabs-9">Selling</a></li>
          </ul>
          <div id="tabs-8">
            <table id="topRates"border="0" style="width:100%">
              <tr>
                <th>&nbsp;</th>
                <th scope="col">Forex</th>
                <th scope="col">Buying</th>
                <th scope="col4">Selling</th>
              </tr>
              <tr>
                <td>1</td>
                <td>Dahabshir</td>
                <td>3520</td>
                <td scope="col4">42134</td>
              </tr>
              <tr>
                <td>2</td>
                <td>Barclays</td>
                <td>3519</td>
                <td>32445</td>
              </tr>
              <tr>
                <td>3</td>
                <td>UAE forex</td>
                <td>3519</td>
                <td>3453543</td>
              </tr>
              <tr>
                <td>4</td>
                <td>Crane Forex</td>
                <td>3518</td>
                <td>3243244</td>
              </tr>
              <tr>
                <td>5</td>
                <td>Amal Forex</td>
                <td>3512</td>
                <td>32424</td>
              </tr>
              <tr>
                <td>6</td>
                <td>Equity Forex</td>
                <td>3489</td>
                <td>345354</td>
              </tr>
              <tr>
                <td>7</td>
                <td>West Apex Forex</td>
                <td>3403</td>
                <td>345354</td>
              </tr>
            </table>
          </div>
          <div id="tabs-9">
            <table id="topRates"border="0" style="width:100%">
              <tr>
                <th>&nbsp;</th>
                <th scope="col">Forex</th>
                <th scope="col">Selling</th>
                <th scope="col4">Buying</th>
              </tr>
              <tr>
                <td>1</td>
                <td>Amal Forex</td>
                <td>32424</td>
                <td>3512</td>
              </tr>
              <tr>
                <td>2</td>
                <td>Barclays</td>
                <td>32445</td>
                <td>3519</td>
              </tr>
              <tr>
                <td>3</td>
                <td>Dahabshir</td>
                <td>42134</td>
                <td>3520</td>
              </tr>
              <tr>
                <td>4</td>
                <td>West Apex Forex</td>
                <td>345354</td>
                <td>3403</td>
              </tr>
              <tr>
                <td>5</td>
                <td>Equity Forex</td>
                <td>345354</td>
                <td>3489</td>
              </tr>
              <tr>
                <td>6</td>
                <td>Crane Forex</td>
                <td>3243244</td>
                <td>3518</td>
              </tr>
              <tr>
                <td>7</td>
                <td>UAE forex</td>
                <td>3453543</td>
                <td>3519</td>
              </tr>
            </table>
          </div>
        </div>
      </div>
      <div id="tabs-7">
        <div class="Tabs2">
          <ul>
            <li style="width:40%"><a href="#tabs-8">Buying</a></li>
            <li style="width:40%"><a href="#tabs-9">Selling</a></li>
          </ul>
          <div id="tabs-8">
            <table id="topRates"border="0" style="width:100%">
              <tr>
                <th>&nbsp;</th>
                <th scope="col">Forex</th>
                <th scope="col">Buying</th>
                <th scope="col4">Selling</th>
              </tr>
              <tr>
                <td>1</td>
                <td>Dahabshir</td>
                <td>3520</td>
                <td scope="col4">42134</td>
              </tr>
              <tr>
                <td>2</td>
                <td>Barclays</td>
                <td>3519</td>
                <td>32445</td>
              </tr>
              <tr>
                <td>3</td>
                <td>UAE forex</td>
                <td>3519</td>
                <td>3453543</td>
              </tr>
              <tr>
                <td>4</td>
                <td>Crane Forex</td>
                <td>3518</td>
                <td>3243244</td>
              </tr>
              <tr>
                <td>5</td>
                <td>Amal Forex</td>
                <td>3512</td>
                <td>32424</td>
              </tr>
              <tr>
                <td>6</td>
                <td>Equity Forex</td>
                <td>3489</td>
                <td>345354</td>
              </tr>
              <tr>
                <td>7</td>
                <td>West Apex Forex</td>
                <td>3403</td>
                <td>345354</td>
              </tr>
            </table>
          </div>
          <div id="tabs-9">
            <table id="topRates"border="0" style="width:100%">
              <tr>
                <th>&nbsp;</th>
                <th scope="col">Forex</th>
                <th scope="col">Selling</th>
                <th scope="col4">Buying</th>
              </tr>
              <tr>
                <td>1</td>
                <td>Amal Forex</td>
                <td>32424</td>
                <td>3512</td>
              </tr>
              <tr>
                <td>2</td>
                <td>Barclays</td>
                <td>32445</td>
                <td>3519</td>
              </tr>
              <tr>
                <td>3</td>
                <td>Dahabshir</td>
                <td>42134</td>
                <td>3520</td>
              </tr>
              <tr>
                <td>4</td>
                <td>West Apex Forex</td>
                <td>345354</td>
                <td>3403</td>
              </tr>
              <tr>
                <td>5</td>
                <td>Equity Forex</td>
                <td>345354</td>
                <td>3489</td>
              </tr>
              <tr>
                <td>6</td>
                <td>Crane Forex</td>
                <td>3243244</td>
                <td>3518</td>
              </tr>
              <tr>
                <td>7</td>
                <td>UAE forex</td>
                <td>3453543</td>
                <td>3519</td>
              </tr>
            </table>
          </div>
        </div>
      </div>
      <div id="tabs-2">
        <div class="Tabs2">
          <ul>
            <li style="width:40%"><a href="#tabs-8">Buying</a></li>
            <li style="width:40%"><a href="#tabs-9">Selling</a></li>
          </ul>
          <div id="tabs-8">
            <table id="topRates"border="0" style="width:100%">
              <tr>
                <th>&nbsp;</th>
                <th scope="col">Forex</th>
                <th scope="col">Buying</th>
                <th scope="col4">Selling</th>
              </tr>
              <tr>
                <td>1</td>
                <td>Dahabshir</td>
                <td>3520</td>
                <td scope="col4">42134</td>
              </tr>
              <tr>
                <td>2</td>
                <td>Barclays</td>
                <td>3519</td>
                <td>32445</td>
              </tr>
              <tr>
                <td>3</td>
                <td>UAE forex</td>
                <td>3519</td>
                <td>3453543</td>
              </tr>
              <tr>
                <td>4</td>
                <td>Crane Forex</td>
                <td>3518</td>
                <td>3243244</td>
              </tr>
              <tr>
                <td>5</td>
                <td>Amal Forex</td>
                <td>3512</td>
                <td>32424</td>
              </tr>
              <tr>
                <td>6</td>
                <td>Equity Forex</td>
                <td>3489</td>
                <td>345354</td>
              </tr>
              <tr>
                <td>7</td>
                <td>West Apex Forex</td>
                <td>3403</td>
                <td>345354</td>
              </tr>
            </table>
          </div>
          <div id="tabs-9">
            <table id="topRates"border="0" style="width:100%">
              <tr>
                <th>&nbsp;</th>
                <th scope="col">Forex</th>
                <th scope="col">Selling</th>
                <th scope="col4">Buying</th>
              </tr>
              <tr>
                <td>1</td>
                <td>Amal Forex</td>
                <td>32424</td>
                <td>3512</td>
              </tr>
              <tr>
                <td>2</td>
                <td>Barclays</td>
                <td>32445</td>
                <td>3519</td>
              </tr>
              <tr>
                <td>3</td>
                <td>Dahabshir</td>
                <td>42134</td>
                <td>3520</td>
              </tr>
              <tr>
                <td>4</td>
                <td>West Apex Forex</td>
                <td>345354</td>
                <td>3403</td>
              </tr>
              <tr>
                <td>5</td>
                <td>Equity Forex</td>
                <td>345354</td>
                <td>3489</td>
              </tr>
              <tr>
                <td>6</td>
                <td>Crane Forex</td>
                <td>3243244</td>
                <td>3518</td>
              </tr>
              <tr>
                <td>7</td>
                <td>UAE forex</td>
                <td>3453543</td>
                <td>3519</td>
              </tr>
            </table>
          </div>
        </div>
      </div>
      <div id="tabs-3">
        <div class="Tabs2">
          <ul>
            <li style="width:40%"><a href="#tabs-8">Buying</a></li>
            <li style="width:40%"><a href="#tabs-9">Selling</a></li>
          </ul>
          <div id="tabs-8">
            <table id="topRates"border="0" style="width:100%">
              <tr>
                <th>&nbsp;</th>
                <th scope="col">Forex</th>
                <th scope="col">Buying</th>
                <th scope="col4">Selling</th>
              </tr>
              <tr>
                <td>1</td>
                <td>Dahabshir</td>
                <td>3520</td>
                <td scope="col4">42134</td>
              </tr>
              <tr>
                <td>2</td>
                <td>Barclays</td>
                <td>3519</td>
                <td>32445</td>
              </tr>
              <tr>
                <td>3</td>
                <td>UAE forex</td>
                <td>3519</td>
                <td>3453543</td>
              </tr>
              <tr>
                <td>4</td>
                <td>Crane Forex</td>
                <td>3518</td>
                <td>3243244</td>
              </tr>
              <tr>
                <td>5</td>
                <td>Amal Forex</td>
                <td>3512</td>
                <td>32424</td>
              </tr>
              <tr>
                <td>6</td>
                <td>Equity Forex</td>
                <td>3489</td>
                <td>345354</td>
              </tr>
              <tr>
                <td>7</td>
                <td>West Apex Forex</td>
                <td>3403</td>
                <td>345354</td>
              </tr>
            </table>
          </div>
          <div id="tabs-9">
            <table id="topRates"border="0" style="width:100%">
              <tr>
                <th>&nbsp;</th>
                <th scope="col">Forex</th>
                <th scope="col">Selling</th>
                <th scope="col4">Buying</th>
              </tr>
              <tr>
                <td>1</td>
                <td>Amal Forex</td>
                <td>32424</td>
                <td>3512</td>
              </tr>
              <tr>
                <td>2</td>
                <td>Barclays</td>
                <td>32445</td>
                <td>3519</td>
              </tr>
              <tr>
                <td>3</td>
                <td>Dahabshir</td>
                <td>42134</td>
                <td>3520</td>
              </tr>
              <tr>
                <td>4</td>
                <td>West Apex Forex</td>
                <td>345354</td>
                <td>3403</td>
              </tr>
              <tr>
                <td>5</td>
                <td>Equity Forex</td>
                <td>345354</td>
                <td>3489</td>
              </tr>
              <tr>
                <td>6</td>
                <td>Crane Forex</td>
                <td>3243244</td>
                <td>3518</td>
              </tr>
              <tr>
                <td>7</td>
                <td>UAE forex</td>
                <td>3453543</td>
                <td>3519</td>
              </tr>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div id="div1" class="fluid" style="float:right;width:35%; clear:none">
    <p style="font-weight:bold; font-size:14px">Forex by Location</p>
    <select>
      <option>Kampala</option>
      <option>Masaka</option>
      <option>Ntinda</option>
      <option>Kla Central</option>
      <option>Bugolobi</option>
      <option>Mutungo</option>
      <option>Kireka</option>
    </select>
    <table style="color:#272727" width="100%">
      <tr>
        <th scope="col"> Centinary Forex </th>
      </tr>
      <tr>
        <td>Amal Forex</td>
      </tr>
      <tr>
        <td>Dahabshir</td>
      </tr>
      <tr>
        <td>Crane Forex</td>
      </tr>
      <tr>
        <td>Uptown Forex</td>
      </tr>
      <tr>
        <td>Mupuya Forex</td>
      </tr>
      <tr>
        <td>Five Lions Forex</td>
      </tr>
      <tr>
        <td>Equity Forex</td>
      </tr>
    </table>
    <button style="margin-top:30px">Read more</button>
  </div>
  <div id="div1" class="fluid" style="height:200px; background:#BCB846; text-align:center;">Context</div>
  <div id="div1" class="fluid" style="height:80px; background:#A698F1; margin-top:40px; text-align:center;">News</div>
</div>
<script type="text/javascript">
$(function() {
	$( "#Tabs1" ).tabs(); 
});
$(function() {
	$( ".Tabs2" ).tabs(); 
});
</script>
</body>
</html>
