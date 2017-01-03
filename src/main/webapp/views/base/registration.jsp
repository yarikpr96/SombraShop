<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div style=" height: 120%;">
    <div style="font-size: 16px; text-align: center; width: 280px; height: auto; background-color: #999999; color: white; float: inherit;position: absolute;left:41%; margin: 0px; border: 3px double black; border-radius: 0px;">

        <form:form action="/registration" method="post" modelAttribute="customer">
            <p style="text-align: center; font-size: 18px;  color: white;">Name</p>
            <form:errors path="name"/>
            <form:input  path="name"/>
            <p style="text-align: center; font-size: 18px;  color: white;">Surname</p>
            <form:errors path="surname"/>
            <form:input path="surname"/>
            <p style="text-align: center; font-size: 18px;  color: white;">Email</p>
            <form:errors path="email"/>
            <form:input path="email"/>
            <p style="text-align: center; font-size: 18px;  color: white;">Mobile</p>
            <form:errors path="mobile_phone"/>
            <form:input  path="mobile_phone"/>
            <p style="text-align: center; font-size: 18px;  color: white;">Password</p>
            <form:errors path="password"/>
            <form:password path="password"/>
            <p style="text-align: center; font-size: 18px;  color: white;">Repeat password</p>
            <form:errors path="password"/>
            <form:password path="passwordConfirm"/>
            <p style="text-align: center; font-size: 18px;  color: white;"><form:button>Sign up!</form:button></p>
        </form:form>
    </div>
</div>