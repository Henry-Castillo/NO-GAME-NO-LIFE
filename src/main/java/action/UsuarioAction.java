package action;

import com.opensymphony.xwork2.ActionSupport;

import model.Usuario;
import service.UsuarioService;

public class UsuarioAction extends ActionSupport{

	private String usuario, clave;
	private Usuario u;
	
	
	public String registrar() {
		
		System.out.println(u);
		
		int ok = new UsuarioService().registrar(u);
		if(ok == 0) {
			addActionError("Error al registrar nuevo usuario");
		}else {
			addActionMessage("Registro exitoso");
		}
		return "ok";
	}
	
	public String login() {
		
		if (usuario.isEmpty()) {
			// mensaje="Usuario Vacio;"
			// return="error;"
			addActionError("Usuario vacio");
		}
		if (!clave.matches("[a-z]{5}")) {
			addActionError("Contraseña solo letras minusculas con 5 digitos");
			return "error";
		}

		if (!usuario.matches("[a-zA-Z0-9_ñÑ]+@peru.pe")) {
			addActionError("Formato de correo no valido");
			return "error";
		
		}
		// validar el usuario: no este vacio o cumpla con un formato
		if (clave.isEmpty()) {
			// mensaje="Clave Vacio;"
			// return="error;"
			addActionError("Clave vacio");
		}
	 
		
		
		Usuario u2 = new Usuario();
		u2.setUsuario(usuario);
		u2.setClave(clave);
		UsuarioService gu = new UsuarioService();
		u = gu.validar(u2);
		
		if(u.getTipo() == 1) {
			return "ok2";
		}
		
		else if(u != null) {
			addActionMessage("Bienvenido " + u.getNombre());
			return "ok";
		}else {
			addActionError("Usuario o clave Incorrecto");
			return "error";
		}
		
	}
	
	
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public String getClave() {
		return clave;
	}
	public void setClave(String clave) {
		this.clave = clave;
	}
	public Usuario getU() {
		return u;
	}
	public void setU(Usuario u) {
		this.u = u;
	}
}
