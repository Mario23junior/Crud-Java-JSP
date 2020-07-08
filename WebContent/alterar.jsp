<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
      
      <form action="executa_alterar.jsp" method="post">
         <label>Codigo</label>
         <input type="text" name="codigo" value="<%= request.getParameter("codigo")%>"/><br/> 
         
         <label>Descrição</label> 
         <input type="text" name="descricao" value="<%= request.getParameter("descricao")%>"/><br/>
         
         <label>Preço</label>
         <input type="text" name="preco" value="<%= request.getParameter("preco")%>"/><br/>
         
         <button type="submit" value ="Entrar">Salvar</button>
      </form>
      
</body>
</html>