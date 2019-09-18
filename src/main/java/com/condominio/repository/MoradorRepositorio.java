package com.condominio.repository;

import com.condominio.model.Morador;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MoradorRepositorio extends JpaRepository<Morador, Long>{
}
