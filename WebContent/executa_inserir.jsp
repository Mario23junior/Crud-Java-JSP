<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import = "model.Produto"%>
<%@page import = "dao.ProdutoDAO"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    <% 
     // validão pra inserção de objeto no banco
       try{
    	  Produto pro = new Produto();
    	  ProdutoDAO prd = new ProdutoDAO();
    	  
    	  if(request.getParameter("descricao").equals("") ||  request.getParameter("preco").equals("")){    		  
    	  response.sendRedirect("index.jsp");
    	  }else{
    		  pro.setDescricao_produto(request.getParameter("descricao"));
    		  pro.setPreco_produto(Double.parseDouble(request.getParameter("preco")));
    		  prd.inserir(pro);
    		  response.sendRedirect("index.jsp");
          }	   
       }catch(Exception erro){
    	   throw new RuntimeException("Erro 7 : "+ erro);
       }
    %>"
</body>
</html>