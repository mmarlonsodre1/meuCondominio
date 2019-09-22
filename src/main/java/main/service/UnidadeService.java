package main.service;

import main.model.Unidade;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import main.repository.UnidadeRepositorio;

@Service
@Transactional
public class UnidadeService {
    @Autowired
    private UnidadeRepositorio repoUnidade;
    
    public List<Unidade> listAll(){
        return repoUnidade.findAll();
    }
    
    public List<Unidade> listUnidades(){
        return repoUnidade.listPorUnidade();
    }
    
    public void save(Unidade unidade){
        repoUnidade.save(unidade);
    }
    
    public Unidade get(Long id){
        return repoUnidade.findById(id).get();
    }
        
    public void delete(Long id){
        repoUnidade.deleteById(id);  
    }
    
    public void alterarUnidade(String proprietario, String cpf, String telefone, String status, Long id){
        repoUnidade.alterar(proprietario, cpf, telefone, status, id);
    }
}
