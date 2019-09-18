package com.condominio;
import com.condominio.model.Morador;
import com.condominio.model.Unidade;
import com.condominio.service.UsuarioService;
import com.condominio.model.Usuario;
import com.condominio.model.Veiculo;
import com.condominio.service.MoradorService;
import com.condominio.service.UnidadeService;
import com.condominio.service.VeiculoService;
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
    private UsuarioService serviceUsuario;
    private MoradorService serviceMorador;
    private UnidadeService serviceUnidade;
    private VeiculoService serviceVeiculo;
     
    
    @RequestMapping("/")
    public ModelAndView viewUser(Model model){
        ModelAndView mav = new ModelAndView("index");
        return mav;
    }
    
    @RequestMapping("/new/usuario")
    public ModelAndView showNewProductPage(Model model) {
        ModelAndView mav = new ModelAndView("usuarios_cadastro");
        Usuario usuario = new Usuario();
        model.addAttribute("usuario", usuario);
        return mav;
    }
    
    // TODO: CADASTRO
//    @RequestMapping("/new/usuario")
//    public ModelAndView verNovoUsuario(Model model) {
//        ModelAndView mav = new ModelAndView("usuarios_cadastro");
//        Usuario usuario = new Usuario();
//        model.addAttribute("usuario", usuario);
//        return mav;
//    }
//    
//    @RequestMapping("/new/unidade")
//    public ModelAndView verNovaUnidade(Model model) {
//        ModelAndView mav = new ModelAndView("unidades_cadastro");
//        Unidade unidade = new Unidade();
//        model.addAttribute("unidade", unidade);
//        return mav;
//    }
//    
//    @RequestMapping("/new/veiculo")
//    public ModelAndView verNovoVeiculo(Model model) {
//        ModelAndView mav = new ModelAndView("veiculos_cadastro");
//        Veiculo veiculo = new Veiculo();
//        model.addAttribute("veiculo", veiculo);
//        return mav;
//    }
//    
//    @RequestMapping("/new/morador")
//    public ModelAndView verNovoMorador(Model model) {
//        ModelAndView mav = new ModelAndView("moradores_cadastro");
//        Morador morador = new Morador();
//        model.addAttribute("morador", morador);
//        return mav;
//    }
//    
    
    // TODO: SALVAR
    @RequestMapping(value = "/save/usuario", method = RequestMethod.POST)
    public ModelAndView salvarUsuario(@ModelAttribute("usuario") Usuario usuario) {
        ModelAndView mav = new ModelAndView("redirect:/");
        serviceUsuario.save(usuario);
        return mav;
    }
    
    @RequestMapping(value = "/save/unidade", method = RequestMethod.POST)
    public ModelAndView salvarUnidade(@ModelAttribute("unidade") Unidade unidade) {
        ModelAndView mav = new ModelAndView("redirect:/");
        serviceUnidade.save(unidade);
        return mav;
    }
   
    @RequestMapping(value = "/save/veiculo", method = RequestMethod.POST)
    public ModelAndView salvarVeiculo(@ModelAttribute("veiculo") Veiculo veiculo) {
        ModelAndView mav = new ModelAndView("redirect:/");
        serviceVeiculo.save(veiculo);
        return mav;
    }
    
    @RequestMapping(value = "/save/morador", method = RequestMethod.POST)
    public ModelAndView salvarMorador(@ModelAttribute("morador") Morador morador) {
        ModelAndView mav = new ModelAndView("redirect:/");
        serviceMorador.save(morador);
        return mav;
    }

    
    // TODO: EDITAR
    @RequestMapping("/edit/usuario/{id}")
    public ModelAndView verEdicaoUsuario(@PathVariable(name = "id") Long id) {
        ModelAndView mav = new ModelAndView("edit_usuario");
        Usuario usuario = serviceUsuario.get(id);
        mav.addObject("usuario", usuario);
        return mav;
    }
    
    @RequestMapping("/edit/morador/{id}")
    public ModelAndView verEdicaoMorador(@PathVariable(name = "id") Long id) {
        ModelAndView mav = new ModelAndView("edit_usuario");
        Morador morador = serviceMorador.get(id);
        mav.addObject("usuario", morador);
        return mav;
    }
    
    @RequestMapping("/edit/veiculo/{id}")
    public ModelAndView verEdicaoVeiculo(@PathVariable(name = "id") Long id) {
        ModelAndView mav = new ModelAndView("edit_usuario");
        Veiculo veiculo = serviceVeiculo.get(id);
        mav.addObject("usuario", veiculo);
        return mav;
    }
    
    @RequestMapping("/edit/unidade/{id}")
    public ModelAndView verEdicaoUnidade(@PathVariable(name = "id") Long id) {
        ModelAndView mav = new ModelAndView("edit_usuario");
        Unidade unidade = serviceUnidade.get(id);
        mav.addObject("usuario", unidade);
        return mav;
    }
    
    
    // TODO: DELETAR
    @RequestMapping("/delete/usuario/{id}")
    public ModelAndView deletarUsuario(@PathVariable(name = "id") Long id) {
        ModelAndView mav = new ModelAndView("redirect:/");
        serviceUsuario.delete(id);
        return mav;       
    }
    
    @RequestMapping("/delete/morador/{id}")
    public ModelAndView deletarMorador(@PathVariable(name = "id") Long id) {
        ModelAndView mav = new ModelAndView("redirect:/");
        serviceMorador.delete(id);
        return mav;       
    }
    
    @RequestMapping("/delete/unidade/{id}")
    public ModelAndView deletarUnidade(@PathVariable(name = "id") Long id) {
        ModelAndView mav = new ModelAndView("redirect:/");
        serviceUnidade.delete(id);
        return mav;       
    }
    
    @RequestMapping("/delete/veiculo/{id}")
    public ModelAndView deletarVeiculo(@PathVariable(name = "id") Long id) {
        ModelAndView mav = new ModelAndView("redirect:/");
        serviceVeiculo.delete(id);
        return mav;       
    }
    
    
    // TODO: LOGIN
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView login(@RequestParam(name = "email") String email, @RequestParam(name = "senha") String senha){
        ModelAndView mav = new ModelAndView("home");
        List<Usuario> listUsuario = serviceUsuario.listAll();
        return (listUsuario.size()>0)? new ModelAndView("home") : new ModelAndView("index");   
    }
    
    
    // TODO: LISTAR
    @RequestMapping("/usuarios")
    public ModelAndView verUsuarios(Model model){
        ModelAndView mav = new ModelAndView("usuarios");
        List<Usuario> listUsuario = serviceUsuario.listAll();
        mav.addObject("listUsuario", listUsuario);
        return mav;
    }
    
    @RequestMapping("/veiculos")
    public ModelAndView verVeiculos(Model model){
        ModelAndView mav = new ModelAndView("veiculos");
        List<Veiculo> listVeiculo = serviceVeiculo.listAll();
        mav.addObject("listVeiculo", listVeiculo);
        return mav;
    }
    
    @RequestMapping("/moradores")
    public ModelAndView verMorador(Model model){
        ModelAndView mav = new ModelAndView("moradores");
        List<Morador> listMorador = serviceMorador.listAll();
        mav.addObject("listMorador", listMorador);
        return mav;
    }
    
    @RequestMapping("/unidades")
    public ModelAndView verUnidades(Model model){
        ModelAndView mav = new ModelAndView("unidades");
        List<Unidade> listUnidade = serviceUnidade.listAll();
        mav.addObject("listUnidade", listUnidade);
        return mav;
    }
}
