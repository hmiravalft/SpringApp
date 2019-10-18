package net.miraval.app.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="usuario")
public class Usuario {
	
	@Id
	private int dniUsuario;
	private String nombreUsuario;
	private String apellidoUsuario;
	private Date fecha;
	private String direccion;
	
	@OneToOne
	@JoinColumn(name = "idTransaccion")
	private Transaccion transaccion;
	
	
	public Transaccion getTransaccion() {
		return transaccion;
	}
	public void setTransaccion(Transaccion transaccion) {
		this.transaccion = transaccion;
	}
	public int getDniUsuario() {
		return dniUsuario;
	}
	public void setDniUsuario(int dniUsuario) {
		this.dniUsuario = dniUsuario;
	}
	public String getNombreUsuario() {
		return nombreUsuario;
	}
	public void setNombreUsuario(String nombreUsuario) {
		this.nombreUsuario = nombreUsuario;
	}
	public String getApellidoUsuario() {
		return apellidoUsuario;
	}
	public void setApellidoUsuario(String apellidoUsuario) {
		this.apellidoUsuario = apellidoUsuario;
	}
	public Date getFecha() {
		return fecha;
	}
	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	
	
	@Override
	public String toString() {
		return "Usuario [dniUsuario=" + dniUsuario + ", nombreUsuario=" + nombreUsuario + ", apellidoUsuario="
				+ apellidoUsuario + ", fecha=" + fecha + ", direccion=" + direccion + ", transaccion=" + transaccion
				+ "]";
	}
	
	
	
	

}
