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
String nombre=request.getParameter("nombre");
String apellidos=request.getParameter("apellidos");
String fechaTexto=request.getParameter("fecha");
String lenguaje=request.getParameter("lenguaje");
String nuevoTexto=request.getParameter("nuevo");
String[] lista=request.getParameterValues("dispositivos");
boolean nuevo= Boolean.parseBoolean(nuevoTexto);
String nivel=request.getParameter("nivel");
Calendar calendario= Calendar.getInstance();

//convierto un texto de cadena en una fecha Date con un formateador//
DateFormat formateador=new SimpleDateFormat("yyyy-MM-dd");
Date fecha=formateador.parse(fechaTexto);
calendario.setTime(fecha);
for(int i=0; i<lista.length;i++){
	out.println("<p>"+lista[i]+"</p>");
}
out.println(nombre);
out.println(apellidos);
out.println(calendario.getTime());
out.println( "nivel" +nivel);
out.println("es nuevo: " + nuevo);
%>
<p>
 <%if (nuevo) out.println("<b>es nuevo</b>");%>
</p>
<p>
el nivel es: <%=nivel%>
</p>
<p>
el lenguaje favorito es: <%=lenguaje%>
</p>
<p>
el año es: <%=calendario.get(Calendar.YEAR)%>
</p>
<p>
el mes es: <%=calendario.get(Calendar.MONTH)%>
</p>
<p>
el dia es: <%=calendario.get(Calendar.DATE)%>
</p>
</body>
</html>