<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inicio</title>
<spring:url value="/resources" var="urlPublic" />
<spring:url value="/usuarios/create" var="urlCreate" />
<spring:url value="/usuarios/index" var="urlIndex" />
<link href="${urlPublic}/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${urlPublic}/bootstrap/css/theme.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	
<link rel="stylesheet" href="${urlPublic}/bootstrap/css/estilos.css">
<link rel="stylesheet" href="${urlPublic}/bootstrap/css/normalize.css">
</head>
<body>

<h1><span class="label label-default">Formulario</span></h1>

		
<a href="${urlCreate}" class="btn btn-success" role="button" title="Nuevo Usuario" >Entrar</a><br>

<a href="${urlIndex}" class="btn btn-success" role="button" title="Lista" >Mostrar Lista de Usuarios</a><br>


        <footer>
			<p>
				&copy; 2018 Humberto Miraval.
			</p>
		</footer>
	
</body>
</html>