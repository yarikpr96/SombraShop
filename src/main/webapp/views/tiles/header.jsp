<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link rel="stylesheet" type="text/css" media="all" href="<c:url value="/resources/style.css"/>">
<link rel="stylesheet" type="text/css" media="screen and (max-width: 980px)" href="/resources/css/lessthen980.css">
<link rel="stylesheet" type="text/css" media="screen and (max-width: 600px)" href="/resources/css/lessthen600.css">
<link rel="stylesheet" type="text/css" media="screen and (max-width: 480px)" href="/resources/css/lessthen480.css">
<link rel="stylesheet" href="/resources/css/shop.css" type="text/css" media="all">
<link rel="stylesheet" href="/resources/css/fancybox.css" type="text/css" media="all">
<link rel="stylesheet" href="/resources/css/home.css" type="text/css" media="all">
<link rel="stylesheet" href="/resources/css/jquery-rotating.css" type="text/css" media="all">
<link rel="stylesheet" href="/resources/css/piecemaker.css" type="text/css" media="all">
<link rel="stylesheet" href="/resources/css/prettyPhoto.css" type="text/css" media="all">
<link rel="stylesheet" href="/resources/css/slider-cycle.css" type="text/css" media="all">
<link rel="stylesheet" href="/resources/css/slider-nivo.css" type="text/css" media="all">
<link rel="stylesheet" href="/resources/css/tipsy.css" type="text/css" media="all">
<link rel="stylesheet" href="/resources/css/ui.css" type="text/css" media="all">
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
<link rel="icon" type="image/x-icon" href="favicon.ico">
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Lobster&amp;ver=3.3.2" type="text/css" media="all">
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz%3A400&amp;ver=3.3.2"
      type="text/css" media="all">
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Droid+Sans&amp;ver=3.3.2" type="text/css"
      media="all">
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Lobster&amp;text=Sommerce+Shop&amp;ver=3.3.2"
      type="text/css" media="all">
<script type="text/javascript" src="/resources/js/changer.js"></script>
<script type="text/javascript" src="/resources/js/comment-reply.js"></script>
<script type="text/javascript" src="/resources/js/contact.js"></script>
<script type="text/javascript" src="/resources/js/cufon-yui.js"></script>
<script type="text/javascript" src="/resources/js/jquery.aw-showcase.js"></script>
<script type="text/javascript" src="/resources/js/jquery.custom.js"></script>
<script type="text/javascript" src="/resources/js/jquery.cycle.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="/resources/js/jquery.jcarousel.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.js"></script>
<script type="text/javascript" src="/resources/js/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript" src="/resources/js/jquery.prettyPhoto.js"></script>
<script type="text/javascript" src="/resources/js/jquery.RotateImageMenu.js"></script>
<script type="text/javascript" src="/resources/js/jquery.tipsy.js"></script>
<script type="text/javascript" src="/resources/js/jquery.tweetable.js"></script>
<script type="text/javascript" src="/resources/js/swfobject.js"></script>


<div id="header" class="group">

    <div class="inner group">

        <div id="logo" class="group">
            <a href="/" title="YarShop">
                <span class="logo-title"> YarShop</span>
            </a>

        </div>

        <ul id="linksbar" class="group">
            <sec:authorize access="hasRole('USER')">
                <li class="icon cart">
                    <a class="trigger" href="/productCard">
                        <span>  items  </span>
                    </a> |
                    <div class="basketpopup">
                    </div>

                </li>
            </sec:authorize>

            <li class="icon lock">
                <sec:authorize access="isAnonymous()">
                    <a href="/loginpage">Login</a> |
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                    <form:form method="post" action="/logout">
                        <button type="submit" style="margin-top: 8px">Logout</button>
                    </form:form>
                </sec:authorize>
            </li>

            <li><a href="/contact">Contact us</a> |</li>
        </ul>


        <div class="clear"></div>


        <div id="nav" class="group creative">
            <ul id="menu-navigation" class="level-1">

                <li><a href="/">Home</a></li>
                <li><a href="/allProduct">Shop</a></li>
                <sec:authorize access="hasRole('ADMIN')">
                    <li><a href="/newProduct">Add Product</a></li>
                </sec:authorize>
                <sec:authorize access="hasRole('ADMIN')">
                    <li><a href="/AllOrder">All Orders</a></li>
                </sec:authorize>
                <sec:authorize access="hasRole('USER')">
                    <li><a href="/productCard">Items</a></li>
                </sec:authorize>

            </ul>
        </div>

        <form:form id="searchform" action="/search" method="post">
            <div>
                <input type="text" value="" name="name_product" placeholder="Введіть назву товару" id="s">
                <input type="submit" id="searchsubmit" value="Пошук">
            </div>
        </form:form>


    </div>


</div>


