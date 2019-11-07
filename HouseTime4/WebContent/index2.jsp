<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>TIME HOUSE</title>
    <link rel="icon" href="imagem/icone.jpeg" type="image/x-icon" />

    <link rel="stylesheet" href="css/bootstrap.min.css">

    <link rel="stylesheet" href="css/css.css">
</head>

<header>
    <!--menu basico-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a href="index.jsp"><img src="imagem/housetime.png" width="60" height="60" class="d-inline-block"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#conteudoNavbarSuportado" aria-controls="conteudoNavbarSuportado" aria-expanded="false" aria-label="alternanavegacao">
            <span class="navbar-toggler-icon"></span>
        </button>


        <div id="conteudoNavbarSuportado" class="collapse navbar-collapse">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index2.jsp">In�cio <span class="sr-only"></span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contato.jsp">Contato</a></li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Sobre N�s</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="sobre.jsp">A Empresa</a>

                        <button type="button" class="btn btn-light" data-toggle="modal" data-target="#ModalLongoExemplo">
                            Politicas de Privacidade
                        </button>

                    </div>

                    <!-- Modal -->
                    <div class="modal fade" id="ModalLongoExemplo" tabindex="-1" role="dialog" aria-labelledby="TituloModalLongoExemplo" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="TituloModalLongoExemplo">Termos de uso/Pol�ticas de privacidade</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <h2><b>TERMOS DE USO</b></h2>
                                    <p>Todas as imagens presentes nesse site, � de uso exclusivo da empresa House Time. � expressamente proibido qualquer tipo de c�pia sem pr�via comunica��o e autoriza��o da empresa.
                                        As imagens aqui apresentadas, s�o ilustrativas, ou seja, � apenas o mostru�rio do produto que o cliente ir� adquirir. Pode ocorrer algumas altera��es b�sicas de cores do produto devido configura��o de cada monitor, tela ou at� mesmo da pr�pria ferramenta de acesso.
                                        Todos os produtos possuem garantias contra defeito de fabrica��o estipulado pelo fornecedor/fabricante, mediante a apresenta��o da nota fiscal.</p><br><br>

                                    <h2><b>POL�TICAS DE PRIVACIDADE</b></h2>
                                    <p>N�s da House Time, prezamos muito por nossos clientes, ent�o garantimos uma compra totalmente segura para quem utiliza nosso site. Todos os dados cadastrais de nossos clientes s�o confidenciais. Todas as informa��es banc�rias, como por exemplo n�meros de cart�es, s�o criptografadas mantendo a seguran�a dos dados.</p>

                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Logout</a></li>
                    
                    <li class="nav-item">
                    <a class="nav-link" href="Atualiza.jsp">Atualizar Cadastro</a></li>
            </ul>


            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Pesquisar" arial-label="Pesquisar"><button class="btn my-2 my-sm-0" type="submit" style="background-color: lightgrey;">Pesquisar</button>
            </form>
        </div>
    </nav>
</header>

<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img class="d-block w-100" src="imagem/bannerapple.png" alt="Primeiro Slide">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="imagem/bannerfossil.jpg" alt="Segundo Slide">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="imagem/bannermont.jpg" alt="Terceiro Slide">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="imagem/bannersamsung.jpeg" alt="Quarto Slide Slide">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="imagem/bannerxiaomi.png" alt="Quinto Slide Slide">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="imagem/bannerdiesel.png" alt="Sexto Slide Slide">
        </div>
    </div>

    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Anterior</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Pr�ximo</span>
    </a>
</div>

<body>
    <!--Menu produtos-->
    <div class="menu-prod">
        <ul class="nav nav-pills nav-fill">
            <li class="nav-item">
                <a class="nav-link" href="apple.jsp">Apple</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="samsung.jsp">Samsung</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="diesel.jsp">Diesel</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="fossil.jsp">Fossil</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="montblanc.jsp">Mont Blanc</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="xiaomi.jsp">Xiaomi</a>
            </li>
        </ul>
        <link href="https://fonts.googleapis.com/css?family=Fjalla+One" rel="stylesheet">
    </div>

    <div class="container-fluid banner">
        <div class="row">
            <div class="col">
                <a href="apple.jsp" title="Conhe�a nossos produtos Apple!"><img class="d-block w-100" src="imagem/img-apple.png" style="padding-top: 5px;"></a>
            </div>
        </div>
        <hr>

        <div class="row">
            <div class="col">
                <a href="samsung.jsp" title="Conhe�a nossos produtos Samsung!"><img class="d-block w-100 h-100" src="imagem/img-samsung.png" style="padding-top: 10px;"></a>
            </div>

            <div class="col">
                <a href="samsung.jsp" title="Conhe�a nossos produtos Samsung!"><img class="d-block w-100" src="imagem/img-samsung-1.png" style="padding-top: 10px;"></a>
            </div>
        </div>
        <hr>

        <div class="row">
            <div class="col">
                <a href="fossil.jsp" title="Conhe�a nossos produtos Fossil!"><img class="d-block w-50" src="imagem/img-fossil.png" style="margin: auto; padding-top: 10px;"></a>
            </div>
        </div>
        <hr>

        <div class="row">
            <div class="col">
                <a href="montblanc.jsp" title="conhe�a nossos produtos Mont Blanc!"><img class="d-block w-100 h-100" src="imagem/img-mont-blanc.jpg"></a>
            </div>

            <div class="col">
                <a href="xiaomi.jsp" title="Conhe�a nossos produtos Xiaomi!"><img class="d-block w-100" src="imagem/img-xiaomi.png"></a>
            </div>
        </div>
    </div>
