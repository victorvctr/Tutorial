<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.sql.*"
	%>

    <%
    
    String Nome = request.getParameter("Nome");
    String Celular = request.getParameter("Celular");
    String Nascimento = request.getParameter("Nascimento");
    String Rua = request.getParameter("Rua");
    String Numero = request.getParameter("Numero");
    String Bairro = request.getParameter("Bairro");
    String Cidade = request.getParameter("Cidade");
    String Estado = request.getParameter("Estado");
    String Pais = request.getParameter("Pais");
    String Cep = request.getParameter("Cep");
    String Cpf = request.getParameter("Cpf");
    String Sexo = request.getParameter("Sexo");
    String Email = request.getParameter("Email");
    String Login = request.getParameter("Login");
    String Senha = request.getParameter("Senha");
   
     	
    Connection conn = null;
    PreparedStatement pst = null;
    PreparedStatement pst1 = null;
    
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/timehouse","root","root");
    
    try {
    	
    	String x;
		x = "select EMAIL from cliente where EMAIL = + 'Email' ";
		
		if (x != Email){
    	
	   	   String SQL = "insert into cliente (`NOME`, `CELULAR`, `NASCIMENTO`, `RUA`, `NUMERO`, `BAIRRO`, `CIDADE`, `ESTADO`, `PAIS`, `CEP`, `CPF`, `SEXO`, `EMAIL`) " +
	                    "values (?,?,?,?,?,?,?,?,?,?,?,?,?)";
	
	       pst = conn.prepareStatement(SQL);
	       
	       pst.setString(1,Nome);
	       pst.setString(2,Celular);
	       pst.setString(3,Nascimento);
	       pst.setString(4,Rua);     
	       pst.setString(5,Numero);
	       pst.setString(6,Bairro);
	       pst.setString(7,Cidade);
	       pst.setString(8,Estado);
	       pst.setString(9,Pais);
	       pst.setString(10,Cep);
	       pst.setString(11,Cpf);
	       pst.setString(12,Sexo);
	       pst.setString(13,Email);
	       
	       
	       String checkIfCadastrado = "SELECT EMAIL FROM cliente where EMAIL=?";
	        PreparedStatement ps1=conn.prepareStatement(checkIfCadastrado);
	        ps1.setString(1,Email);
	        ResultSet rs = ps1.executeQuery();

	        while (rs.next()) {
	            response.sendRedirect("emailcadastrado.jsp");
	            return;
	        }
	    
	       
	       pst.executeUpdate();
	       pst.clearParameters();
		}
        
                
    } catch (Exception ex) {
    	ex.printStackTrace();
    	out.println("erro");
    } 
  
 	  try {
 	    	
 	       String SQL1 = "insert into usuario (`LOGIN`, `SENHA`)" + "values (?,?)" ;
 	       
 	       pst1 = conn.prepareStatement(SQL1);
 	        
 	       pst1.setString(1,Login);
 	       pst1.setString(2,Senha);
 	       
 	       pst1.executeUpdate();
 	       pst1.clearParameters();
 	        
 	        
    }  catch (Exception ex) {
  	   ex.printStackTrace();
     } finally {

  	   pst.close();
  	   pst1.close();
  	   conn.close();
     }
 	  
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Cadastro Usuário</title>
    <link rel="icon" href="imagem/relogio.png" type="image/x-icon" />

    <link rel="stylesheet" href="css/bootstrap.min.css">

    <link href='css/css.css' rel='stylesheet'>
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
                    <a class="nav-link" href="index.jsp">Início <span class="sr-only"></span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contato.jsp">Contato</a></li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Sobre Nós</a>
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
                                    <h5 class="modal-title" id="TituloModalLongoExemplo">Termos de uso/Políticas de privacidade</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <h2><b>TERMOS DE USO</b></h2>
                                    <p>Todas as imagens presentes nesse site, é de uso exclusivo da empresa House Time. É expressamente proibido qualquer tipo de cópia sem prévia comunicação e autorização da empresa.
                                        As imagens aqui apresentadas, são ilustrativas, ou seja, é apenas o mostruário do produto que o cliente irá adquirir. Pode ocorrer algumas alterações básicas de cores do produto devido configuração de cada monitor, tela ou até mesmo da própria ferramenta de acesso.
                                        Todos os produtos possuem garantias contra defeito de fabricação estipulado pelo fornecedor/fabricante, mediante a apresentação da nota fiscal.</p><br><br>

                                    <h2><b>POLÍTICAS DE PRIVACIDADE</b></h2>
                                    <p>Nós da House Time, prezamos muito por nossos clientes, então garantimos uma compra totalmente segura para quem utiliza nosso site. Todos os dados cadastrais de nossos clientes são confidenciais. Todas as informações bancárias, como por exemplo números de cartões, são criptografadas mantendo a segurança dos dados.</p>

                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="login.jsp">Área do Cliente</a></li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Pesquisar" arial-label="Pesquisar"><button class="btn my-2 my-sm-0" type="submit" style="background-color: lightgrey;">Pesquisar</button>
            </form>
        </div>
    </nav>
</header>
<body>
     <div class="alert alert-success" role="alert">
  <h4 class="alert-heading">Bem-vindo!</h4>
  <p>Aêêê! Você concluiu seu cadastro. Aproveite nosso site e boas compras!</p>
  <hr>
  <p class="mb-0">Sempre que precisar entre em contato conosco.Estamos prontos para atende-lo.</p>
</div>
  
     
     
     <br><br><tr><td><a href="index.jsp">Voltar</a></td></tr><br>
<tr><td><a href="index.jsp">Menu Principal</a></td></tr><br>
     
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
                <h6>Trabalhamos com os cartões:</h6>
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
                    <a class="dark-grey-text" href="index.jsp">Início</a>
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
                    <a class="dark-grey-text" href="login.jsp">Área do Cliente</a>
                </p>

            </div>
            <!-- Grid column -->

            <!-- Grid column -->
            <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">

                <!-- Links -->
                <h6 class="text-uppercase font-weight-bold">Localização</h6>
                <hr class="teal accent-3 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                <p>
                    <i class="fas fa-home mr-0"></i>R. Cel. Fernando Prestes, 326 - Centro, Santo André - SP, 09020-110</p>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5630.894372901863!2d-46.53244551656858!3d-23.66167043927771!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xcdeec0304ee021f6!2sCol%C3%A9gio+Pent%C3%A1gono+-+Unidade+Centro!5e0!3m2!1spt-BR!2sbr!4v1557419069683!5m2!1spt-BR!2sbr" width="300" height="260" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>
        </div>
    </div>


    <!-- Copyright -->
    <div class="footer-copyright text-center text-black-50 py-3 " style="background-color:#D3D3D3;">© 2019 Copyright:
        <a class="dark-grey-text" href="https://mdbootstrap.com/education/bootstrap/">7ForDeveloper</a>
    </div>

</footer>
</html> 