<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="/struts-bootstrap-tags" prefix="sb"%>
<%--importamos las librerias de struts y jquery --%>
<%@ taglib uri="/struts-jquery-tags" prefix="sj"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<sb:head />
<!-- Agregamos los estilos de Jquery por default-->
<sj:head />
</head>
<body background="imagenes/f5.png">
	<div id="contenedor" style="margin-left: 30%; margin-right: 30%;">
		<h1 style="color: white;">Mantenimiento de Juegos</h1>
		<s:form action="regPro" theme="bootstrap">
			<!-- este por default -->
			<label style="color: white;"> Codigo</label>
			<s:textfield name="p.idprod" placeholder="Ingrese el codigo" />

			<label style="color: white;">Nombre del Juego</label>
			<s:textfield name="p.descripcion"
				placeholder="Ingrese el nombre del producto" />

			<label style="color: white;">Stock del Juego</label>
			<s:textfield type="number" name="p.stock"
				placeholder="Ingrese stock a registrar" />

			<label style="color: white;">Precio del Juego</label>
			<s:textfield type="decimal" name="p.precio" placeholder="0.0" />



			<!-- Para llenar un combo de la BD -->
			<!-- 1. crear un ur, que llame al action -->
			<label style="color: white;">Categoria</label>
			<s:url id="idcat" action="llenacombo" />

			<!-- 2. utilizamos la etiqueta select pero de Jquery Struts -->
			<sj:select name="p.idcategoria" list="lstCategoria" href="%{idcat}"
				listKey="idcategoria" listValue="descripcion" headerKey="-1"
				headerValue="Seleccione" cssClass="form-control" />


			<label style="color: white;">Estado</label>
			<s:select name="p.estado"
				list="#{'-1':'Seleccione','0':'Agotado','1':'Disponible'}" />

			<s:submit value="Registrar" cssClass="btn btn-danger" action="regPro" />
			<s:submit value="Actualizar" cssClass="btn btn-warning"
				action="actPro" />

			<a class="btn btn-primary" href="listadoxcombo.jsp">Volver</a>
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
		<p></p>
	</div>
</body>
</html>