/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.condominio.model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "morador")
public class Morador implements Serializable {
    private Long id;
    private String nome;
    private String cpf;
    private String rg;
    private Date dt_nascimento;
    private String email;
    private String telefone;
    private Date dt_cadastro;
    private Long id_unidade;

    public Morador() {
    }

    public Morador(Long id, String nome, String cpf, String rg, Date dt_nascimento, String email, String telefone, Date dt_cadastro, Long id_unidade) {
        this.id = id;
        this.nome = nome;
        this.cpf = cpf;
        this.rg = rg;
        this.dt_nascimento = dt_nascimento;
        this.email = email;
        this.telefone = telefone;
        this.dt_cadastro = dt_cadastro;
        this.id_unidade = id_unidade;
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
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    @Column(nullable = true)
    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    @Column(nullable = true)
    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    @Column(nullable = true)
    public Date getDt_nascimento() {
        return dt_nascimento;
    }

    public void setDt_nascimento(Date dt_nascimento) {
        this.dt_nascimento = dt_nascimento;
    }

    @Column(nullable = true)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Column(nullable = true)
    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    @Column(nullable = true)
    public Date getDt_cadastro() {
        return dt_cadastro;
    }

    public void setDt_cadastro(Date dt_cadastro) {
        this.dt_cadastro = dt_cadastro;
    }

    @Column(nullable = true)
    public Long getId_unidade() {
        return id_unidade;
    }

    public void setId_unidade(Long id_unidade) {
        this.id_unidade = id_unidade;
    }
}
