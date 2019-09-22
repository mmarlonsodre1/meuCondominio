package main.repository;

import main.model.Unidade;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface UnidadeRepositorio extends JpaRepository<Unidade, Long>{
    @Query(value="SELECT * FROM unidade u WHERE u.unidade IS NOT NULL ", nativeQuery = true)
    public List<Unidade> listPorUnidade(); 
    
    @Modifying 
    @Query(value="Update unidade SET proprietario=:proprietario, cpf=:cpf, telefone=:telefone, status=:status where id = :id", nativeQuery = true)
    public void alterar(@Param("proprietario") String proprietario, @Param("cpf") String cpf, 
            @Param("telefone") String telefone, @Param("status") String status, @Param("id") Long id); 
}
