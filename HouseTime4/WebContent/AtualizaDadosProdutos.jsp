<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.sql.*"
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Atualiza Dados Produtos </title>
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

<%  
System.out.println ("teste"); 

		
		
	String Sistema = request.getParameter("Sistema");
	String Pulseira = request.getParameter("Pulseira");
	String Dimensao = request.getParameter("Dimensao");
	String Caixa = request.getParameter("Caixa");
	String Genero = request.getParameter("Genero");
	String Bateria = request.getParameter("Bateria");
	String Cor = request.getParameter("Cor");
	String Peso = request.getParameter("Peso");
	String Marca = request.getParameter("Marca");
	String Modelo = request.getParameter("Modelo");
	String Valor = request.getParameter("Valor");
	String Quantidade = request.getParameter("Quantidade");
	String Imagem = request.getParameter("Imagem");
	 
	System.out.println ("Vou mostrar a MARCA"); 
	 System.out.println (Marca);
	
	
	if (Marca!=null) {
   
   Connection conn = null;  
   PreparedStatement pst = null;  
      
   try {  
  
	   Class.forName("com.mysql.jdbc.Driver").newInstance();  
       conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/timehouse","root","root");  
      
       String SQL = "update cliente set SISTEMA = ?, PULSEIARA = ?, DIMENSAO = ?, CAIXA = ?, GENERO = ?, BATERIA = ?, COR = ?, `PESO` = ?, `MODELO` = ?, VALOR = ?, QUANTIDADE = ?, IMAGEM = ? WHERE MARCA = ?";
       
       System.out.println (SQL);
       pst = conn.prepareStatement(SQL);
       
       pst.setString(1,Sistema);
       pst.setString(2,Pulseira);
       pst.setString(3,Dimensao);
       pst.setString(4,Caixa);     
       pst.setString(5,Genero);
       pst.setString(6,Bateria);
       pst.setString(7,Cor);
       pst.setString(8,Peso);
       pst.setString(9,Modelo);
       pst.setString(10,Valor);
       pst.setString(11,Quantidade);
       pst.setString(12,Imagem);
       pst.setString(13,Marca);
       
       pst.executeUpdate();
       pst.clearParameters();
      
       System.out.println("Dados do código "+Marca+ " alterados com sucesso!");

   } catch (Exception ex) {
	   ex.printStackTrace();
   } finally {
	   if(pst != null) pst.close();
	   if(conn != null) conn.close();
   }
}
   
%>
<tr><td><a href="Index2.jsp">Voltar</a></td></tr><br>
<tr><td><a href="Index2.jsp">Página  Inicial</a></td></tr><br>
</body>
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