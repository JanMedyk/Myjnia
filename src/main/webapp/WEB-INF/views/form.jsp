<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="pl.myjnia.enumSizes" %>
<%--
  Created by IntelliJ IDEA.
  User: jan
  Date: 07.07.2020
  Time: 17:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>FIRMA XYZ</h1>
<form method="post" action="${pageContext.request.contextPath}/">

    <p><label>marka auta</label></p>
    <p><label>
        <input type="text" name="nazwaAuta">
    </label></p>


    <p><label>Numer rejestracyjny </label></p>
    <p><label>
        <input type="text" name="nrRej">
    </label></p>


    <p><label> Rozmiar samochodu</label></p>

        <select name="rozmiar">
            <c:forEach items="<%=enumSizes.values()%>" var="a">

            <option value="${a}">${a}</option>></c:forEach>
        </select>

    </p>


   <p><label>Usługi</label> </p>
        <p><input type='checkbox' name="uslugi" value="mycie">
        <label>Mycie samochodu</label>


    <input type='checkbox' name="uslugi" value="pranie">
        Pranie tapicerki


    <input type='checkbox' name="uslugi" value="lakier">
    Korekta Lakieru</p>
<%--    </p>--%>

    <p><input type="submit" value="DALEJ"></p>


</form>
</body>
</html>
