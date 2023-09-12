<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="/struts-bootstrap-tags" prefix="sb"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link href="css/login1.css" rel="stylesheet">
<sb:head/>
</head>
<body background="imagenes/f3.jpg">
	<div id="contenedor" style="margin-left: 30%; margin-right: 30%;">
		<h1 style="color:withe; font-family: fantasy; ">Acceso al sistema</h1>
		<s:form action="ingreso" theme="bootstrap">
			<s:textfield type="email" label="Usuario" name="usuario"
				placeholder="Ingrese su correo" />
			<s:textfield type="password" name="clave" label="Contraseña"
				placeholder="Ingrese clave" />
			<s:submit value="Ingresar" cssClass="btn btn-danger"  />
		</s:form>
		<p>
			<s:property value="mensaje" />
		</p>
		<div>
			<!-- mostramos los mensajes enviados desde la accion -->
			<s:actionmessage theme="bootstrap" />
			<s:actionerror theme="bootstrap" />
		</div>
		<br>
		<p >
			Si es usuario nuevo regístrese <a href="registrarUsuario.jsp">aquí</a>
		</p>
	</div>
</body>
</html>