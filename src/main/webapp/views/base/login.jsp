<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<link rel='StyleSheet' href='/resources/log/login.css' type='text/css'>
<link rel="icon" href="http://vladmaxi.net/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="http://vladmaxi.net/favicon.ico" type="image/x-icon">
<link href='http://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>

<body>

<div id="login_container">
    <div id="form_container">
        <p class="login-text"><a href="/registration">Зареєструватися</a></p>
        <form:form action="/loginprocessing" method="post" class="login">
            <input type='text' onFocus="if(this.value=='Логін')this.value=''"
                   onblur="if(this.value=='')this.value='Логін'" name='username' value='Логін' class='text_input'/>
            <input type="password" onFocus="if(this.value=='Пароль')this.value=''"
                   onblur="if(this.value=='')this.value='Пароль'" name='password' value='Пароль' class='text_input'/>
            <input type='submit' value='' id='login' name='login'/>
        </form:form>

    </div>
</div>
</body>

