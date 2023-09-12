package service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import model.Categoria;
import model.Grafico;
import model.Grafico2;
import model.Producto;
import mybatis.MyBatisUtil;
import mybatis.mapper.ProductoMapper;

public class ProductoService implements ProductoMapper {

	@Override
	public ArrayList<Producto> listado() {
		ArrayList<Producto> lista = null;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession(); // conex con la bd
		try {

			ProductoMapper pm = session.getMapper(ProductoMapper.class);
			lista = pm.listado();

		} catch (Exception e) {
			System.out.println("Error en listado Pro: " + e.getMessage());
		} finally {
			session.close();
		}
		return lista;
	}

	@Override
	public ArrayList<Producto> ListadoCarreras() {
		ArrayList<Producto> lista = null;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession(); // conex con la bd
		try {

			ProductoMapper pm = session.getMapper(ProductoMapper.class);
			lista = pm.ListadoCarreras();

		} catch (Exception e) {
			System.out.println("Error en listado carreras: " + e.getMessage());
		} finally {
			session.close();
		}
		return lista;
	}

	@Override
	public ArrayList<Producto> ListadoGuerra() {
		ArrayList<Producto> lista = null;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession(); // conex con la bd
		try {

			ProductoMapper pm = session.getMapper(ProductoMapper.class);
			lista = pm.ListadoGuerra();

		} catch (Exception e) {
			System.out.println("Error en listado guerra: " + e.getMessage());
		} finally {
			session.close();
		}
		return lista;
	}

	@Override
	public ArrayList<Producto> ListadoFantasia() {
		ArrayList<Producto> lista = null;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession(); // conex con la bd
		try {

			ProductoMapper pm = session.getMapper(ProductoMapper.class);
			lista = pm.ListadoFantasia();

		} catch (Exception e) {
			System.out.println("Error en listado fantasia: " + e.getMessage());
		} finally {
			session.close();
		}
		return lista;
	}

	@Override
	public ArrayList<Producto> ListadoFutbol() {
		ArrayList<Producto> lista = null;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession(); // conex con la bd
		try {

			ProductoMapper pm = session.getMapper(ProductoMapper.class);
			lista = pm.ListadoFutbol();

		} catch (Exception e) {
			System.out.println("Error en listado futbol: " + e.getMessage());
		} finally {
			session.close();
		}
		return lista;
	}

	@Override
	public ArrayList<Producto> listadoPro(Producto p) {
		ArrayList<Producto> lista = null;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try {
			ProductoMapper pm = session.getMapper(ProductoMapper.class);
			lista = pm.listadoPro(p);
		} catch (Exception e) {
			System.out.println("Error en listado x categoria: " + e.getMessage());
		} finally {
			session.close();
		}
		return lista;
	}

	@Override
	public Producto obtener(String codigo) {
		Producto p = null;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try {
			ProductoMapper pm = session.getMapper(ProductoMapper.class);
			p = pm.obtener(codigo);
		} catch (Exception e) {
			System.out.println("Error en obtener : " + e.getMessage());
		} finally {
			session.close();
		}
		return p;
	}

	@Override
	public int ActualizarPro(Producto p) {
		int rs = 0; // valor x default en caso de error
		// Plantilla de BD - MyBatis
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession(); // conex con la bd
		try {

			ProductoMapper pm = session.getMapper(ProductoMapper.class);
			rs = pm.ActualizarPro(p);
			session.commit();

		} catch (Exception e) {
			System.out.println("Error en actualizar : " + e.getMessage());
		} finally {
			session.close();
		}
		return rs;

	}

	@Override
	public int EliminarPro(String id) {
		int rs = 0; // valor x default en caso de error
		// Plantilla de BD - MyBatis
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession(); // conex con la bd
		try {

			ProductoMapper pm = session.getMapper(ProductoMapper.class);
			rs = pm.EliminarPro(id);
			session.commit();

		} catch (Exception e) {
			System.out.println("Error en eliminar : " + e.getMessage());
		} finally {
			session.close();
		}
		return rs;
	}

	@Override
	public int RegistrarPro(Producto p) {
		int rs = 0; // valor x default en caso de error
		// Plantilla de BD - MyBatis
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession(); // conex con la bd
		try {

			ProductoMapper pm = session.getMapper(ProductoMapper.class);
			rs = pm.RegistrarPro(p);
			session.commit();

		} catch (Exception e) {
			System.out.println("Error en registrar : " + e.getMessage());
		} finally {
			session.close();
		}
		return rs;
	}

	@Override
	public ArrayList<Grafico> ReporteGrafico() {
		ArrayList<Grafico> lista = null; // valor x default en caso de error
		// Plantilla
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try {
			ProductoMapper pm = session.getMapper(ProductoMapper.class);
			lista = pm.ReporteGrafico();
		} catch (Exception e) {
			System.out.println("Error en el reporte grafico : " + e.getMessage());
		} finally {
			session.close();
		}
		return lista;
	}

	@Override
	public ArrayList<Grafico2> ReporteGrafico2() {
		ArrayList<Grafico2> lista = null; // valor x default en caso de error
		// Plantilla
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try {
			ProductoMapper pm = session.getMapper(ProductoMapper.class);
			lista = pm.ReporteGrafico2();
		} catch (Exception e) {
			System.out.println("Error en el reporte grafico2 : " + e.getMessage());
		} finally {
			session.close();
		}
		return lista;
	}

}
