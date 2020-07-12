<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: aas
  Date: 08.07.2020
  Time: 16:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <style>
        table, th, td {
            border: 1px solid black;
        }
    </style>
    <title>Title</title>

</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/form2">
    <table>
        <tr>
            <th>Usługa </th>
            <th colspan="5">Cena</th>
        </tr>



        <c:if test="${mycie!=null}">
            

            <tr>
                <td>Mycie komplet</td>
                <td><label>
                    <input type="radio" name="MycieKomplet" value="${cenyMycie.małeZabrudzenie}">
                </label>Małe
                    zabrudzenie ${cenyMycie.małeZabrudzenie}zł
                </td>
                <td><label>
                    <input type="radio" name="MycieKomplet" value="${cenyMycie.średnieZabrudzenie}">
                </label>Średnie
                    zabrudzenie ${cenyMycie.średnieZabrudzenie}zł
                </td>
                <td><label>
                    <input type="radio" name="MycieKomplet" value="${cenyMycie.dużeZabrudzenie}">
                </label>Duże
                    zabrudzenie ${cenyMycie.dużeZabrudzenie}zł
                </td>
                <td hidden><label>
                    <input type="radio" hidden checked="checked" name="MycieKomplet" value="0">
                </label>
                </td>
            </tr>
            <tr>
                <td>Mycie Zewnatrz</td>
                <td><label>
                    <input type="radio" name="MycieZew" value="${cenyMycie.mycieZewnatrz}">
                </label>Mycie
                    zewnątrz ${cenyMycie.mycieZewnatrz}zł
                </td>
                <td hidden><label>
                    <input type="radio" hidden checked="checked" name="MycieZew" value="0">
                </label>


            </tr>
            <tr>
                <td>Mycie wewnątrz</td>
                <td><label>
                    <input type="radio" name="MycieWew" value="${cenyMycie.mycieWewnatrzMałe}">
                </label>Małe
                    zabrudzenie ${cenyMycie.mycieWewnatrzMałe}zł
                </td>
                <td><label>
                    <input type="radio" name="MycieWew" value="${cenyMycie.mycieWewnatrzSrednie}">
                </label>Średnie
                    zabrudzenie ${cenyMycie.mycieWewnatrzSrednie}zł
                </td>
                <td><label>
                    <input type="radio" name="MycieWew" value="${cenyMycie.mycieWewnatrzDuze}">
                </label>Duże
                    zabrudzenie ${cenyMycie.mycieWewnatrzDuze}zł
                </td>
                <td hidden><label>
                    <input type="radio" hidden checked="checked" name="MycieWew" value="0">
                </label>

            </tr>
            <tr>

                <td>Dodatkowe opcje</td>
                <td><label>
                    <input type="checkbox" name="woskTwardy" value="${cenyMycie.woskTwardy}">
                </label>Wosk
                    twardy ${cenyMycie.woskTwardy}zł
                </td>
                <td hidden><label>
                    <input type="checkbox" hidden checked="checked" name="woskTwardy" value="0">
                </label>
                <td><label>
                    <input type="checkbox" name="niewidzialnaWycieraczka" value="${cenyMycie.niewidzialnaWycieraczki}">
                </label>niewidzialna
                    Wycieraczka ${cenyMycie.niewidzialnaWycieraczki}zł
                </td>
                <td hidden><label>
                    <input type="checkbox" hidden checked="checked" name="niewidzialnaWycieraczka" value="0">
                </label> </td>
                <td><label>
                    <input type="checkbox"  name="osadMeteliczny" value="${cenyMycie.osadmetaliczny}">
                </label>Osad meteliczny ${cenyMycie.osadmetaliczny}zł
                </td>
                <td hidden><label>
                    <input type="checkbox" hidden checked="checked" name="osadMetaliczny" value="0">
                </label>
                <td><label>
                    <input type="checkbox" name="osadZeSmoly" value="${cenyMycie.osadZeSmoly}">
                </label>Osad ze smoły ${cenyMycie.osadZeSmoly}zł
                </td>
                <td hidden><label>
                    <input type="checkbox" hidden checked="checked" name="osadZeSmoly" value="0">
                </label>

                <td hidden><label>
                    <input type="checkbox" hidden checked="checked" name="woskpremium" value="0">
                </label>
                <td><label>
                    <input type="checkbox" name="woskpremium" value="${cenyMycie.woskPremium}">
                </label>Wosk Premium ${cenyMycie.woskPremium}zł
                </td>
            </tr>


        </c:if>

        <c:if test="${pranie!=null}">
            <tr>
                <td>
                    Pranie tapicerki materiałowej
                </td>
                <td><label>
                    <input type="checkbox" name="jednoKrzeslo" value="50">
                </label> Pranie jednego fotela 50 zł
                </td>
                <td><label>
                    <input type="checkbox" name="FotelPrzod" value="100">
                </label> Pranie foteli z przodu 100 zł
                </td>
                <td><label>
                    <input type="checkbox" name="FotelTyl" value="100">
                </label> Pranie foteli z tyłu 100 zł
                </td>
            </tr>
            <tr>
                <td>Pranie tapicerki skórzanej</td>
                <td>
                    <label>
                        <select name="TapicerkaSkorzana">
                            <option value="0">brak</option>
                            <option value="250">250zł</option>
                            <option value="300">300zł</option>
                            <option value="350">350zł</option>
                            <option value="400">400zł</option>
                        </select>
                    </label>
                </td>
            </tr>
        </c:if>

        <c:if test="${lakier!=null}">


            <tr>
                <td>Korekta One step</td>
                <td><label>
                    <input type="checkbox" name="onestep" value="${cenyLakier.oneStep}">
                </label>Korekta Lakieru One Step -${cenyLakier.oneStep}zł
                </td>
            </tr>
            <tr>
                <td>Korekta dwuetapowa</td>
                <td><label>
                    <input type="checkbox" name="dwaStep" value="${cenyLakier.dwaStep}">
                </label>Korekta Lakieru dwu etapowa
                    -${cenyLakier.dwaStep}zł
                </td>
            </tr>
            <tr>
                <td>Korekta trzyetapowa</td>
                <td><label>
                    <input type="checkbox" name="trzyStep" value="${cenyLakier.trzyStep}">
                </label>Korekta Lakieru 3 etapowa
                    -${cenyLakier.trzyStep}zł
                </td>
            </tr>
            <tr>
                <td>Pełna korekta lakieru</td>
                <td><label>
                    <input type="number" value="0" name="PrzedzialMin">
                </label> <label>
                    <input type="number" value="0" name="PrzedzialMax">
                </label></td>
            </tr>
        </c:if>

    </table>
    <input type="submit" value="dalej">
</form>


</body>
</html>
