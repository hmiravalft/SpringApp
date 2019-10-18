package net.miraval.app.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.miraval.app.model.Usuario;
import net.miraval.app.repository.UsuarioRepository;

@Service
public class UsuarioServiceJPA implements IUsuarioService{
	
	@Autowired
	private UsuarioRepository usuarioRepo;

	@Override
	public void insertar(Usuario usuario) {
		
		usuarioRepo.save(usuario);
		
	}

	@Override
	public List<Usuario> buscarTodos() {
		
		return usuarioRepo.findAll();
	}

	@Override
	public Usuario buscarPorId(int dniUsuario) {
		
		Optional<Usuario> optional = usuarioRepo.findById(dniUsuario);
		
		if(optional.isPresent()) {
			
			return optional.get();
			
		}
		
		return null;
	}

	@Override
	public void eliminar(int dniUsuario) {
		
		
		usuarioRepo.deleteById(dniUsuario);
		
	}

}
