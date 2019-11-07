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
                <input class="form-control mr-sm-2" type="search" placeholder="Pesquisar" arial-label="Pesquisar"><button class="btn my-2 my-sm-0" type="submit" style="background-color: lightgrey;">Pesquisar</button>
            </form>
        </div>
    </nav>
</header>

<body>
	<form action="CadastroUsuario.jsp" method="post">
    <div class="cadastro-usu">
        <h1 class="text-center">Cadastro de Usu�rio</h1>
        <link href="https://fonts.googleapis.com/css?family=Comfortaa" rel="stylesheet">
    </div>

    <form>
        <div class="container">
            <div class="row">
                <div class="col-sm">
                    Nome Completo:
                    <input type="text" name="Nome" class="form-control" id="inputnome" placeholder="nome">
                </div>


                <div class="col-sm">
                    Celular:
                    <input type="text" name="Celular" maxlength="11" onkeypress='return event.charCode >= 48 && event.charCode <= 57' class="form-control" id="inputcelular" placeholder=" (xx) xxxxx-xxxx">
                </div>
                <div class="col-sm">
                    Data de nascimento:
                    <input type="date" name="Nascimento" class="form-control" placeholder=" dd/mm/aaaa">
                </div>
            </div>

            <div class="row">
                <div class="col-sm">
                    Endere�o:
                    <input type="text" name="Rua" class="form-control" placeholder="Digite sua rua ou avenida">
                </div>
                <div class="col-sm">
                    N�:
                    <input type="text" name="Numero" maxlength="5" onkeypress='return event.charCode >= 48 && event.charCode <= 57' class="form-control" placeholder="N� da resid�ncia">
                </div>
                <div class="col-sm">
                    Cidade:
                    <input type="text" name="Cidade" class="form-control" placeholder="Digite sua cidade">
                </div>
                <div class="col-sm">
                    Estado:
                    <input type="text" name="Estado" class="form-control" placeholder=" Digite seu estado">
                </div>
                <div class="col-sm">
                    Pa�s:
                    <input type="text" name="Pais" class="form-control" placeholder=" Digite seu pa�s"></div>
            </div>

            <div class="row">
                <div class="col-sm">
                    Bairro:
                    <input type="text" name="Bairro" class="form-control" placeholder=" Digite seu bairro">
                </div>
                <div class="col-sm">
                    CEP:
                    <input type="text" name="Cep" maxlength="8" onkeypress='return event.charCode >= 48 && event.charCode <= 57' class="form-control" placeholder=" Digite seu cep"></div>

                <div class="col-sm">
                    CPF:
                    <input type="text" name="Cpf" maxlength="11" onkeypress='return event.charCode >= 48 && event.charCode <= 57' class="form-control" placeholder="Digite seu CPF sem pontua��o">
                </div>
                <div class="col-sm">
                    Sexo:
                    <input type="text" name="Sexo" class="form-control" placeholder=" Digite seu sexo">
                </div>
            </div>

            <div class="row">
                <div class="col-sm">
                    E-mail:
                    <input type="email" name="Email" class="form-control" placeholder=" Digite seu e-mail" required>
                </div>
                <div class="col-sm">
                    Login:
                    <input type="text" name="Login" class="form-control" placeholder=" Digite seu nome de usu�rio">
                </div>

                <div class="col-sm">
                    Senha:
                    <input type="password" name="Senha" class="form-control" placeholder=" Digite sua senha">
                </div>
            </div>

            <div class="botao-form">
                <button type="submit" class="btn btn-success btn-xl">Cadastrar</button>
                <button type="reset" class="btn btn-danger btn-xl">Limpar</button>
            </div>
        </div>
    </form>
    </form>

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
                    <a class="dark-grey-text" href="">Termos de Uso</a>
                </p>
                <p>
                    <a class="dark-grey-text" href="login.html">�rea do Cliente</a>
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