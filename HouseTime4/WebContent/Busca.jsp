<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Busca de Dados</title>
</head>
<body>
<form action="BuscarDados.jsp" method="post">
<table>
  <tr>
     <td>Código:</td>
     <td><input type="text" name="ID_MARCA" /></td>
  </tr>

  <tr>
     <td colspan="2">
         <input type="submit" name="Enviar" value="Pesquisar" />
     </td>
  </tr>
</table>
</form>
<br><br><tr><td><a href="index.jsp">Voltar ao Menu Principal</a></td></tr><br>
</body>
</html>