<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    function delFromCard(ItemId) {
        $.get("/delFromCard", {id_product: ItemId}, onRemoveFromCard);
        function onRemoveFromCard() {
            location.reload();

        }
    }
</script>
<body class="responsive boxed-layout yes_js">

<div class="wrapper group">
    <div class="bgWrapper group">
        <div id="sliderer" class="thumbnails group inner">
            <div id="primary" class="inner group">
                <div class="boxed-content group">


                    <div style="height: 120%;overflow: auto;">

                        <p style="font-size: 23px; text-align: center; float: inherit">Замовлення</p>
                        <c:forEach items="${products}" var="a">

                            <div style="font-size: 23px;  width: 950px; height: auto; background-color: gainsboro; color: #101010;   border: 2px double black; border-radius: 0px;">
                                    <%--<form:form action="/productCardDel/${a.id_product}" method="post">--%>
                                <a style="font-size: 23px;">${a.name_product} - ${a.price_product} грн.


                                        <%--<button style="float: right" type="submit">Видалити</button>--%>
                                    <button type="button" style="float: right"
                                            onclick="delFromCard(${a.getId_product()})">Remove
                                    </button>
                                        <%--</form:form>--%>
                                </a>


                            </div>


                        </c:forEach>


                        <div style="font-size: 20px; text-align: center; width: 950px; height: auto; background-color: lightgreen; color: #101010; float: inherit;  border: 2px double black; border-radius: 0px;">
                            <p style="font-size: 23px; text-align: center;float: inherit;"> Сума замовлення ${price}
                            грн.</p>

                            <form:form action="/order" method="post">
                                <p style="font-size: 23px; text-align: center;float: inherit;">
                                    <input style="font-size: 23px;" id="submit" type="submit" value="Замовити">
                                </p>
                            </form:form>
                            <form:form action="/productCardDell" method="post">
                                <button type="submit"> Очистити список</button>
                            </form:form>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
