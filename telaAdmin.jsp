<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Connection.Conexao"%>
<%@page import="controller.exibirLogin"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Teste Aps</title>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/estilos.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
         <link href="//cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css" rel="stylesheet">
    </head>
    
    <body> 
        <%  Class.forName("com.mysql.jdbc.Driver");  
        Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/aps", "root", ""); %>
        <header>
            <div>
                <div class="p-3 mb-2 bg-navebar text-white semnada nav">
                    <div class="container">
                         <form class="form-sign" method="POST" action="voltarIndex">
                            <a href="index.jsp">
                                <img src="img/unip.png" alt="" width="80" height="24">
                            </a>
                        </form>
                    </div>
                </div>    
            </div>
        </header>
        <main>
  
            <section>
                    <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-central">
                        <div class="col-md-8 p-lg-8 mx-auto my-5 bg-form" style="
                            padding-top: 15px;
                            padding-bottom: 5px;">
                                <div class="mb-3 ">
                                    
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th scope="col">Cod</th>
                                            <th scope="col">Nome</th>
                                            <th scope="col">Populacao</th>
                                            <th scope="col" >Tamanho</th>
                                            <th scope="col" colspan=2>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${continentes}" var="continentes">
                                            <tr>
                                                <td><c:out value="${continentes.cdCont}" /></td>
                                                <td><c:out value="${continentes.nomeCont}" /></td>
                                                <td><c:out value="${continentes.populacaoCont}" /></td>
                                                <td><c:out value="${continentes.tamanhoCont}" /></td>
                                                <td><a href="ContinentesController?action=edit&cdCont=<c:out value="${continentes.cdCont}"/>">Editar</a></td>
                                                <td><a href="ContinentesController?action=delete&cdCont=<c:out value="${continentes.cdCont}"/>">Apagar</a></td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                                <p><a href="ContinentesController?action=insert">Adicionar Continentes</a></p>
                                </div>
                            </div> 
                        </div> 
            </section>
        </main>
            <footer class="center">
                <div>
                <div class="bg-navebar">
                    <div class="container">
                        <img src="img/unip.png" alt="" width="80" height="24">
                    </div>
                </div>    
            </div>
        </footer>

    <script src="//code.jquery.com/jquery-3.2.1.min.js"></script>  
    </body>
</html>
