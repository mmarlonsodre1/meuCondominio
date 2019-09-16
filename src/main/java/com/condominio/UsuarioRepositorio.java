package com.condominio;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 *
 * @author marlon
 */
public interface UsuarioRepositorio extends JpaRepository<Usuario, Long>{
   @Query(value="SELECT * FROM tb_usuarios where email= :email AND senha= :senha", nativeQuery = true)
    public Usuario login(@Param("email") String email, @Param("senha") String senha); 
}
