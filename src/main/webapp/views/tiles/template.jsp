<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<html>
<head>
    <link rel="shortcut icon" type="image/x-icon" href="/resources/favicon.ico">
    <link rel="icon" type="image/x-icon" href="/resources/favicon.ico">
</head>



<body>
<div><tiles:insertAttribute name="header"/></div>
<div><tiles:insertAttribute name="body"/></div>
<div><tiles:insertAttribute name="footer"/></div>
</body>
</html>
