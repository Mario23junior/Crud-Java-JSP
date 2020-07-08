<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "model.Produto"%>
<%@ page import = "dao.ProdutoDAO" %>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="index.jsp" method="post">
		<label>Descrição</label><br/> 
		
		<input type="text" name="descricao"/>

		<button type="submit">Buscar</button>
	</form>
	
	 <% 
	    try{
	      
	      out.print("<table border='2'>");	
	      
	      out.print("<tr>");
	      out.print("<th>Codigo</th>");	
	      out.print("<th>Descricao</th>");	
	      out.print("<th>Preço</th>");		      
 	      out.print("<th>Editar</th>");	
	      out.print("<th>Excluir</th>");
	      out.print("</tr>");	      

	      
	      ProdutoDAO prd = new ProdutoDAO();
	      if(request.getParameter("descricao") == "" || request.getParameter("descricao") == null) {
	    	 
	    	  ArrayList<Produto> lista = prd.listarTodos();
	    	  for(int num = 0; num < lista.size(); num++){
	    		  
	    		  out.print("<tr>");
	    		  out.print("<td>"+lista.get(num).getCodigo_produto()+"</td>");
	    		  out.print("<td>"+lista.get(num).getDescricao_produto()+"</td>");
	    		  out.print("<td>"+lista.get(num).getPreco_produto()+"</td>");
	    		  
	    		  out.print("<td><a href='alterar.jsp?codigo="+lista.get(num).getCodigo_produto()
	              + "&descricao="+lista.get(num).getDescricao_produto()
	              + "&preco="+lista.get(num).getPreco_produto()+"'>Editar</a></td>");
	    		  
	    		  out.print("<td><a href='excluir.jsp?codigo="+lista.get(num).getCodigo_produto()
	    	      + "&descricao="+lista.get(num).getDescricao_produto()+"'>Exluir</a></td>");
	    		  
	    		  out.print("<td></td>");
	    		  out.print("</tr>");
	    	  }
	    	  
	      }else{
	    	
	    	  ArrayList<Produto> lista = prd.listarTodosDescricao(request.getParameter("descricao"));
	    	  for(int num = 0; num < lista.size(); num++){
	    		  
	    		  out.print("<tr>");
	    		  out.print("<td>"+lista.get(num).getCodigo_produto()+"</td>");
	    		  out.print("<td>"+lista.get(num).getDescricao_produto()+"</td>");
	    		  out.print("<td>"+lista.get(num).getPreco_produto()+"</td>");
	    		  
	    		  out.print("<td><a href='alterar.jsp?codigo="+lista.get(num).getCodigo_produto()
	              + "&descricao="+lista.get(num).getDescricao_produto()
	              + "&preco="+lista.get(num).getPreco_produto()+"'>Alterer</a></td>");
	    		  
	    		  out.print("<td><a href='excluir.jsp?codigo="+lista.get(num).getCodigo_produto()
	    	              + "&descricao="+lista.get(num).getDescricao_produto()+"'>Excluir</a></td>");
	    		  
	    		  out.print("<td></td>");
	    		  out.print("</tr>");
	    	  }
	    	  
	      }
	      
	      out.print("<table>");	
	      
	    }catch(Exception erro){
	    	throw new RuntimeException("Erro 10: "+ erro);
	    }
	 %>
    <a href="inserir.jsp">Cadastrar</a>
    
</body>
</html>