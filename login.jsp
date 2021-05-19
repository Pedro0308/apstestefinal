<%@ page import="Connection.Conexao"%>
<%@ page language="java" contentType="text/html" pageEncoding="ISO-8859-1" import="java.sql.*" %>

<%@ page import="Connection.Conexao"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Teste Aps</title>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/estilos.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      
</head>
<body>
<%  Class.forName("com.mysql.jdbc.Driver");  
    Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/aps", "root", ""); %>
                                           
    <header>
        <div>
            <div class="p-3 mb-2 bg-navebar text-white semnada nav">
                <div class="container">
                    <form method="POST" action="voltarIndex">
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
            <center>
                <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-central">
                    <div class="col-md-5 p-lg-5 mx-auto my-5">
                        <form class="bg-form" action="?action=listContinentes" method="POST">
                            <div class="col">
                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label ">Usuário</label>
                                    <input type="name" class="form-control" name="usuario" id="usuario">
                                </div>
                                    <div class="mb-3">
                                        <label for="exampleInputPassword1" class="form-label">Senha</label>
                                        <input type="password" class="form-control" name="senha" id="senha">
                                        <% 
                                            String usuarioInv = "";
                                            
                                            if (con !=null) {
                                                if ((request.getParameter("usuario") !=null) && (request.getParameter("senha") !=null)) {
                                                     String login, pass;
                                                     login = request.getParameter("usuario");
                                                     pass = request.getParameter("senha");
                                                     Statement st;
                                                     ResultSet rs;
                                                     st = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.TYPE_FORWARD_ONLY);
                                                     rs = st.executeQuery("select * from usuario where nome_usuario ='"+login+"' and senha_usuario='"+pass+"'");
                                                     if(rs.next()){
                                                         response.sendRedirect("redirecionarAdmin.jsp");
                                                     }
                                                    // out.println(login);
                                                    //  out.println(pass);
                                                }
                                             }else {
                                                 usuarioInv = "Usuário desconhecido";}
                                        %>
                                    </div>
                                <button type="submit" class="btn btn-primary">Logar</button>
                                <div>
                                    &nbsp
                                </div>
                            </div>  
                        </form>
                    </div>    
                </div>
            </center>
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
    </body>
</html>
