<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Formulario</title>
<spring:url value="/resources" var="urlPublic" />
<spring:url value="/usuarios/index" var="urlIndex" />
<spring:url value="/usuarios/save" var="urlForm" />
<spring:url value="/" var="urlRoot" />
<link href="${urlPublic}/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${urlPublic}/bootstrap/css/theme.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="${urlPublic}/bootstrap/css/estilos.css">
<link rel="stylesheet" href="${urlPublic}/bootstrap/css/normalize.css">
	
</head>
<body>




<form:form action="${urlForm}" class='form' method="post" modelAttribute="usuario">


<div>
            <h3 class="blog-title"><span class="label label-success">Usuario</span></h3>
        </div>

      <p class='field'>
        <label class='label required' for='dniUsuario'>DNI</label>
        <form:input class='text-input' id='dniUsuario' path='dniUsuario' type='text' required='required'/>
      </p>

      <p class='field'>
        <label class='label required' for='nombreUsuario'>Nombre</label>
        <form:input class='text-input' id='nombreUsuario' path='nombreUsuario' type='text' required='required'/>
      </p>

      <p class='field'>
        <label class='label required' for='apellidoUsuario'>Apellido</label>
        <form:input class='text-input' id='apellidoUsuario' path='apellidoUsuario' type='text' required='required' />
      </p>

      <p class='field'>
        <label class='label required' for='fecha'>Fecha de nacimiento</label>
        <form:input class='text-input' id='fecha' path='fecha' type='text'/>
      </p>

      <p class='field'>
        <label class='label required' for='direccion'>Direccion</label>
        <form:input class='text-input' id='direccion' path='direccion' type='text'/>
      </p>
      
      
      <div>
            <h3 class="blog-title"><span class="label label-success">Transaccion</span></h3>
        </div>
      
           <p class='field'>
              <label for="tipoTransaccion">Tipo Transaccion</label>
              <form:select class="form-control" path="transaccion.tipoTransaccion" id="tipoTransaccion">
              <form:option value="01">Deposito</form:option>
			<form:option value="02">Retiro</form:option>
			</form:select>
            </p>
            
            
            <p class='field'>
              <label for="monto">Monto</label>
              <form:input type="text" class="form-control" path="transaccion.monto" id="monto" />
            </p>
             
      
      <p class='field half'>
        <input class='button' type='submit' value='Enviar'>
      </p>

      <p class='field half'>
        <input class='button' type='reset' value='Reset'>
      </p>
      

      </form:form>
      
      <a href="${urlRoot}" class="btn btn-success" role="button" title="inicio" >Volver al inicio</a><br>
      
       <footer>
			<p>
				&copy; 2018 Humberto Miraval.
			</p>
		</footer>
      
      
      <!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="${urlPublic}/bootstrap/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	<script>
		$(function() {
			$("#fecha").datepicker({
				dateFormat : 'dd-mm-yy'
			});
		});
	</script>
	
	
	

</body>
</html>