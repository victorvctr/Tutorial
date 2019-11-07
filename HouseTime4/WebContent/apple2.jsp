<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TIME HOUSE</title>
    <link rel="icon" href="imagem/relogio.png" type="image/x-icon" />

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <link href='css/css.css' rel='stylesheet'>
</head>

<header>
    <!--menu basico-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <img src="imagem/housetime.png" width="60" height="60" class="d-inline-block">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#conteudoNavbarSuportado" aria-controls="conteudoNavbarSuportado" aria-expanded="false" aria-label="alternanavegacao">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="conteudoNavbarSuportado">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.jsp">Início <span class="sr-only"></span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contato</a></li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Sobre Nós</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="sobre.jsp">A Empresa</a>
                        <a class=dropdown-item href="politicas.jsp">Politicas de Privacidade</a>
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
    <div class='logotipo'>
        <center><img src="imagem/logoapple.png" height='80' width='70' alt="Apple" /></center>
    </div>
    <hr>
    <div class="container">
        <div class="row">
            <div class="col">
                <img src="imagem/apple3.jpg" width="300px">
            </div>

            <div class="col">
                <h1>Apple Watch Serie 4 GPS</h1>
                <link href="https://fonts.googleapis.com/css?family=Comfortaa" rel="stylesheet">
                <h6>Cód.0002</h6>
                <h2 style="font-size: 40px; color: dimgrey;">R$3.600,00</h2>
                <h6 style="font-size: 14px;">Ou 12x de R$300,00</h6>
                <img style="margin-top: 12px;" src="imagem/botao-comprar.png" width="250px">
                <img style="margin-top: 20px;" src="imagem/frete.jpg" width="450px" height="110px">
            </div>
        </div>
    </div>
    <hr>
    <div class="container">
        <div class="row">
            <div class="col">
                <h2>Ficha técnica</h2>
                <hr>
                <h5><b>Características:</b></h5>
                <p>Marca: Apple<br>
                    Modelo: Apple Watch Serie 4<br>
                    Cor: Caixa em alumínio cinza espacial e pulseira preta<br>
                    Referência: Referência: MU662BZ/A<br>
                    Cód.: 210047<br><br><br></p>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col">
                <h5><b>Especificações:</b></h5>

                <p>Pulseira de 40 mm: para pulsos de 130 a 200 mm<br>
                    Caixa de alumínio<br>
                    Processador S4 de núcleo duplo de 64 bits mais rápido<br>
                    GPS integrado<br>
                    Resistente à água (50 metros)*<br>
                    Wi-Fi (802.11b / g / n 2,4GHz)<br>
                    Bluetooth 5.0<br>
                    Sensor de frequência cardíaca Elétrico<br>
                    Sensor de frequência cardíaca óptico<br>
                    Acelerômetro aprimorado<br>
                    Giroscópio<br>
                    Altímetro barométrico<br>
                    Sensor de luz ambiente<br>
                    Capacidade para 16GB<br>
                    Tela Retina OLED LTPO de segunda geração com Force Touch 2x mais brilhante (1.000 nits)<br>
                    Vidro de íon X<br>
                    Bateria de íon lítio recarregável interna<br>
                    Bateria com até 18 horas de duração**<br>
                    Carregador magnético<br>
                    Carregador USB<br>

                    <b>*A duração da bateria varia de acordo com o uso e a configuração; os resultados reais podem variar.*</b></p>

            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>

</html>
