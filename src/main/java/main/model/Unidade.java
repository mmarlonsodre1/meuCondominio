package main.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "unidade")
public class Unidade implements Serializable {
    private Long id;
    private String unidade_name;
    private String proprietario;
    private String cpf;
    private String telefone;
    private String status;

    public Unidade() {
    }

    public Unidade(Long id, String unidade_name, String proprietario, String cpf, String telefone, String status) {
        this.id = id;
        this.unidade_name = unidade_name;
        this.proprietario = proprietario;
        this.cpf = cpf;
        this.telefone = telefone;
        this.status = status;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Column(nullable = true)
    public String getUnidade_name() {
        return unidade_name;
    }

    public void setUnidade_name(String unidade_name) {
        this.unidade_name = unidade_name;
    }

    @Column(nullable = true)
    public String getProprietario() {
        return proprietario;
    }

    public void setProprietario(String proprietario) {
        this.proprietario = proprietario;
    }

    @Column(nullable = true)
    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    @Column(nullable = true)
    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    @Column(nullable = true)
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    
}
