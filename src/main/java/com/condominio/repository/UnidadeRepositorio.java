package com.condominio.repository;

import com.condominio.model.Unidade;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface UnidadeRepositorio extends JpaRepository<Unidade, Long>{
    @Query(value="SELECT * FROM unidade u WHERE u.unidade IS NOT NULL ", nativeQuery = true)
    public List<Unidade> listPorUnidade(); 
}
