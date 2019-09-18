package com.condominio.service;

import com.condominio.model.Morador;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.condominio.repository.MoradorRepositorio;

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
}
