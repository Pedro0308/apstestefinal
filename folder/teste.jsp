<%-- 
    Document   : teste
    Created on : 10/05/2021, 20:23:12
    Author     : pedro
--%>

<%@page import="java.sql.ResultSetMetaData"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Connection.Conexao"%>
<%@page import="Connection.Continentes"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 
 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <c:forEach items="${lista}" var="Continentes">
        <tr>
            <td>${lista.name}</td>
        </tr>
</c:forEach>
</table>
    </body>
</html>
