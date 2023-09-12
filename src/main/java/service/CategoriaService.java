package service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import model.Categoria;
import mybatis.MyBatisUtil;
import mybatis.mapper.CategoriaMapper;
 

public class CategoriaService implements CategoriaMapper {

	@Override
	public ArrayList<Categoria> listadoCategoria() {
		ArrayList<Categoria> lista = null;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession(); // conex con la bd
		try {

			CategoriaMapper pm = session.getMapper(CategoriaMapper.class);
			lista = pm.listadoCategoria();
 

		} catch (Exception e) {
			System.out.println("Error en listado Categori : " + e.getMessage());
		} finally {
			session.close();
		}
		return lista;
	}


}
