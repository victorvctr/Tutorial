<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.sql.*"
  
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="charset=ISO-8859-1">
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
                    <a class="nav-link" href="index.jsp">Logout</a></li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Pesquisar" arial-label="Pesquisar"><button class="btn my-2 my-sm-0" type="submit" style="background-color: lightgrey;">Pesquisar</button>
            </form>
        </div>
    </nav>
</header>
<body>  
<%  
   Connection conn = null;  
   Statement st = null;  
   ResultSet rs = null;
   
   try {  
  
	  // conn = ConnectionFactory.getConexao(); 2 linhas abaixo
	 Class.forName("com.mysql.jdbc.Driver");
  	 conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/timehouse","root","root");  
    	
	  
      st = conn.createStatement();   
      rs = st.executeQuery("select * from produto");
   
      while(rs.next()) {
	%>
	
	<form action="AtualizaDadosProdutos.jsp" method="post">
	
        <div class="container">
            <div class="row">
                <div class="col-sm">
                    Sistema:
                    <input type="text"  name="Sistema" class="form-control" id="inputnome" placeholder = "<%=rs.getString("Sistema") %>">
                    
                </div>
                 <div class="row">
                <div class="col-sm">
                    Puseira:
                   <input type="text" name="Puseira" class="form-control" placeholder="<%=rs.getString("Pulseira") %>">
                
                </div>
                <div class="col-sm">
                    Dimensão:
                    <input type="text" name="Dimensao" class="form-control" placeholder="<%=rs.getString("Dimensao") %>">
                
                </div>
            </div>

            <div class="row">
                <div class="col-sm">
                    Caixa:
                    <input type="text" name="Caixa" class="form-control" placeholder="<%=rs.getString("Caixa") %>">
                </div>
                <div class="col-sm">
                    Gênero:
                    <input type="text" name="Genero" class="form-control" placeholder="<%=rs.getString("Genero") %>">
                </div>
                <div class="col-sm">
                    Bateria:
                    <input type="text" name="Bateria" class="form-control" placeholder="<%=rs.getString("Bateria") %>">
                </div>
                <div class="col-sm">
                    Cor:
                    <input type="text" name="Cor" class="form-control" placeholder=" <%=rs.getString("Cor") %>">
                </div>
                <div class="col-sm">
                    Peso:
                    <input type="text" name="Peso" class="form-control" placeholder=" <%=rs.getString("Peso") %>">
                </div>
            </div>

            <div class="row">
                <div class="col-sm">
                    Marca:
                    <input type="text" name="Marca" class="form-control" placeholder=" <%=rs.getString("Marca") %>">
                </div>
                <div class="col-sm">
                    Modelo:
                    <input type="text" name="Modelo" class="form-control" placeholder=" <%=rs.getString("Modelo") %>">
                </div>

                <div class="col-sm">
                    Valor:
                    <input type="text" name="Valor" class="form-control" placeholder=" <%=rs.getString("Valor") %>">
                    
                </div>
                <div class="col-sm">
                    Quantidade:
                    <input type="text" name="Quantidade" maxlength="5" onkeypress='return event.charCode >= 48 && event.charCode <= 57' class="form-control" placeholder="<%=rs.getString("Quantidade") %>">
                </div>
            </div>

            <div class="row">
                <div class="col-sm">
                    Imagem:
                    <input input type="file" name="file" id="file" class="form-control" placeholder=" <%=rs.getString("Imagem") %>">
                </div>
                
            </div>

            <div class="botao-form">
                <button type="submit" name="ac" value="atualizar" class="btn btn-success btn-xl">Atualizar</button>
                <button type="reset" class="btn btn-danger btn-xl">Limpar</button>
            </div>
        </div>
    </form>
	
	<%   
     } // fim do while
   
   } catch (Exception ex) {
	   ex.printStackTrace();
   } finally {
	   if(rs != null) rs.close();
	   if(st != null) st.close();
	   if(conn != null) conn.close();
   }

%>
 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.,strapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

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

