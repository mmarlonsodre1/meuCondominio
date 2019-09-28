package main.control;
import main.model.Morador;
import main.model.Unidade;
import main.service.UsuarioService;
import main.model.Usuario;
import main.model.Veiculo;
import main.service.MoradorService;
import main.service.UnidadeService;
import main.service.VeiculoService;
import java.text.ParseException;
import java.util.Date;
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
    @Autowired
    private MoradorService serviceMorador;
    @Autowired
    private UnidadeService serviceUnidade;
    @Autowired
    private VeiculoService serviceVeiculo;
     
    
    @RequestMapping("/")
    public ModelAndView viewUser(Model model){
        ModelAndView mav = new ModelAndView("index");
        mav.addObject("usuario", new Usuario());
        return mav;
    }
    
    
    // TODO: CADASTRO
    @RequestMapping("/novoUsuario")
    public ModelAndView verNovoUsuario(Model model) {
        ModelAndView mav = new ModelAndView("usuarios_cadastro");
        Usuario usuario = new Usuario();
        model.addAttribute("usuario", usuario);
        return mav;
    }
    
    @RequestMapping("/novaUnidade")
    public ModelAndView verNovaUnidade(Model model) {
        ModelAndView mav = new ModelAndView("unidades_cadastro");
        Unidade unidade = new Unidade();
        model.addAttribute("unidade", unidade);
        return mav;
    }
    
    @RequestMapping("/novoVeiculo")
    public ModelAndView verNovoVeiculo(Model model) {
        ModelAndView mav = new ModelAndView("veiculos_cadastro");
        Veiculo veiculo = new Veiculo();
        model.addAttribute("veiculo", veiculo);
        model.addAttribute("listUnidade", serviceUnidade.listUnidades());
        return mav;
    }
    
    @RequestMapping("/novoMorador")
    public ModelAndView verNovoMorador(Model model) {
        ModelAndView mav = new ModelAndView("moradores_cadastro");
        Morador morador = new Morador();
        model.addAttribute("morador", morador);
        model.addAttribute("listUnidade", serviceUnidade.listUnidades());
        return mav;
    }
    
    
    // TODO: SALVAR
    @RequestMapping(value = "/salvarUsuario", method = RequestMethod.POST)
    public ModelAndView salvarUsuario(@ModelAttribute("usuario") Usuario usuario) {
        ModelAndView mav = new ModelAndView("redirect:/usuarios");
        usuario.setDt_cadastro(new Date());
        serviceUsuario.save(usuario);
        return mav;
    }
    
    @RequestMapping(value = "/salvarUnidade", method = RequestMethod.POST)
    public ModelAndView salvarUnidade(@ModelAttribute("unidade") Unidade unidade) {
        ModelAndView mav = new ModelAndView("redirect:/unidades");
        serviceUnidade.save(unidade);
        return mav;
    }
    
    @RequestMapping(value = "/salvarVeiculo", method = RequestMethod.POST)
    public ModelAndView salvarVeiculo(@ModelAttribute("veiculo") Veiculo veiculo) throws ParseException {
        ModelAndView mav = new ModelAndView("redirect:/veiculos");
        veiculo.setDt_cadastro(new Date());
        serviceVeiculo.save(veiculo);
        return mav;
    }
    
    @RequestMapping(value = "/salvarMorador", method = RequestMethod.POST)
    public ModelAndView salvarMorador(@ModelAttribute("morador") Morador morador) throws ParseException {
        ModelAndView mav = new ModelAndView("redirect:/moradores");
        morador.setDt_cadastro(new Date());
        serviceMorador.save(morador);
        return mav;
    }

    
    // TODO: EDITAR
    @RequestMapping("/editarUsuario/{id}")
    public ModelAndView verEdicaoUsuario(@PathVariable(name = "id") Long id) {
        ModelAndView mav = new ModelAndView("usuarios_editar");
        Usuario usuario = serviceUsuario.get(id);
        mav.addObject("usuario", usuario);
        return mav;
    }
    
    @RequestMapping("/editarMorador/{id}")
    public ModelAndView verEdicaoMorador(@PathVariable(name = "id") Long id) {
        ModelAndView mav = new ModelAndView("moradores_editar");
        Morador morador = serviceMorador.get(id);
        mav.addObject("morador", morador);
        mav.addObject("listUnidade", serviceUnidade.listUnidades());
        return mav;
    }
    
    @RequestMapping("/editarVeiculo/{id}")
    public ModelAndView verEdicaoVeiculo(@PathVariable(name = "id") Long id) {
        ModelAndView mav = new ModelAndView("veiculos_editar");
        Veiculo veiculo = serviceVeiculo.get(id);
        mav.addObject("veiculo", veiculo);
        mav.addObject("listUnidade", serviceUnidade.listUnidades());
        return mav;
    }
    
    @RequestMapping("/editarUnidade/{id}")
    public ModelAndView verEdicaoUnidade(@PathVariable(name = "id") Long id) {
        ModelAndView mav = new ModelAndView("unidades_editar");
        Unidade unidade = serviceUnidade.get(id);
        mav.addObject("unidade", unidade);
        return mav;
    }
   
    
    // TODO: SALVAR Edicao
    @RequestMapping(value = "/salvarEdicaoUsuario", method = RequestMethod.POST)
    public ModelAndView salvarEdicaoUsuario(@ModelAttribute("usuario") Usuario usuario, @RequestParam(name = "id") Long id) {
        ModelAndView mav = new ModelAndView("redirect:/usuarios");
        serviceUsuario.alterarUsuario(usuario.getNome(), usuario.getEmail(), id);
        return mav;
    }
    
    @RequestMapping(value = "/salvarEdicaoUnidade", method = RequestMethod.POST)
    public ModelAndView salvarEdicaoUnidade(@ModelAttribute("unidade") Unidade unidade, @RequestParam(name = "id") Long id) {
        ModelAndView mav = new ModelAndView("redirect:/unidades");
        serviceUnidade.alterarUnidade(unidade.getProprietario(), unidade.getCpf(), unidade.getTelefone(), 
                unidade.getStatus(), id);
        return mav;
    }
    
    @RequestMapping(value = "/salvarEdicaoVeiculo", method = RequestMethod.POST)
    public ModelAndView salvarEdicaoVeiculo(@ModelAttribute("veiculo") Veiculo veiculo, @RequestParam(name = "id") Long id) {
        ModelAndView mav = new ModelAndView("redirect:/veiculos");
        serviceVeiculo.alterarVeiculo(veiculo.getPlaca(), veiculo.getMarca(), veiculo.getModelo(), 
                veiculo.getAno(), veiculo.getCor(), veiculo.getId_unidade(), id);
        return mav;
    }
    
    @RequestMapping(value = "/salvarEdicaoMorador", method = RequestMethod.POST)
    public ModelAndView salvarEdicaoMorador(@ModelAttribute("morador") Morador morador, @RequestParam(name = "id") Long id) {
        ModelAndView mav = new ModelAndView("redirect:/moradores");
        serviceMorador.alterarMorador(morador.getNome(), morador.getCpf(), morador.getRg(), 
                morador.getEmail(), morador.getTelefone(), 
                morador.getId_unidade(), id);
        return mav;
    }
    
    // TODO: DELETAR
    @RequestMapping("/deletarUsuario/{id}")
    public ModelAndView deletarUsuario(@PathVariable(name = "id") Long id) {
        ModelAndView mav = new ModelAndView("redirect:/usuarios");
        try{
            serviceUsuario.delete(id);
        }catch(Exception e){
            mav = new ModelAndView("redirect:/error_delete");
        }
        return mav;       
    }
    
    @RequestMapping("/deletarMorador/{id}")
    public ModelAndView deletarMorador(@PathVariable(name = "id") Long id) {
        ModelAndView mav = new ModelAndView("redirect:/moradores");
        serviceMorador.delete(id);
        return mav;       
    }
    
    @RequestMapping("/deletarUnidade/{id}")
    public ModelAndView deletarUnidade(@PathVariable(name = "id") Long id) {
        ModelAndView mav = new ModelAndView("redirect:/unidades");
        serviceUnidade.delete(id);
        return mav;       
    }
    
    @RequestMapping("/deletarVeiculo/{id}")
    public ModelAndView deletarVeiculo(@PathVariable(name = "id") Long id) {
        ModelAndView mav = new ModelAndView("redirect:/veiculos");
        serviceVeiculo.delete(id);
        return mav;       
    }
    
    
    // TODO: LOGIN
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView login(@RequestParam(name = "email") String email, @RequestParam(name = "senha") String senha){
        ModelAndView mav = new ModelAndView("home");
        List<Usuario> listUsuario = serviceUsuario.login(email, senha);
        return (listUsuario.size() > 0)? new ModelAndView("redirect:/usuarios") : new ModelAndView("index");   
    }
    
    
    // TODO: SALVAR
    @RequestMapping(value = "/cadastrar", method = RequestMethod.POST)
    public ModelAndView cadastrar(@ModelAttribute("usuario") Usuario usuario) {
        ModelAndView mav = new ModelAndView("redirect:/");
        usuario.setDt_cadastro(new Date());
        serviceUsuario.save(usuario);
        return mav;
    }
    
    
    // TODO: LOGOUT
    @RequestMapping("/logout")
    public ModelAndView logout(Model model){
        ModelAndView mav = new ModelAndView("redirect:/");
        return mav;   
    }
    
    
    // TODO: LISTAR
    @RequestMapping("/usuarios")
    public ModelAndView verUsuarios(Model model){
        ModelAndView mav = new ModelAndView("usuarios");
        model.addAttribute("listUsuario", serviceUsuario.listAll());
        return mav;
    }
    
    @RequestMapping("/veiculos")
    public ModelAndView verVeiculos(Model model){
        ModelAndView mav = new ModelAndView("veiculos");
        model.addAttribute("listVeiculo", serviceVeiculo.listAll());
        return mav;
    }
    
    @RequestMapping("/moradores")
    public ModelAndView verMorador(Model model){
        ModelAndView mav = new ModelAndView("moradores");
        model.addAttribute("listMorador", serviceMorador.listAll());
        return mav;
    }
    
    @RequestMapping("/unidades")
    public ModelAndView verUnidades(Model model){
        ModelAndView mav = new ModelAndView("unidades");
        model.addAttribute("listUnidade", serviceUnidade.listAll());
        return mav;
    }
}
