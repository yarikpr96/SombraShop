<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <link rel="stylesheet" type="text/css" media="all" href="/resources/css/stylesform.css">
    <link rel="stylesheet" type="text/css" media="all" href="http://fonts.googleapis.com/css?family=Skranji:400,700|Oxygen:400,700">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

<body>
<div id="w">

<form:form id="contactform" action="/contact" method="post">
        <p class="note"><span class="req">*</span> Поля із зірочкою є обов'язковими для заповнення</p>
        <div class="row">
            <label for="name">Ваше Ім'я <span class="req">*</span></label>
            <input type="text" name="name" id="name" class="txt" tabindex="1" placeholder="Ярік" required>
        </div>

        <div class="row">
            <label for="email">E-mail  <span class="req">*</span></label>
            <input type="email" name="email" id="email" class="txt" tabindex="2" placeholder="address@gmail.com" required>
        </div>


        <div class="row">
            <label for="message">Повідомлення <span class="req">*</span></label>
            <textarea name="message" id="message" class="txtarea" tabindex="4" required></textarea>
        </div>

        <div class="center">
            <input type="submit" id="submitbtn" name="submitbtn" tabindex="5" value="Надіслати">
        </div>
    </form:form>

</div>
</body>
</html>