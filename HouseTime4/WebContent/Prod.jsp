<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%> 
    <%@page import="java.io.*"%> 
    <%@page import="javax.servlet.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Produtos Apple</title>
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
                        
                        <li class="nav-item">
                    <a class="nav-link" href="cadastrousuario1.jsp">Cadastra-se</a></li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Pesquisar" arial-label="Pesquisar"><button class="btn my-2 my-sm-0" type="submit" style="background-color: lightgrey;">Pesquisar</button>
                </form>
            </div>
        </nav>
    </header>

    <body>
    
        <div class='logotipo'>
        <%
    	
        String Marca = request.getParameter("idMarca");
    
        if(Marca == "1") %> <center><img src="imagem/logoapple.png" height='80' width='70' alt="Apple" /></center>
        <% if(Marca == "2") %> <center><img src="imagem/logosamsung.png" height='80' width='70' alt="Apple" /></center>
        
            
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
  
   <%
	// Passo 1. Carregar o Driver JDBC
	//Class.forName("org.gjt.mm.mysql.Driver");
	Class.forName("com.mysql.jdbc.Driver");
	
	// Passo 2. Criar um objeto Connection 
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/timehouse?user=root&password=root");

	
	// Passo 3. Criar um objeto Statement 
	Statement s = con.createStatement(); 
	
	// Passo 4. Usar o objeto Statement para obter um objeto ResultSet
    out.println(request.getParameter("id"));
	
	String sql = "select * from produto where ID_MARCA = " + request.getParameter("idMarca") + "";

	ResultSet rs = s.executeQuery(sql);
	
	
	
	//Passo 5. Imprimindo o resultado
	

	  
      while(rs.next()) {
    	  
	%>
	
	<div class='box'>
	<span> 
	
	<a href="CONSUL1.jsp?id=<%=rs.getString(1)%>"> <img src="<%=rs.getString(13)%>"   src="<%=rs.getString(14)%>" height='210' width='170'/></a>
	
	<br>
	<br>
	<h6><br><%=rs.getString(10) %></h6>
	<h4><br><%=rs.getString(11) %></h4>
	 
	</span>
      </div>
     
      
	
		
	<%   
     } 
      

	//Passo 6. Fechando conexoe
	rs.close(); s.close(); con.close();

%>

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


    </footer>

    </html>