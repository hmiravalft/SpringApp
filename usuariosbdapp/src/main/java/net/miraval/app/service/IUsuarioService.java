package net.miraval.app.service;

import java.util.List;

import net.miraval.app.model.Usuario;

public interface IUsuarioService {
	
	void insertar(Usuario usuario);
	List<Usuario> buscarTodos();
	Usuario buscarPorId(int dniUsuario);
	void eliminar(int dniUsuario);
	
}
