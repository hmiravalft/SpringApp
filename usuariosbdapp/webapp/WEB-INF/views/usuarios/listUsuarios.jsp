<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista de usuarios</title>
<spring:url value="/resources" var="urlPublic" />
<spring:url value="/" var="urlRoot" />
<spring:url value="/usuarios/create" var="urlCreate" />
<spring:url value="/usuarios/edit" var="urlEdit" />
<spring:url value="/usuarios/delete" var="urlDelete" />
<link href="${urlPublic}/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${urlPublic}/bootstrap/css/theme.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

</head>
<body>

<div class="container theme-showcase" role="main">

      <h3>Listado de Usuarios</h3>
      
      <c:if test="${mensaje != null}">
      
      <div class='alert alert-success' role="alert">${mensaje}</div>
      
      </c:if>
      
      
      <a href="${urlCreate}" class="btn btn-success" role="button" title="Nueva Usuario" >Ingresar nuevo usuario</a><br><br>
	
      <div class="table-responsive">
        <table class="table table-hover table-striped table-bordered">
            <tr>
                <th>DNI</th>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Fecha</th>
                <th>Direccion</th>
                <th>Monto</th>
            </tr>
            
            
            <c:forEach var="usuario" items="${usuarios}">
            
            <tr>
            
            
                <td>${usuario.dniUsuario}</td>
                <td>${usuario.nombreUsuario}</td>
                <td>${usuario.apellidoUsuario}</td>
                <td><fmt:formatDate pattern="dd-MM-yyyy" value="${usuario.fecha}"/>
                </td>
                <td>${usuario.direccion}</td>
                <td>${usuario.transaccion.monto}</td>
                <td>
                    <a href="${urlEdit}/${usuario.dniUsuario}" class="btn btn-success btn-sm" role="button" title="Edit" ><span class="glyphicon glyphicon-pencil"></span></a>
                    <a href="${urlDelete}/${usuario.dniUsuario}" class="btn btn-danger btn-sm" role="button" title="Eliminar" ><span class="glyphicon glyphicon-trash"></span></a>
                </td> 
                
                
            </tr>
            </c:forEach>
        </table>
        
        <a href="${urlRoot}" class="btn btn-success" role="button" title="inicio" >Volver al inicio</a><br>
      </div>
      
      </div>
      
       <footer>
			<p>&copy; 2018 Humberto Miraval.</p>
		</footer>
	
	

	 <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> 
    <script src="${urlPublic}/bootstrap/js/bootstrap.min.js"></script>      

</body>
</html>