package com.condominio.service;

import com.condominio.model.Unidade;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.condominio.repository.UnidadeRepositorio;

@Service
@Transactional
public class UnidadeService {
    @Autowired
    private UnidadeRepositorio repo;
    
    public List<Unidade> listAll(){
        return repo.findAll();
    }
    
    public List<Unidade> listUnidades(){
        return repo.listPorUnidade();
    }
    
    public void save(Unidade unidade){
        repo.save(unidade);
    }
    
    public Unidade get(Long id){
        return repo.findById(id).get();
    }
        
    public void delete(Long id){
        repo.deleteById(id);  
    }
}
