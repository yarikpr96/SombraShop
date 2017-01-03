<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
                <div style="height: 100%">
                    <div id="tooplate_wrapper4">
                        <form action="/productEdit?${_csrf.parameterName}=${_csrf.token}" method="post"
                              enctype="multipart/form-data">

                            <table cellpadding="5px">


                                    <td align="left">
                                        <input type="HIDDEN" name="id_product" value="${product.id_product}">
                                    </td>

                                <tr>
                                    <td align="right">
                                        Назва:
                                    </td>
                                    <td align="left">
                                        <input type="text" name="name_product" value="${product.name_product}">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        Бренд:
                                    </td>
                                    <td align="left">
                                        <input type="text" name="brand" value="${product.brand}">
                                    </td>
                                </tr>

                                <tr>
                                    <td align="right">
                                        Опис:
                                    </td>
                                    <td align="left">
                                        <textarea name="description_product">${product.description_product}</textarea>
                                    </td>
                                </tr>

                                <tr>
                                    <td align="right">
                                        Ціна:
                                    </td>
                                    <td align="left">
                                        <input type="number" name="price_product" value="${product.price_product}">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        Зображення:
                                    </td>
                                    <td align="left">
                                        <input type="file" name="image">
                                    </td>
                                </tr>
                                <tr>
                                    <td>

                                    </td>
                                    <td align="left">
                                        <button type="submit">Редагувати</button>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
