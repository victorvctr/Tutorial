<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%> 
<%@page import="java.io.*"%> 
<%@page import="javax.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TIME HOUSE</title>
    <link rel="icon" href="imagem/relogio.png" type="image/x-icon" />

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <link rel='stylesheet' href='css/css.css'>
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
                    <a class="nav-link" href="index.jsp">In�cio <span class="sr-only"></span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contato</a></li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Sobre N�s</a>
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
  
    <hr>
    <div class="container">
        <div class="row">
            <div class="col">
              
            </div>
  
   <%
	// Passo 1. Carregar o Driver JDBC
	//Class.forName("org.gjt.mm.mysql.Driver");
	Class.forName("com.mysql.jdbc.Driver");
	
	// Passo 2. Criar um objeto Connection 
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/timehouse?user=root&password=root");

	
	// Passo 3. Criar um objeto Statement 
	Statement s = con.createStatement(); 
	
	// Passo 4. Usar o objeto Statement para obter um objeto ResultSet
	String sql = "select * from produto WHERE IDproduto = " + request.getParameter("id") + "";
	
	
	ResultSet rs = s.executeQuery(sql);
	

	
	//Passo 5. Imprimindo o resultado
	

	  
      while(rs.next()) {
    	  
	%>
	
	

  
    <div class="container">
        <div class="row">
            <div class="col">
                <img src="<%=rs.getString(13)%>" width="300px">
            </div>
  
	<div class="col">
	
	 <h1><%=rs.getString(11) %></h1>
	 <link href="https://fonts.googleapis.com/css?family=Comfortaa" rel="stylesheet">
	
	   <img style="margin-top: 12px;" src="imagem/botao-comprar.png" width="250px">
	 <img style="margin-top: 20px;" src="imagem/frete.jpg" width="450px" height="110px">
            </div>
        </div>
    </div>
   <hr>
      <div class="container">
        <div class="row">
            <div class="col">
                <h2>Ficha t�cnica</h2>
                <hr>
                  <h5><b>Caracter�sticas:</b></h5>
                
                   Modelo: <%=rs.getString(10) %><br>
                   Cor: <%=rs.getString(8) %><br>
                   Sistema: <%=rs.getString(2) %><br>
                   Pulseira: <%=rs.getString(3) %><br>
                   Dimens�o: <%=rs.getString(4) %><br>
                   Caixa: <%=rs.getString(5) %><br>
                   Bateria: <%=rs.getString(7) %><br>
                   Peso: <%=rs.getString(9) %><br>
                   Estoque: <%=rs.getString(12) %><br>
	
	</span>
      </div>
          </div>
        </div>
    </div>
	<%   
     } 
      

	//Passo 6. Fechando conexoe
	rs.close(); s.close(); con.close();

%>
   
    
            </div>
        </div>
    </div>


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
                    <a class="dark-grey-text" href="login.jsp">�rea do Cliente</a>
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