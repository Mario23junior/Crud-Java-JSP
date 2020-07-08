<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
      
      <form action="executa_excluir.jsp" method="post">
         <label>Codigo</label>
         <input type="text" name="codigo" value="<%= request.getParameter("codigo")%>"/><br/> 
         
         <label>Descrição</label> 
         <input type="text" name="descricao" value="<%= request.getParameter("descricao")%>"/><br/>
        
         <button type="submit" value ="Entrar">Excluir</button>
      </form>
      
</body>
</html>