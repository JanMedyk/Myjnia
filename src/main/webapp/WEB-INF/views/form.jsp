<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="pl.myjnia.enumSizes" %>
<%--
  Created by IntelliJ IDEA.
  User: jan
  Date: 07.07.2020
  Time: 17:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="/">
<input type="text" name="nazwaAuta">
    <input type="text" name="nrRej">
    <select name="rozmiar">
        <c:forEach items="${enumSizes.getRozmiar}" var="a">

        <option value="a">a</option>

            </c:forEach>

</form>
</body>
</html>
