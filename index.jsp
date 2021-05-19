<%-- 
    Document   : index
    Created on : 08/05/2021, 19:23:25
    Author     : pedro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="pt-br">
    <head>
        <title>Teste Aps</title>
        <meta charset="utf-8">
        <link href="css/estilos.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      
    </head>
    <body>
        
        <header>
            <div>
                <div class="p-3 mb-4 bg-navebar text-white semnada nav">
                    <div class="container">
                        <form method="POST" action="voltarIndex">
                            <a href="index.jsp">
                                <img src="img/unip.png" alt="" width="80" height="24">
                            </a>
                        </form>
                    </div>
                    <form method="post" action="exibirLogin">
                        <input type="submit" value="Login" class="btn btn-outline-light btn-sm btn-login btn-cor-fonte"></button>
                    </form>
                </div>    
            </div>
        </header>

        <main>
            <section>
                <center>
                    <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-central">
                        <div class="col-md-5 p-lg-5 mx-auto my-5">
                            <h1 class="display-4 fw-normal">O que é Lorem Ipsum?</h1>
                            <p class="lead fw-normal">LAorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI</p>

                        </div>    
                    </div>
                </center>
            </section>

            <section>
                <center>
                    <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center">
                        <div class="alert alert-primary bg-img" role="alert">
                            <div class="card" style="width: 18rem;">
                                <img src="img/fundo-onu.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                </div>
                            </div>
                            
                            
                        </div>  
                  </div>
                </center>
            </section>





        </main>
        <footer class="center ">
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
