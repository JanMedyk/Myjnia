<%--
  Created by IntelliJ IDEA.
  User: jan
  Date: 11.07.2020
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<table>
    <h1>Dane auta</h1>
    <tr>
        <td>${sumaMin}</td>
        <td>${sumaMax}</td>
        <td>Marka</td>
        <td>${nazwaAuta} </td>

    </tr>
    <tr>
        <td>Nr rejes.</td>
        <td>${nrRej}</td>

    </tr>
    <tr>
        <td>Rozmiar pojazdu</td>
        <td>${rozmiar}</td>

    </tr>
    <c:if test="${mycie!=null}">

<h1></h1>
    </c:if>
</table>
<h2>
aaa+${MycieKomplet} ${osadMeteliczny} ${woskpremium} ${osadZeSmoly}
</h2>
</body>
</html>
