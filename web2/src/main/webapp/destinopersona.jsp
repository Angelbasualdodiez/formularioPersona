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
Calendar calendario= Calendar.getInstance();
//convierto un texto de cadena en una fecha Date con un formateador//
DateFormat formateador=new SimpleDateFormat("yyyy-MM-dd");
Date fecha=formateador.parse(fechaTexto);
calendario.setTime(fecha);

out.println(nombre);
out.println(apellidos);
out.println(calendario.getTime());
out.println("el año es"+ calendario.get(Calendar.YEAR));
out.println("el mes es"+ calendario.get(Calendar.MONTH));
out.println("el dia es"+ calendario.get(Calendar.DAY_OF_MONTH));
%>
</body>
</html>