<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>F�ssil</title>
    <link rel="icon" href="imagem/relogio.png" type="image/x-icon" />

    <link rel="stylesheet" href="css/bootstrap.min.css">

    <link href='css/css.css' rel='stylesheet'>
</head>

<header>
    <!--menu basico-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a href="index.html"><img src="imagem/housetime.png" width="60" height="60" class="d-inline-block"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#conteudoNavbarSuportado" aria-controls="conteudoNavbarSuportado" aria-expanded="false" aria-label="alternanavegacao">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="conteudoNavbarSuportado">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.jsp">In�cio <span class="sr-only"></span></a>
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
                    <a class="nav-link" href="login.jsp">Login</a></li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Pesquisar" arial-label="Pesquisar"><button class="btn my-2 my-sm-0" type="submit" style="background-color: lightgrey;"   >Pesquisar</button>
            </form>
        </div>
    </nav>
</header>

<body>
    <div class='logotipo'>
        <center><img src="imagem/logofossil.png" height='150' width='290' alt="Fossil" /></center>
    </div>
    <hr>
    <div class="container" style="padding-left:130px;">
            <div class="row">
                <div class="col-sm">
                    <img src="imagem/tarja1.png">
                </div>
                <div class="col">
                <img src="imagem/tarja3.png">
                </div>
                <div class="col">
                <img src="imagem/tarja5.png">
                </div>
            </div>
        </div>
    <hr>

    <div class='box'>
        <img src='imagem/fossil1.jpg' height='200' width="120" alt='Fossil Generation 4 Grafite' />
        <span>
            <h6>FOSSIL GENERATION 4 GRAFITE</h6>
            <h4>R$00,00</h4>
            <h5>� vista</h5>
            <h5>(Ou em 12x s/ juros.)</h5>
        </span>
    </div>

    <div class='box'>
        <img src='imagem/fossil2.jpg' height='200' width='120' alt='Fossil Masculino Q Commuter Prata ' />
        <span>
            <h6>FOSSIL MASC. Q COMMUTER PRATA </h6>
            <h4>R$00,00</h4>
            <h5>� vista</h5>
            <h5>(Ou em 12x s/ juros.)</h5>
        </span>
    </div>

    <div class='box'>
        <img src='imagem/fossil3.jpg' height='200' width='120' alt=" Fossil Generation 4 Prata" />
        <span>
            <h6>FOSSIL GENERATION 4 PRATA</h6>
            <h4>R$00,00</h4>
            <h5>� vista</h5>
            <h5>(Ou em 12x s/ juros.)</h5>
        </span>
    </div>

    <div class='box'>
        <img src='imagem/fossil4.jpg' height='200' width='120' alt="Fossil Masculino Q Commuter Preto" />
        <span>
            <h6>FOSSIL MASC. Q COMMUTER PRETO</h6>
            <h4>R$00,00</h4>
            <h5>� vista</h5>
            <h5>(Ou em 12x s/ juros.)</h5>
        </span>
    </div>

    <div class='box'>
        <img src='imagem/fossil5.jpg' height='220' width='120' alt="Fossil Generation 4 Feminino Ros�" />
        <span>
            <h6>FOSSIL GENERATION 4 FEM. ROS�</h6>
            <h4>R$00,00</h4>
            <h5>� vista</h5>
            <h5>(Ou em 12x s/ juros.)</h5>
        </span>
    </div>

    <div class='box'>
        <img src='imagem/fossil6.jpg' height='200' width='120' alt="Fossil Generation 4 Prata" />
        <span>
            <h6>FOSSIL GENERATION 4 PRATA</h6>
            <h4>R$00,00</h4>
            <h5>� vista</h5>
            <h5>(Ou em 12x s/ juros.)</h5>
        </span>
    </div>
    <link href="https://fonts.googleapis.com/css?family=Comfortaa" rel="stylesheet">

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
                    <a class="dark-grey-text" href="index.jsp">In�cio</a>
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


</footer>

</html>
