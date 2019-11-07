package timehouse;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.UnavailableException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@WebServlet("/sobe")
//@MultipartConfig


public class sobe extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
			public sobe() {
				super();
			}


			protected void doPost(HttpServletRequest request,
					HttpServletResponse response) throws ServletException, IOException, UnavailableException {
				
				String Sistema = null;
		    	String Pulseira = null;
				String Dimensao = null;
				String Caixa = null;
				String Genero = null;
				String Bateria = null;
				String Cor = null;
				String Peso = null;
				String Marca = null;
				String Modelo = null;
				String Valor = null;
				String Quantidade = null;
			    String StrImagem = null;
		
				
			//	String StrLastname = request.getParameter("sobrenome"); // Retrieves <input type="text" name="sobrenome">
				
				/*Identifica se o formulario Ã© do tipo multipart/form-data*/
				if (ServletFileUpload.isMultipartContent(request)) {
					
					try {
						/*Faz o parse do request*/
						List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
						
						/*Escreve a o arquivo na pasta img*/
						for (FileItem item : multiparts) {

							/*Trata a imagam ou o arquivo que será carregado*/
							if (!item.isFormField()) {
								String arquivo = item.getName().substring(item.getName().lastIndexOf("\\")+1,item.getName().length());
								StrImagem = item.getName().substring(item.getName().lastIndexOf(".")+1,item.getName().length());;
								
								//System.out.println(extensao + "");
								
								//if (extensao.length() > 3) { 
								//	throw new UnavailableException("O arquivo não é um .jpg");
								//}
								item.write(new File("C:/Users/Administrador/Documents/workspace-spring-tool-suite-4-4.4.0.RELEASE/HouseTime4/WebContent/IMG/" + arquivo ));
								
								StrImagem = "IMG/" + arquivo;
		
							}
							
							
						
							
						    if (item.isFormField()) {
						    	
							 	if(item.getFieldName().equals("Sistema")){
									Sistema = item.getString();
								   	}
							
						    	if(item.getFieldName().equals("Pulseira")) {
						    		Pulseira = item.getString();
									}
								
						    	if(item.getFieldName().equals("Dimensao")){
						    		Dimensao = item.getString();
						    		}
						    	if(item.getFieldName().equals("Caixa")){
						    		Caixa = item.getString();
						    		}
						    	if(item.getFieldName().equals("Genero")){
						    		Genero = item.getString();
						    		}
						    	if(item.getFieldName().equals("Bateria")){
						    		Bateria = item.getString();
						    		}
						    	if(item.getFieldName().equals("Cor")){
						    		Cor = item.getString();
						    		}
						    	if(item.getFieldName().equals("Peso")){
						    		Peso = item.getString();
						    		}
						    	if(item.getFieldName().equals("Marca")){
						    		Marca = item.getString();
						    		}
						    	if(item.getFieldName().equals("Modelo")){
						    		Modelo = item.getString();
						    		}
						    	if(item.getFieldName().equals("Valor")){
						    		Valor = item.getString();
						    		}
						    	if(item.getFieldName().equals("Quantidade")){
						    		Quantidade = item.getString();
						    		}
						    	if(item.getFieldName().equals("Imagem")){
						    		StrImagem = item.getString();
						    		}
						    }
						    

						}

				
			Connection conn = null;
		    PreparedStatement pst = null;
		   
		    
		    try {
		    	
		    	Class.forName("com.mysql.jdbc.Driver");
		  	    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/timehouse","root","root");  
		    	
		        String SQL = "insert into produto (`SISTEMA`, `PULSEIRA`, `DIMENSAO`, `CAIXA`, `GENERO`, `BATERIA`, `COR`, `PESO`,`MARCA`,`MODELO`,`VALOR`, `QUANTIDADE`,`IMAGEM`) " +
		                     "values (?,?,?,?,?,?,?,?,?,?,?,?,?)";
		        pst = conn.prepareStatement(SQL);
		        
		        //System.out.println(SQL);
		        
		        
		        pst.setString(1,Sistema);
		        pst.setString(2,Pulseira);
		        pst.setString(3,Dimensao);
		        pst.setString(4,Caixa);
		        pst.setString(5,Genero);
		        pst.setString(6,Bateria);
		        pst.setString(7,Cor);
		        pst.setString(8,Peso);
		        pst.setString(9,Marca);
		        pst.setString(10,Modelo);
		        pst.setString(11,Valor);
		        pst.setString(12,Quantidade);
		        pst.setString(13,StrImagem);
		        
		        
		        pst.executeUpdate();
		        pst.clearParameters();
		        
		    } catch (Exception ex) {
		 	   ex.printStackTrace();
		 } finally {
			   pst.close();
			   conn.close();
		  }

						request.setAttribute("message", "TESTE Arquivo carregado com sucesso");
					} catch (Exception ex) {
						request.setAttribute("message", "Upload de arquivo falhou devido a "+ ex);
					}

				} else {
					request.setAttribute("message","Desculpe este Servlet lida apenas com pedido de upload de arquivos");
				}

				request.getRequestDispatcher("/CadastroProduto.jsp").forward(request, response);
				
			}

		}