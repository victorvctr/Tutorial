<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>TIME HOUSE</title>
    <link rel="icon" href="imagem/relogio.png" type="image/x-icon" />

    <link rel="stylesheet" href="css/bootstrap.min.css">

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
                    <a class="nav-link" href="contato.jsp">Contato</a></li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Sobre Nós</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="sobre.jsp">A Empresa</a>
                        <a class=dropdown-item href="politicas.jsp">Politicas de Privacidade</a>
                    </div>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="login.jsp">Área do Cliente</a></li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Pesquisar" arial-label="Pesquisar"><button class="btn btn-outline-success my-2 my-sm-0" type="submit">Pesquisar</button>
            </form>
        </div>
    </nav>
</header>

<body>



   <%
	// Passo 1. Carregar o Driver JDBC
	//Class.forName("org.gjt.mm.mysql.Driver");
	Class.forName("com.mysql.jdbc.Driver");
	
	// Passo 2. Criar um objeto Connection 
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/timehouse?user=root&password=root");

	
	// Passo 3. Criar um objeto Statement 
	Statement s = con.createStatement(); 
	
	// Passo 4. Usar o objeto Statement para obter um objeto ResultSet
	String sql = "select * from marca";
	
	
	ResultSet rs = s.executeQuery(sql);
	

	
	//Passo 5. Imprimindo o resultado
	

	  
      while(rs.next()) {
    	  
	%>




    <div class="cadastro-usu">
        <h1 class="text-center">Cadastro de Produtos</h1>
        <link href="https://fonts.googleapis.com/css?family=Comfortaa" rel="stylesheet">
    </div>

    <form action="sobe" method="post" enctype="multipart/form-data">
        <div class="container">
            <div class="row">
            
                 

                <div class="col-sm">
                    Modelo:
                    <input type="text" name="Modelo" class="form-control" id="inputmodelo" placeholder=" Modelo do produto">
                </div>
                <div class="col-sm">
                    Pulseira:
                    <input type="text" name="Pulseira" class="form-control" placeholder=" Tipo de pulseira">
                </div>
            </div>

            <div class="row">
                <div class="col-sm">
                    Dimensão:
                    <input type="text" name="Dimensao" class="form-control" placeholder=" Dimesão do prosuto">
                </div>
                <div class="col-sm">
                    Caixa:
                    <input type="text" name="Caixa" class="form-control" placeholder=" Tipo de caixa">
                </div>
                <div class="col-sm">
                    Genêro:
                    <input type="text" name="Genero" class="form-control" placeholder=" Digite o genêro">
                </div>
                <div class="col-sm">
                    Valor:
                    <input type="text" name="Valor" class="form-control" placeholder=" Digite o valor">
                </div>
                <div class="col-sm">
                    Bateria:
                    <input type="text" name="Bateria" class="form-control" placeholder=" Digite a bateria"></div>
            </div>

            <div class="row">
                <div class="col-sm">
                    Quantidade:
                    <input type="text" name="Quantidade" class="form-control" placeholder=" Digite a quantidade">
                </div>
                <div class="col-sm">
                    Cor:
                    <input type="text" name="Cor" class="form-control" placeholder=" Digite a cor"></div>

                <div class="col-sm">
                    Peso:
                    <input type="text" name="Peso" class="form-control" placeholder="Digite o peso">
                </div>
                <div class="col-sm">
                  <p>   Marca:      
                     <br>
                     <select>
                      
                    <option value="em"> <%=rs.getString(2)%></option>
                    <option value="nt"> <%=rs.getString(2)%>  </option>
                    <option value="ns"><%=rs.getString(2)%> </option>
                      </select>
                      </p>
                </div>
                 <div class="col-sm">
                    Imagem:
                    <div class="card">
                                <div class="card-body">
                                    <h6 class="card-title text-warning">Upload de imagem</h6>
                                    <hr class="prod">
                                    <div class="form-group">
                                        <label for="uploadImage">Selecionar Imagem</label>
                                        <input type="file" name="file" id="file"/> 
                                    </div>
                                 </div>
                            </div>
                </div>
            </div>


            <div class="botao-form">
                <button type="submit" class="btn btn-success btn-xl">Cadastrar</button>
                <button type="reset" class="btn btn-danger btn-xl">Limpar</button>
            </div>
        </div>
    </form>


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
                  <%   
     } 
      

	//Passo 6. Fechando conexoe
	rs.close(); s.close(); con.close();
%>

<footer>
    <div class='rodape'>
        Rua Coronel Fernando Prestes, 326 - Centro, Santo André - SP<br>
        09020-110<br>
        CNPJ:00.000.000/0000-00<br>
    </div>
</footer>



           
 
</html>
