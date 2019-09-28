package main.service;

import main.model.Morador;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import main.repository.MoradorRepositorio;

@Service
@Transactional
public class MoradorService {
    @Autowired
    private MoradorRepositorio repoMorador;
    
    public List<Morador> listAll(){
        return repoMorador.findAll();
    }
    
    public void save(Morador morador){
        repoMorador.save(morador);
    }
    
    public Morador get(Long id){
        return repoMorador.findById(id).get();
    }
        
    public void delete(Long id){
        repoMorador.deleteById(id);  
    }
    
    public void alterarMorador(String nome, String cpf, String rg, 
            String email, String telefone, Long id_unidade, Long id){
        repoMorador.alterar(nome, cpf, rg, email, telefone, id_unidade, id);
    }
}
