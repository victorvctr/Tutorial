<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.sql.*"
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Consulta de Dados</title>
</head>
<body>

<table border="1">
<thead>
  <tr>
   <th>CÓDIGO</th>
  </tr>
</thead>
<tbody>   
<% 
   String Codigo = request.getParameter("ID_MARCA");
  
   String SQL = null;
   
 
   // out.println(SQL);
   
   Connection conn = null;  
   Statement st = null;  
   ResultSet rs = null;
   
   try {  
  
      Class.forName("com.mysql.jdbc.Driver").newInstance();  
      conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/timehouse","root","root");  
      st = conn.createStatement();   
      rs = st.executeQuery("select ID_MARCA from marca" + SQL);
   
      while(rs.next()) {
	%>
	<tr>
	<td><%=rs.getString("ID_MARCA") %></td>
	
	
	</tr> 
	
	<%   
     } // fim do while
   
   } catch (Exception ex) {
	   ex.printStackTrace();
   } finally {
	   if(rs != null) rs.close();
	 
	   if(conn != null) conn.close();
   }

%>
</tbody>
</table>
<br><br><tr><td><a href="Busca.jsp">Voltar a Tela de Busca</a></td></tr><br>
<br><br><tr><td><a href="index.jsp">Voltar ao Menu Principal</a></td></tr><br>

</body>
</html>

