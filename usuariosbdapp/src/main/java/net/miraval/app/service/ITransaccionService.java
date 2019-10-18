package net.miraval.app.service;

import net.miraval.app.model.Transaccion;

public interface ITransaccionService {
	
	void insertar(Transaccion transaccion);
	void eliminar(int idTransaccion);


}
