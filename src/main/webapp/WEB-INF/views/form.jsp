<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="pl.myjnia.enumSizes" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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


   <style>
   <%@ include file="/style/style.css"%>
   </style>

<title>sss</title>

</head>
<body>

<h1>FIRMA XYZ</h1>
<form id="msform" method="post" action="${pageContext.request.contextPath}/">

    <fieldset>
        <h2 class="fs-title">Dane auta</h2>


<%--    <label>marka auta</label>--%>
<div>
        <input  placeholder="Marka auta" type="text" name="nazwaAuta">
</div>
        <div>
        <input type="text" placeholder="Nr Rejestracyjny" name="nrRej">
        </div>
<%--    <p><label>Numer rejestracyjny </label></p>--%>
<%--    <p><label>--%>

<%--    </label></p>--%>

<div>
    <label> Rodzaj pojazdu</label>
</div>
        <div>
        <select name="rozmiar">
            <c:forEach items="<%=enumSizes.values()%>" var="a">

            <option value="${a}">${a}</option>></c:forEach>
        </select>
        </div>


<div>

    <h2 class="fs-title">Usługi</h2>


    <label >Mycie
    <input type='checkbox'  name="uslugi" value="mycie"></label>



    <label >Pranie tapicerki<input type='checkbox'  name="uslugi" value="pranie"></label>



    <label> Korekta Lakieru<input type='checkbox'  name="uslugi" value="lakier"></label>

</div>
<%--    </p>--%>
        <div>
            <input type="submit" name="dalej" class="next action-button" value="Wybór usług" />
        </div>

    </fieldset>

</form>

</body>

</html>
