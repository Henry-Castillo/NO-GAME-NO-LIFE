package mybatis.mapper;

import java.util.ArrayList;

import model.Grafico;
import model.Grafico2;
import model.Producto;

public interface ProductoMapper {
 
	public ArrayList<Producto> listado();
	
	public ArrayList<Producto> ListadoCarreras();
	
	public ArrayList<Producto> ListadoGuerra();
	
	public ArrayList<Producto> ListadoFantasia();
	
	public ArrayList<Producto> ListadoFutbol();
	
	public ArrayList<Producto>listadoPro(Producto p);
	
	public Producto obtener(String codigo);
	
	public int ActualizarPro(Producto p);
	
	public int EliminarPro(String id);
	
	public int RegistrarPro(Producto p);
	
	public ArrayList<Grafico> ReporteGrafico();
	
	public ArrayList<Grafico2> ReporteGrafico2();
 
	 
}
