<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="/struts-bootstrap-tags" prefix="sb"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registro Usuario</title>
<sb:head />
</head>
<body background="imagenes/f2.png">

	<div id="contenedor" style="margin-left: 30%; margin-right: 30%;">
		<h1>Registre sus datos</h1>
		<s:form action="reg" theme="bootstrap">
			<s:textfield style="background-color: black; color: white;" label="Nombre" name="u.nombre"
				placeholder="Ingrese su nombre" required="true" />

			<s:textfield style="background-color: black; color: white;" label="Apellido" name="u.apellido"
				placeholder="Ingrese su apellido" required="true" />

			<s:textfield style="background-color: black; color: white;" type="email" label="Usuario" name="u.usuario"
				placeholder="Ingrese su correo" required="true" />

			<s:textfield style="background-color: black; color: white;" type="password" name="u.clave" label="Contraseña"
				placeholder="Ingrese clave" maxlength="5" required="true" />

			<s:textfield style="background-color: black; color: white;" type="date" label="Fecha de nacimiento"
				name="u.fechanac" placeholder="año/mes/día" required="true" />

			<s:select style="background-color: black; color: white;" label="Sede/Distrito" name="sede"
				list="#{'D01':'Miraflores','D04':'Breña','D02':'Independencia','D05':'Lima','D03':'Bellavista'}" />

			<s:submit value="Registrar" cssClass="btn btn-warning" />
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
		<p style="background-color: black; color: white;">
			Si ya tiene cuenta, ingrese <a href="login.jsp">aquí</a>
		</p>
	</div>
</body>
</html>