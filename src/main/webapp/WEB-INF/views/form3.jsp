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
<style>
    table, th, td {
        border: 1px solid black;
    }

     body {
         height: 1122px;
         width: 794px;
         /* to centre page on screen*/
         margin-left: auto;
         margin-right: auto;
     }


</style>

<body>

<table>
    <h1>Podsumowanie</h1>
    <tr>
        <th colspan="2">Dane samochodu</th>
    </tr>
    <tr>

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
    <tr>
        <th colspan="2">Usługi</th>
    </tr>
    <c:if test="${mycie!=null}">


        <tr>
            <td> Mycie</td>

            <td>


                <c:if test="${MycieKomplet!=0}">

                    <p> Mycie Komplet-${MycieKomplet}zł</p>
                </c:if>
                <c:if test="${MycieWew!=0}">

                    <p> Mycie Wewnątrz-${MycieWew}zł</p>
                </c:if>

                <c:if test="${MycieZew!=0}">

                    <p> Mycie Zewnątrz-${MycieZew}zł</p>
                </c:if>

            </td>
        <tr>
            <td>Opcje dodatkowe</td>
            <td>
                <c:if test="${woskTwardy!=0}">

                    <p> Wosk Twardy-${woskTwardy}zł</p>
                </c:if>
                <c:if test="${osadZeSmoly!=0}">

                    <p> Osad ze smoły-${osadZeSmoly}zł</p>
                </c:if>
                <c:if test="${osadMetaliczny!=0}">

                    <p> Osad metaliczny-${osadMetaliczny}zł</p>
                </c:if>
                <c:if test="${niewidzialnaWycieraczka!=0}">

                    <p> niewidzialna Wycieraczka-${niewidzialnaWycieraczka}zł</p>
                </c:if>
                <c:if test="${woskpremium!=0}">

                    <p> Wosk premium-${woskpremium}zł</p>
                </c:if>

            </td>
        </tr>

    </c:if>
    <c:if test="${pranie!=null}">

        <tr>
            <td>
                Pranie
            </td>
            <td>
                <c:if test="${jednoKrzeslo!=0}">
                    <p>Pranie jednego krzesła ${jednoKrzeslo}zł</p>
                </c:if>
                <c:if test="${FotelPrzod!=0}">
                    <p>Pranie foteli z przodu ${FotelPrzod}zł</p>
                </c:if>
                <c:if test="${FotelTyl!=0}">
                    <p>Pranie z tyłu ${FotelTyl}zł</p>
                </c:if>
                <c:if test="${TapicerkaSkorzana!=0}">
                    <p>Pranie tapicerki skórzanej ${TapicerkaSkorzana}zł</p>
                </c:if>


            </td>

        </tr>


    </c:if>

<c:if test="${lakier!=null}">

    <tr>
        <td>
            Lakier

        </td>
        <td>
        <c:if test="${onestep!=0}">
            <p>One step - ${onestep}zł</p>

        </c:if>
        <c:if test="${dwaStep!=0}">
            <p>Korekcja dwu etapowa - ${dwaStep}zł</p>

        </c:if>
        <c:if test="${trzyStep!=0}">
            <p>Korekcja trzy etapowa - ${trzyStep}zł</p>

        </c:if>
        <c:if test="${PrzedzialMin!=0 && PrzedzialMax!=0}">
            <p>Pełna korekta lakieru - ${PrzedzialMin}-${PrzedzialMax}zł</p>

        </c:if>



        </td>

    </tr>
        </tr>
</c:if>

    </tr>
    <tr>
        <th>
            Końcowa cena :

        </th>
        <td>
        <c:choose>
        <c:when test="${PrzedzialMin!=0 && PrzedzialMax!=0}">
                    ${sumaMin}-${sumaMax}zł
        </c:when>
            <c:otherwise>
                ${suma}zł
            </c:otherwise>
        </c:choose>
        </td>
    </tr>


    <h1></h1>

</table>
<h2>

</h2>

</body>
</html>
