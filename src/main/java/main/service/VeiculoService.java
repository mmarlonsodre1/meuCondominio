package main.service;

import main.model.Veiculo;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import main.repository.VeiculoRepositorio;

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
    
    public void alterarVeiculo(String placa, String marca, String modelo, 
            int ano, String cor, Long id_unidade, Long id){
        repoVeiculo.alterar(placa, marca, modelo, ano, cor, id_unidade, id);
    }
}
