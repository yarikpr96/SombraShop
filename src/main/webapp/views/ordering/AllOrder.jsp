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
<script type="text/javascript" src="/resources/js/bootbox.min.js"></script>



<body class="responsive boxed-layout yes_js">

<div class="wrapper group">
    <div class="bgWrapper group">
        <div id="sliderer" class="thumbnails group inner">
            <div id="primary" class="inner group">

                <c:forEach items="${order}" var="a">


                    <div style="font-size: 20px; text-align: center; width: 940px; height: auto; background-color: gainsboro; color: #101010; float: left;margin-top: 15px;  border: 5px double black; border-radius: 0px;">
                        <p style="font-size: 20px;">${a.customer}</p>
                        <p style="font-size: 20px;">${a.productList}</p>
                        <p style="font-size: 20px;"> Дата ${a.date}</p>
                        <p style="font-size: 20px;">Сума ${a.sum}</p>
                        <sec:authorize access="hasRole('ADMIN')">
                            <form:form action="/order/delete/${a.id_order}" method="post">
                                <button type="submit">Видалити</button>
                            </form:form>
                        </sec:authorize>
                    </div>


                </c:forEach>

            </div>
        </div>
    </div>
</div>
</body>

