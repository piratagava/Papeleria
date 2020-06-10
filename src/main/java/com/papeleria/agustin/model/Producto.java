package com.papeleria.agustin.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "producto")
public class Producto implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id_producto;

	@Column(name = "nombre_producto")
	private String nombre_producto;

	@Column(name = "precio_venta")
	private double precio_venta;

	@Column(name = "stock_minimo")
	private int stock_minimo;

	@Column(name = "stock_actual")
	private int stock_actual;

	@Column(name = "cod_barra")
	private String cod_barra;

	@Column(name = "descripcion")
	private String descripcion;

	public Producto() {
		Producto producto;
	}

	public Producto(int id_producto, String nombre_producto, double precio_venta, int stock_minimo, int stock_actual,
			String cod_barra, String descripcion) {
		super();
		this.id_producto = id_producto;
		this.nombre_producto = nombre_producto;
		this.precio_venta = precio_venta;
		this.stock_minimo = stock_minimo;
		this.stock_actual = stock_actual;
		this.cod_barra = cod_barra;
		this.descripcion = descripcion;
	}

	public int getId_producto() {
		return id_producto;
	}

	public void setId_producto(int id_producto) {
		this.id_producto = id_producto;
	}

	public String getNombre_producto() {
		return nombre_producto;
	}

	public void setNombre_producto(String nombre_producto) {
		this.nombre_producto = nombre_producto;
	}

	public double getPrecio_venta() {
		return precio_venta;
	}

	public void setPrecio_venta(double precio_venta) {
		this.precio_venta = precio_venta;
	}

	public int getStock_minimo() {
		return stock_minimo;
	}

	public void setStock_minimo(int stock_minimo) {
		this.stock_minimo = stock_minimo;
	}

	public int getStock_actual() {
		return stock_actual;
	}

	public void setStock_actual(int stock_actual) {
		this.stock_actual = stock_actual;
	}

	public String getCod_barra() {
		return cod_barra;
	}

	public void setCod_barra(String cod_barra) {
		this.cod_barra = cod_barra;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	@Override
	public String toString() {
		return "Producto [id_producto=" + id_producto + ", nombre_producto=" + nombre_producto + ", precio_venta="
				+ precio_venta + ", stock_minimo=" + stock_minimo + ", stock_actual=" + stock_actual + ", cod_barra="
				+ cod_barra + ", descripcion=" + descripcion + "]";
	}

}
