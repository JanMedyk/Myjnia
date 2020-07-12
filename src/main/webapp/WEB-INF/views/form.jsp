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

<form method="post" action="${pageContext.request.contextPath}/">
    <label>marka auta</label>
    <input type="text" name="nazwaAuta">

    <label>Numer rejestracyjny </label>
    <input type="text" name="nrRej">

    <label> Rozmiar samochodu</label>
    <select name="rozmiar">
        <c:forEach items="<%=enumSizes.values()%>" var="a">

        <option value="${a}">"${a}"</option>

        </c:forEach>
            <input type='checkbox' name="uslugi" value="mycie">Mycie samochodu
            <input type='checkbox' name="uslugi" value="pranie">Pranie tapicerki
            <input type='checkbox' name="uslugi" value="lakier">Korekta Lakieru
            <input type="submit">
</form>
</body>
</html>
