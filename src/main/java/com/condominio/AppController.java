package com.condominio;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
 
@RestController
public class AppController {
    @Autowired
    private UsuarioService service;
     
    
    @RequestMapping("/")
    public ModelAndView viewUser(Model model){
        ModelAndView mav = new ModelAndView("index");
        return mav;
    }
    
    @RequestMapping("/new")
    public ModelAndView showNewProductPage(Model model) {
        ModelAndView mav = new ModelAndView("new_usuario");
        Usuario usuario = new Usuario();
        model.addAttribute("usuario", usuario);
        return mav;
    }
    
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView saveUsuario(@ModelAttribute("usuario") Usuario usuario) {
        ModelAndView mav = new ModelAndView("redirect:/");
        service.save(usuario);
        return mav;
    }
    
    @RequestMapping("/edit/{id}")
    public ModelAndView showEditUsuarioPage(@PathVariable(name = "id") Long id) {
        ModelAndView mav = new ModelAndView("edit_usuario");
        Usuario usuario = service.get(id);
        mav.addObject("usuario", usuario);
        return mav;
    }
    
    @RequestMapping("/delete/{id}")
    public ModelAndView deleteProduct(@PathVariable(name = "id") Long id) {
        ModelAndView mav = new ModelAndView("redirect:/");
        service.delete(id);
        return mav;       
    }
    
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView login(@RequestParam(name = "email") String email, @RequestParam(name = "senha") String senha){
        ModelAndView mav = new ModelAndView("home");
        List<Usuario> listUsuario = service.listAll();
        System.out.println(email +"    " + senha);
        return (listUsuario != null)? new ModelAndView("home") : new ModelAndView("index");   
    }
    
    @RequestMapping("/usuarios")
    public ModelAndView verUsuarios(Model model){
        ModelAndView mav = new ModelAndView("usuarios");
        List<Usuario> listUsuario = service.listAll();
        mav.addObject("listUsuario", listUsuario);
        return mav;
    }
}
