package LoginServlet;

import Model.Usuarios;
import Model.Usuarios_DAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
                
		String Login = request.getParameter("name");
		String Senha = request.getParameter("password");
		
		if (Login != "" && Senha != "") 
		{
		
			//Cria um objeto chamado Tabela do tipo Table1 e atribue uma nova Table1 a ele
	 	    Usuarios User	=	new	Usuarios();
	 	    //Joga valores nos atributos do objeto criado
	 	    User.setLogin(Login);
	 	    User.setSenha(Senha);
	 	    	  
	 		//Carrega a classe que tem o m�todo de grava��o para o objeto dao criado abaixo
	 		Usuarios_DAO	dao	=	new	Usuarios_DAO();
	 		//Grava pelo m�todo	elegante
	 		int Valido = dao.validar(User);
	 		System.out.println(Valido);
	 		
	 		if (Valido == 1) {
			request.setAttribute("Login", "Logado com sucesso");
                        request.getRequestDispatcher("/index2.jsp").forward(request, response);
	 		}
			else {
				request.setAttribute("Login", "Login ou Senha invalido!");
				request.getRequestDispatcher("/index.jsp").forward(request, response);
			}
			
		}
	}
}
