package net.miraval.app.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import net.miraval.app.model.Usuario;
import net.miraval.app.service.ITransaccionService;
import net.miraval.app.service.IUsuarioService;


@Controller
@RequestMapping("/usuarios")
public class UsuarioController {
	
	@Autowired
	private IUsuarioService serviceUsuario;
	
	@Autowired
	private ITransaccionService serviceTransaccion;
	
	
	@GetMapping("/index")
	public String mostrarIndex(Model model) {
		List<Usuario> lista = serviceUsuario.buscarTodos();
		model.addAttribute("usuarios", lista);
		return "usuarios/listUsuarios";
	}
	
	@GetMapping("/create")
	public String crear(@ModelAttribute Usuario usuario, Model model) {
		
		
		return "usuarios/formUsuario";

	}
	
	@PostMapping("/save")
	public String guardar(@ModelAttribute Usuario usuario, BindingResult result, RedirectAttributes attribute,
			 HttpServletRequest request) {

		if (result.hasErrors()) {

			System.out.println("Existieron errores");
			return "usuarios/formUsuario";

		}

		
		
		serviceTransaccion.insertar(usuario.getTransaccion());

		
		serviceUsuario.insertar(usuario);


		attribute.addFlashAttribute("mensaje", "El usuario fue guardado");

		// return "peliculas/formPelicula";
		return "redirect:/usuarios/index";
	}
	
	@GetMapping(value="/edit/{id}")
	public String editar(@PathVariable("id") int dniUsuario, Model model) {
		                                                                                                                          
		Usuario usuario = serviceUsuario.buscarPorId(dniUsuario);
		
		model.addAttribute("usuario", usuario);
		
		return "usuarios/formUsuario";
		
	}
	
	@GetMapping(value="/delete/{id}")
	public String eliminar(@PathVariable("id") int dniUsuario, RedirectAttributes attributes) {
		
		
		Usuario usuario = serviceUsuario.buscarPorId(dniUsuario);
		
		//Primero eliminar la pelicula
		serviceUsuario.eliminar(dniUsuario);
		
		//Despues eliminar los detalles
		serviceTransaccion.eliminar(usuario.getTransaccion().getId());
		
		attributes.addFlashAttribute("mensaje", "El usuario fue eliminado");
		return "redirect:/usuarios/index";
		
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}

}
