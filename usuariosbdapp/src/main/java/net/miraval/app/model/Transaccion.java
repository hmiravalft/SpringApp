package net.miraval.app.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="transaccion")
public class Transaccion {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private int tipoTransaccion;
	private double monto;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getTipoTransaccion() {
		return tipoTransaccion;
	}
	public void setTipoTransaccion(int tipoTransaccion) {
		this.tipoTransaccion = tipoTransaccion;
	}
	public double getMonto() {
		return monto;
	}
	public void setMonto(double monto) {
		this.monto = monto;
	}
	
	
	@Override
	public String toString() {
		return "Transaccion [id=" + id + ", tipoTransaccion=" + tipoTransaccion + ", monto=" + monto + "]";
	}
	
	
}
