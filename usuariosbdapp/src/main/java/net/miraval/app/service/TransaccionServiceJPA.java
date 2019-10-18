package net.miraval.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.miraval.app.model.Transaccion;
import net.miraval.app.repository.TransaccionRepository;

@Service
public class TransaccionServiceJPA implements ITransaccionService{
	
	@Autowired
	private TransaccionRepository transaccionRepo;

	@Override
	public void insertar(Transaccion transaccion) {
		
		transaccionRepo.save(transaccion);
		
	}

	@Override
	public void eliminar(int idTransaccion) {
		
		transaccionRepo.deleteById(idTransaccion);
		
	}

}
