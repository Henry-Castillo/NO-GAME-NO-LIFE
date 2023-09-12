package mybatis.mapper;

import model.Usuario;

public interface UsuarioMapper {

	public int registrar(Usuario u);
	
	public Usuario validar(Usuario u);
}
