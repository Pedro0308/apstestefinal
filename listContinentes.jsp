<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
        <title>Show All Users</title>
    </head>
<body>
    <table border=1>
        <thead>
            <tr>
                <th>Cod</th>
                <th>Nome</th>
                <th>Populacao</th>
                <th>Tamanho</th>
                <th colspan=2>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${continentes}" var="continentes">
                <tr>
                    <td><c:out value="${continentes.cdCont}" /></td>
                    <td><c:out value="${continentes.nomeCont}" /></td>
                    <td><c:out value="${continentes.populacaoCont}" /></td>
                    <td><c:out value="${continentes.tamanhoCont}" /></td>
                    <td><a href="ContinentesController?action=edit&cdCont=<c:out value="${continentes.cdCont}"/>">Update</a></td>
                    <td><a href="ContinentesController?action=delete&cdCont=<c:out value="${continentes.cdCont}"/>">Delete</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <p><a href="ContinentesController?action=insert">Add Continentes</a></p>
</body>
</html>