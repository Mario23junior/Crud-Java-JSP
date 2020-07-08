<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import = "dao.ProdutoDAO"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    <%
    	try {
    	ProdutoDAO prd = new ProdutoDAO();
    	prd.excluir(Integer.parseInt(request.getParameter("codigo")));
    	response.sendRedirect("index.jsp");

    } catch (Exception erro) {
    	throw new RuntimeException("Erro 9 :" + erro);
    }
    %>"
</body>
</html>