<hr>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>

<!-- Footer -->
<footer class="page-footer font-small blue-grey lighten-5" style="background-color:#E8E8E8">

    <!-- Footer Links -->
    <div class="container text-center text-md-left mt-5">

        <!-- Grid row -->
        <div class="row mt-3 dark-grey-text">

            <!-- Grid column -->
            <div class="col-md-3 col-lg-4 col-xl-3 mb-4">

                <!-- Content -->
                <h6 class="text-uppercase font-weight-bold">House Time</h6>
                <hr class="teal accent-3 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                <p>Here you can use rows and columns to organize your footer content. Lorem ipsum dolor sit amet,
                    consectetur
                    adipisicing elit.
                </p>
                <img src="imagem/housetime.png" width="100px"><br><br>
                <h6>Trabalhamos com os cart�es:</h6>
                <img src="imagem/cartao.png" width="300px">
            </div>
            <!-- Grid column -->

            <!-- Grid column -->
            <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">

                <!-- Links -->
                <h6 class="text-uppercase font-weight-bold">Produtos</h6>
                <hr class="teal accent-3 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                <p>
                    <a class="dark-grey-text" href="apple.jsp">Apple</a>
                </p>
                <p>
                    <a class="dark-grey-text" href="samsung.jsp">Samsung</a>
                </p>
                <p>
                    <a class="dark-grey-text" href="diesel.jsp">Diesel</a>
                </p>
                <p>
                    <a class="dark-grey-text" href="fossil.jsp">Fossil</a>
                </p>
                <p>
                    <a class="dark-grey-text" href="montblanc.jsp">Mont Blanc</a>
                </p>
                <p>
                    <a class="dark-grey-text" href="xiaomi.jsp">Xiaomi</a>
                </p>

            </div>
            <!-- Grid column -->

            <!-- Grid column -->
            <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">

                <!-- Links -->
                <h6 class="text-uppercase font-weight-bold">Menu</h6>
                <hr class="teal accent-3 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                <p>
                    <a class="dark-grey-text" href="index2.jsp">In�cio</a>
                </p>
                <p>
                    <a class="dark-grey-text" href="contato.jsp">Contato</a>
                </p>
                <p>
                    <a class="dark-grey-text" href="sobre.jsp">A Empresa</a>
                </p>
                <p>
                    <a class="dark-grey-text" href="#" onclick="$('#ModalLongoExemplo').modal('show')">Termos de Uso</a>
                </p>
                <p>
                    <a class="dark-grey-text" href="login.jsp">Login</a>
                </p>
                <p>
                    <a class="dark-grey-text" href="cadastrousuario.jsp">Cadastre-se</a>
                </p>

            </div>
            <!-- Grid column -->

            <!-- Grid column -->
            <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">

                <!-- Links -->
                <h6 class="text-uppercase font-weight-bold">Localiza��o</h6>
                <hr class="teal accent-3 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                <p>
                    <i class="fas fa-home mr-0"></i>R. Cel. Fernando Prestes, 326 - Centro, Santo Andr� - SP, 09020-110</p>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5630.894372901863!2d-46.53244551656858!3d-23.66167043927771!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xcdeec0304ee021f6!2sCol%C3%A9gio+Pent%C3%A1gono+-+Unidade+Centro!5e0!3m2!1spt-BR!2sbr!4v1557419069683!5m2!1spt-BR!2sbr" width="300" height="260" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>
        </div>
    </div>


    <!-- Copyright -->
    <div class="footer-copyright text-center text-black-50 py-3 " style="background-color:#D3D3D3;">� 2019 Copyright:
        <a class="dark-grey-text" href="https://mdbootstrap.com/education/bootstrap/">7ForDeveloper</a>
    </div>
    1

</footer>

</html>
