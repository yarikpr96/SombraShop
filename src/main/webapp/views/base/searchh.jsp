<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

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

<script type="text/javascript">
    function addToCard(ItemId) {
        $.get("/addToCard", {id_product: ItemId}, onAddToCard);
        function onAddToCard(message) {
            bootbox.alert(message, function () {
                console.log("Alert Callback");
            });
        }
    }
</script>

<body class="responsive boxed-layout yes_js">

<div class="wrapper group">
    <div class="bgWrapper group">
        <div id="sliderer" class="thumbnails group inner">
            <div id="primary" class="inner group">
                <div class="boxed-content group">
                    <div class="box-content group">
                        <div style="height: 100%">
                            <ul class="products">
                                <c:forEach items="${product}" var="a">
                                    <li class="product border shadow">
                                        <a>
                                            <img width="150" height="150"
                                                 src="data:image/jpeg;base64,${a.image}"
                                                 class="attachment-shop_small wp-post-image">
                                            <strong class="below-thumb"><p>${a.name_product}</p>
                                                <span class="price"> <p>${a.price_product} грн.</p></span>
                                            </strong>
                                        </a>
                                        <div class="buttons">
                                            <a href="/productPage/${a.id_product}"
                                               class="details">Більше</a>&nbsp;
                                            <sec:authorize access="hasRole('USER')">
                                                <button type="button" class="add-to-cart"
                                                        onclick="addToCard(${a.getId_product()})">
                                                    Add to cart
                                                </button>
                                            </sec:authorize>
                                        </div>
                                        <sec:authorize access="hasRole('ADMIN')">
                                            <div class="buttons">
                                                <a href="/productEdit/${a.id_product}"
                                                   class="details">Редагувати</a>
                                                <form:form action="/product/delete/${a.id_product}"
                                                           method="post">
                                                    <button type="submit">Видалити</button>
                                                </form:form>
                                            </div>
                                        </sec:authorize>
                                    </li>
                                </c:forEach>

                                <p style="font-size: 23px; text-align: center;float: inherit;">${error} </p>

                            </ul>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>