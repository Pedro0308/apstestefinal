<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/estilos.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Continentes</title>
    </head>
    <body>
        <header class="o-header">
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
        
        <main class="o-main">
            <center>
            <div class="container mt-4 col-lg-4">
            <div class="card col-sm-8">
                <div class="card-body">
                    <form class="bg-form" action="?action=listContinentes" method="POST">
                        <div class="col">
                            <div class="mb-3">

                                <label for="exampleInputEmail1" class="form-label ">Codigo Usuário</label>

                                <input type="text" class="form-control" readonly="readonly" name="cdCont" value="<c:out value="${continentes.cdCont}" />" /> <br /> 

                            </div>

                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">Nome</label>
                                <input type="text" class="form-control" name="nome" value="<c:out value="${continentes.nomeCont}" />" /> <br /> 
                            </div>

                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">População</label>
                                <input type="text" name="tamanho" class="form-control" value="<c:out value="${continentes.populacaoCont}" />" /> <br /> 
                            </div>

                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">Tamanho</label>
                                <input type="text" name="populacao" class="form-control" value="<c:out value="${continentes.tamanhoCont}" />" /> <br /> 
                            </div>

                            <button type="submit" class="btn btn-primary">Atualizar</button>
                            <div>
                                &nbsp
                            </div>
                        </div>  
                    </form>
                </div>
            </div>
        </div>
        <div>
            &nbsp
        </div>
            
         </center>   
        </main>
            <footer>
            <div>
                <div class="bg-navebar">
                    <div class="container">
                        <img src="img/unip.png" alt="" width="80" height="24">
                    </div>
                </div>    
            </div>
        </footer>

        
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </body>
</html>

