<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%> 
    <%@page import="java.io.*"%> 
    <%@page import="javax.servlet.*"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
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
  <div class="col-sm">

<label>Escolaridade:
<select name="escolaridade">
     <option value="em"> <%=rs.getString(2)%></option>
     <option value="nt"> Nível Técnico </option>
     <option value="ns"> Nível Superior </option>
</select>
</label>
</div>
                 <%   
     } 
      

	//Passo 6. Fechando conexoe
	rs.close(); s.close(); con.close();
%>


</body>
</html>