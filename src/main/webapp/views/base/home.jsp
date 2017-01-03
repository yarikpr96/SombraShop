<%--suppress ALL --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<body class="responsive boxed-layout yes_js">


<div class="bgLight group">

    <div class="wrapper group">

        <div class="bgWrapper group">

            <div id="sliderer" class="thumbnails group inner">
                <div style="height: 100%">
                    <div class="showcase group" style="width: 970px;">
                        <div class="showcase-arrow-next"></div>
                        <div class="showcase-arrow-previous"></div>
                        <div class="showcase-content-container"
                             style="overflow: hidden; position: relative; height: 350px;">
                            <div id="showcase-content-0" class="showcase-content"
                                 style="overflow: hidden; position: absolute; width: 960px; height: 350px; left: 0px;">
                                <div class="showcase-content">
                                    <div class="showcase-content-wrapper">
                                        <img src="/resources/images/creative/0033.jpg" width="958" height="308" alt="">
                                    </div>
                                </div>
                                <div class="showcase-caption" style="display: block; opacity: 0.2304;">
                                    <p class="special-font"></p>
                                </div>
                                <div class="showcase-tooltips">
                                    <a href="" coords="338,67" class="showcase-plus-anchor"
                                       style="position: absolute; width: 32px; height: 32px; left: 322px; top: 51px;"></a>
                                </div>
                            </div>
                        </div>

                        <p style="text-align: center ; font-size: 24px">Hello!!!</p>
                    </div>
                </div>

                <script type="text/javascript">
                    var yiw_slider_type = 'thumbnails',
                            yiw_slider_thumbnails_fx = 'fade',
                            yiw_slider_thumbnails_speed = 500,
                            yiw_slider_thumbnails_timeout = 5000;
                </script>


                <!-- Модальне вікно  -->
                <div id="overlay">
                    <div class="popup">
                        <p style="text-align: center">Доброго дня!</p>
                        <p style="text-align: center">Можливість здійснення покупок доступна тільки для зареєстрованих
                            користувачів</p>
                        <p style="text-align: center">Щоб повноцінно користуватися можливостями нашого сайту Увійдіть
                            або Зареєструйтеся</p>
                        <p style="float: right"> &nbsp; Адміністрація</p>
                        <button class="close" title="Закрыть"
                                onclick="document.getElementById('overlay').style.display='none';"></button>
                    </div>
                </div>
                <script src="http://yastatic.net/jquery/2.1.4/jquery.min.js"></script>
                <script src="http://yastatic.net/jquery/cookie/1.0/jquery.cookie.min.js"></script>
                <script type="text/javascript">
                    $(function () {

                        if (!$.cookie('hideModal')) {

                            // якщо cookie не встановлено появится вікно

                            var delay_popup = 3000;
                            setTimeout("document.getElementById('overlay').style.display='block'", delay_popup);
                        }

                        $.cookie('hideModal', false, {

                            expires: 2,
                            path: '/'
                        });
                    });
                </script>

                <style type="text/css">
                    /** {*/
                    /*box-sizing: border-box;*/
                    /*}*/
                    /*body {*/
                    /*background: #00796B;*/
                    /*margin: 0;*/
                    /*font:14px/1.3 'Roboto',Helvetica,sans-serif;*/
                    /*}*/
                    h1,
                    h2 {
                        font-weight: 300;
                        margin: 0 0 1rem 0;
                    }

                    a {
                        text-decoration: none;
                        color: #72dea0;
                    }

                    a:hover {
                        color: #82eaae
                    }

                    header {
                        padding: 7vh 10vw;
                        background: #ffebee;
                    }

                    header h1 {
                        color: rgba(0, 0, 0, 0.54);
                    }

                    .info {
                        background: #009688;
                        padding: 3vh 10vw;
                        color: #d9d9d9;
                    }

                    /* Всплывающее окно
                    * при загрузке сайта
                    */
                    /* базовый контейнер, фон затемнения*/
                    #overlay {
                        position: fixed;
                        top: 0;
                        left: 0;
                        display: none;
                        width: 100%;
                        height: 100%;
                        background: rgba(0, 0, 0, 0.65);
                        z-index: 999;
                        -webkit-animation: fade .6s;
                        -moz-animation: fade .6s;
                        animation: fade .6s;
                        overflow: auto;
                    }

                    /* модальный блок */
                    .popup {
                        top: 25%;
                        left: 0;
                        right: 0;
                        font-size: 14px;
                        margin: auto;
                        width: 85%;
                        min-width: 320px;
                        max-width: 600px;
                        position: absolute;
                        padding: 15px 20px;
                        border: 1px solid #383838;
                        background: #fefefe;
                        z-index: 1000;
                        -webkit-border-radius: 4px;
                        -moz-border-radius: 4px;
                        -ms-border-radius: 4px;
                        border-radius: 4px;
                        font: 14px/18px 'Tahoma', Arial, sans-serif;
                        -webkit-box-shadow: 0 15px 20px rgba(0, 0, 0, .22), 0 19px 60px rgba(0, 0, 0, .3);
                        -moz-box-shadow: 0 15px 20px rgba(0, 0, 0, .22), 0 19px 60px rgba(0, 0, 0, .3);
                        -ms-box-shadow: 0 15px 20px rgba(0, 0, 0, .22), 0 19px 60px rgba(0, 0, 0, .3);
                        box-shadow: 0 15px 20px rgba(0, 0, 0, .22), 0 19px 60px rgba(0, 0, 0, .3);
                        -webkit-animation: fade .6s;
                        -moz-animation: fade .6s;
                        animation: fade .6s;
                    }

                    /* заголовки в модальном блоке */
                    .popup h2, .popup h3 {
                        margin: 0 0 1rem 0;
                        font-weight: 300;
                        line-height: 1.3;
                        color: #009032;
                        text-shadow: 1px 2px 4px #ddd;
                    }

                    /* кнопка закрытия */
                    .close {
                        top: 10px;
                        right: 10px;
                        width: 32px;
                        height: 32px;
                        position: absolute;
                        border: none;
                        -webkit-border-radius: 50%;
                        -moz-border-radius: 50%;
                        -ms-border-radius: 50%;
                        -o-border-radius: 50%;
                        border-radius: 50%;
                        background-color: rgba(0, 131, 119, 0.9);
                        -webkit-box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
                        -moz-box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
                        box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
                        cursor: pointer;
                        outline: none;

                    }

                    .close:before {
                        color: rgba(255, 255, 255, 0.9);
                        content: "X";
                        font-family: Arial, Helvetica, sans-serif;
                        font-size: 14px;
                        font-weight: normal;
                        text-decoration: none;
                        text-shadow: 0 -1px rgba(0, 0, 0, 0.9);
                        -webkit-transition: all 0.5s;
                        -moz-transition: all 0.5s;
                        transition: all 0.5s;
                    }

                    /* кнопка закрытия при наведении */
                    .close:hover {
                        background-color: rgba(252, 20, 0, 0.8);
                    }

                    /* изображения в модальном окне */
                    .popup img {
                        width: 100%;
                        height: auto;
                        box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
                    }

                    /* миниатюры изображений */
                    .pl-left,
                    .pl-right {
                        width: 25%;
                        height: auto;
                    }

                    /* миниатюры справа */
                    .pl-right {
                        float: right;
                        margin: 5px 0 5px 15px;
                    }

                    /* миниатюры слева */
                    .pl-left {
                        float: left;
                        margin: 5px 18px 5px 0;
                    }

                    /* анимация при появлении блоков с содержанием */
                    @-moz-keyframes fade {
                        from {
                            opacity: 0;
                        }
                        to {
                            opacity: 1
                        }
                    }

                    @-webkit-keyframes fade {
                        from {
                            opacity: 0;
                        }
                        to {
                            opacity: 1
                        }
                    }

                    @keyframes fade {
                        from {
                            opacity: 0;
                        }
                        to {
                            opacity: 1
                        }
                    }
                </style>
            </div>
        </div>
    </div>
</div>
</body>
