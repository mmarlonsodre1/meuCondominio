package com.condominio.service;

import com.condominio.model.Veiculo;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.condominio.repository.VeiculoRepositorio;
import com.condominio.repository.VeiculoRepositorio;

@Service
@Transactional
public class VeiculoService {
    @Autowired
    private VeiculoRepositorio repoVeiculo;
    
    public List<Veiculo> listAll(){
        return repoVeiculo.findAll();
    }
    
    public void save(Veiculo veiculo){
        repoVeiculo.save(veiculo);
    }
    
    public Veiculo get(Long id){
        return repoVeiculo.findById(id).get();
    }
        
    public void delete(Long id){
        repoVeiculo.deleteById(id);  
    }
}
