<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<head>


    <!-- CSS -->
    <link rel="stylesheet" type="text/css" media="all" href="/resources/style.css">
    <link rel="stylesheet" type="text/css" media="screen and (max-width: 980px)" href="/resources/css/lessthen980.css">
    <link rel="stylesheet" type="text/css" media="screen and (max-width: 600px)" href="/resources/css/lessthen600.css">
    <link rel="stylesheet" type="text/css" media="screen and (max-width: 480px)" href="/resources/css/lessthen480.css">
    <link rel="stylesheet" href="/resources/css/shop.css" type="text/css" media="all">
    <link rel="stylesheet" href="/resources/css/prettyPhoto.css" type="text/css" media="all">
    <link rel="stylesheet" href="/resources/css/tipsy.css" type="text/css" media="all">
    <link rel="stylesheet" href="/resources/css/jquery-rotating.css" type="text/css" media="all">
    <link rel="stylesheet" href="/resources/css/slider-cycle.css" type="text/css" media="all">

    <!-- [favicon] begin -->
    <link rel="shortcut icon" type="image/x-icon" href="/resources/favicon.ico">
    <link rel="icon" type="image/x-icon" href="/resources/favicon.ico">
    <!-- [favicon] end -->

    <!-- FONT -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Lobster&amp;ver=3.3.2" type="text/css"
          media="all">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz%3A400&amp;ver=3.3.2"
          type="text/css" media="all">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Droid+Sans&amp;ver=3.3.2" type="text/css"
          media="all">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Lobster&amp;text=Sommerce+Shop&amp;ver=3.3.2"
          type="text/css" media="all">

    <!-- SCRIPTS -->
    <script type="text/javascript" src="/resources/js/jquery.js"></script>
    <script type="text/javascript" src="/resources/js/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" src="/resources/js/jquery.tipsy.js"></script>
    <script type="text/javascript" src="/resources/js/jquery.tweetable.js"></script>
    <script type="text/javascript" src="/resources/js/jquery.nivo.slider.pack.js"></script>
    <script type="text/javascript" src="/resources/js/jquery.cycle.min.js"></script>
    <script type="text/javascript" src="/resources/js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="/resources/js/comment-reply.js"></script>

    <link rel="stylesheet" type="text/css" media="all" href="/resources/css/home.css">

    <script type="text/javascript" charset="utf-8" async=""
            src="https://platform.twitter.com/js/button.3943c052be33b5e812dac6838df9cb3d.js"></script>

</head>
<body class="responsive boxed-layout yes_js">
<!-- START LIGHT WRAPPER -->
<div class="bgLight group">
    <!-- START WRAPPER -->
    <div class="wrapper group">
        <!-- START BG WRAPPER -->
        <div class="bgWrapper group">

            <div id="primary" class="inner group">
                <div class="layout-sidebar-no group">
                    <div id="container">
                        <div id="content" role="main">


                            <div class="product type-product status-publish hentry">

                                <div style="height:100% ;" class="images">
                                    <a href="data:image/jpeg;base64,${product.image}" class="zoom"
                                       rel="prettyphoto[gallery]">
                                        <img width="530" height="345" src="data:image/jpeg;base64,${product.image}"
                                             class="attachment-530x345 wp-post-image" alt="originalparquet_001_big"
                                             title="originalparquet_001_big">
                                    </a>
                                </div>
                                <div class="summary">
                                    <p class="price">
                                        <ins>${product.price_product} грн</ins>
                                    </p>
                                    <p> ${product.name_product} </p>
                                    <p> ${product.brand} </p>
                                    <p> ${product.description_product} </p>
                                    <sec:authorize access="hasRole('USER')">
                                        <a href="/product/${id_product}" class="button-alt">Add to cart</a>
                                    </sec:authorize>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>

        </div>

    </div>

    <script type="text/javascript" src="/resources/js/jquery.custom.js"></script>
    <script type="text/javascript" src="/resources/js/contact.js"></script>


</div>
<iframe id="rufous-sandbox" scrolling="no" frameborder="0" allowtransparency="true" allowfullscreen="true"
        style="position: absolute; visibility: hidden; display: none; width: 0px; height: 0px; padding: 0px; border: none;"
        title="Twitter analytics iframe"
></iframe>
</body>
