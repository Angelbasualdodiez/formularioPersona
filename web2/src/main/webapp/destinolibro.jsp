<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.Calendar" %>
 <%@page import="java.text.SimpleDateFormat" %>
 <%@page import="java.text.DateFormat" %>
 <%@page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String isbn=request.getParameter("isbn");
String titulo=request.getParameter("titulo");
String autor=request.getParameter("autor");
String paginas=request.getParameter("paginas");
String idioma=request.getParameter("idioma");
String genero=request.getParameter("genero");
String disponibleTexto=request.getParameter("disponible");
boolean disponible= Boolean.parseBoolean(disponibleTexto);

out.println(isbn);
out.println(titulo);
out.println(autor);
out.println(genero);
out.println("esta disponible: " + disponible);
%>
<p>
 <%if (disponible) out.println("<b>esta disponible</b>");%>
</p>
<p>
 las paginas son: <%=paginas %>
</p>
<p>
el idioma es: <%=idioma%>
</p>
<p>
el genero es: <%=genero%>
</p>
</body>
</html>