package main.model;
import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "veiculo")
public class Veiculo implements Serializable {
    private Long id;
    private String placa;
    private String marca;
    private String modelo;
    private int ano;
    private String cor;
    private Date dt_cadastro;
    private Long id_unidade;

    public Veiculo() {
    }

    public Veiculo(Long id, String placa, String marca, String modelo, int ano, String cor, Date dt_cadastro, Long id_unidade) {
        this.id = id;
        this.placa = placa;
        this.marca = marca;
        this.modelo = modelo;
        this.ano = ano;
        this.cor = cor;
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
    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    @Column(nullable = true)
    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    @Column(nullable = true)
    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    @Column(nullable = true)
    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }

    @Column(nullable = true)
    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
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
