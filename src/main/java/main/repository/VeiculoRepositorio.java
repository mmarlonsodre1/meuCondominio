package main.repository;

import main.model.Veiculo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface VeiculoRepositorio extends JpaRepository<Veiculo, Long>{
    @Modifying 
    @Query(value="Update veiculo SET placa=:placa, marca=:marca, modelo=:modelo, ano=:ano, cor=:cor, id_unidade=:id_unidade where id = :id", nativeQuery = true)
    public void alterar(@Param("placa") String placa, @Param("marca") String marca, @Param("modelo") String modelo, 
            @Param("ano") int ano, @Param("cor") String cor, 
            @Param("id_unidade") Long id_unidade, @Param("id") Long id); 
}
