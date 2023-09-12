package action;

import java.util.ArrayList;

import com.opensymphony.xwork2.ActionSupport;

import model.Categoria;
import model.Grafico;
import model.Grafico2;
import model.Producto;
import service.CategoriaService;
import service.ProductoService;

public class ProductoAction extends ActionSupport {

	private ArrayList<Producto> lstPro;
	private ArrayList<Producto> lstCar;
	private ArrayList<Producto> lstGue;
	private ArrayList<Producto> lstFan;
	private ArrayList<Producto> lstFut;
	private ArrayList<Categoria> lstCategoria;
	private Producto p;
	private ArrayList<Producto> lstProductos;
	private String codigo;
	private ArrayList<Grafico> lstGrafico;
	private ArrayList<Grafico2> lstReporteGrafico;


	public String reporteGrafico2() {
		lstReporteGrafico = new ProductoService().ReporteGrafico2();
		return "ok";
	}
	

	public String ListadoProducto() {
		System.out.println("Entro a listar");
		lstPro = new ProductoService().listado();

		return "ok";
	}

	public String ListadoCarreras() {
		System.out.println("Entro a listar");
		lstCar = new ProductoService().ListadoCarreras();

		return "ok";
	}

	public String ListadoGuerra() {
		System.out.println("Entro a listar");
		lstCar = new ProductoService().ListadoGuerra();

		return "ok";
	}

	public String ListadoFantasia() {
		System.out.println("Entro a listar");
		lstCar = new ProductoService().ListadoFantasia();

		return "ok";
	}

	public String ListadoFutbol() {
		System.out.println("Entro a listar");
		lstCar = new ProductoService().ListadoFutbol();

		return "ok";
	}

	public String generaListado() {
		lstCategoria = new CategoriaService().listadoCategoria();

		return "ok";
	}

	public String consulta() {
		lstProductos = new ProductoService().listadoPro(p);

		return "ok";
	}

	public String buscar() {
		p = new ProductoService().obtener(codigo);
		return "ok";
	}

	public String ActualizarPro() {
		System.out.println("entro a actualizar");
		int ok = new ProductoService().ActualizarPro(p);

		if (ok == 0) {
			addActionError("El producto no ha sido actualizado");
			return "ok";
		} else {
			addActionMessage("El producto " + p.getDescripcion() + " ha sido actualizado");
			return "ok";
		}
	}

	public String EliminarPro() {
		System.out.println("entro a eliminar");

		int ok = new ProductoService().EliminarPro(p.getIdprod());

		if (ok == 0) {
			addActionError("El producto no se pudo eliminar");
			return "ok";
		} else {
			addActionMessage("El producto " + p.getDescripcion() + " ha sido eliminado");
			return "ok";
		}
	}

	public String RegistrarPro() {
		System.out.println("Entro a registrar");

		int ok = new ProductoService().RegistrarPro(p);

		if (ok == 0) {
			addActionError("El producto no se pudo registrar");
			return "ok";
		} else {
			addActionMessage("Producto " + p.getDescripcion() + " Registrado");
			return "ok";
		}
	}

	public ArrayList<Producto> getLstPro() {
		return lstPro;
	}

	public void setLstPro(ArrayList<Producto> lstPro) {
		this.lstPro = lstPro;
	}

	public ArrayList<Producto> getLstCar() {
		return lstCar;
	}

	public void setLstCar(ArrayList<Producto> lstCar) {
		this.lstCar = lstCar;
	}

	public ArrayList<Producto> getLstGue() {
		return lstGue;
	}

	public void setLstGue(ArrayList<Producto> lstGue) {
		this.lstGue = lstGue;
	}

	public ArrayList<Producto> getLstFan() {
		return lstFan;
	}

	public void setLstFan(ArrayList<Producto> lstFan) {
		this.lstFan = lstFan;
	}

	public ArrayList<Producto> getLstFut() {
		return lstFut;
	}

	public void setLstFut(ArrayList<Producto> lstFut) {
		this.lstFut = lstFut;
	}

	public ArrayList<Categoria> getLstCategoria() {
		return lstCategoria;
	}

	public void setLstCategoria(ArrayList<Categoria> lstCategoria) {
		this.lstCategoria = lstCategoria;
	}

	public Producto getP() {
		return p;
	}

	public void setP(Producto p) {
		this.p = p;
	}

	public ArrayList<Producto> getLstProductos() {
		return lstProductos;
	}

	public void setLstProductos(ArrayList<Producto> lstProductos) {
		this.lstProductos = lstProductos;
	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}	public ArrayList<Grafico2> getLstReporteGrafico() {
		return lstReporteGrafico;
	}

	public void setLstReporteGrafico(ArrayList<Grafico2> lstReporteGrafico) {
		this.lstReporteGrafico = lstReporteGrafico;
	}

	public ArrayList<Grafico> getLstGrafico() {
		return lstGrafico;
	}

	public void setLstGrafico(ArrayList<Grafico> lstGrafico) {
		this.lstGrafico = lstGrafico;
	}

	public String reporteGrafico() {
		lstGrafico = new ProductoService().ReporteGrafico();
		return "ok";
	}

}
