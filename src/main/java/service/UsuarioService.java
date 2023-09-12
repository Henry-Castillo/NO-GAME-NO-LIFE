package service;

import org.apache.ibatis.session.SqlSession;

import model.Usuario;
import mybatis.MyBatisUtil;
import mybatis.mapper.UsuarioMapper;

public class UsuarioService implements UsuarioMapper{

	@Override
	public int registrar(Usuario u) {
		int rs = 0; // valor x default en caso de error
		// Plantilla de BD - MyBatis
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession(); // conex con la bd
		try {

			UsuarioMapper um = session.getMapper(UsuarioMapper.class);
			rs = um.registrar(u);
			session.commit();

		} catch (Exception e) {
			System.out.println("Error en registrar : " + e.getMessage());
		} finally {
			session.close();
		}
		return rs;
	}

	@Override
	public Usuario validar(Usuario u) {
		Usuario u2 = null; // valor por default en caso de error

		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();

		try {
			UsuarioMapper um = session.getMapper(UsuarioMapper.class);
			u2 = um.validar(u);

		} catch (Exception e) {
			System.out.println("Error en validar usuario : " + e.getMessage());

		} finally {
			session.close();
		}

		return u2;
	}

}
