package CalculadoraIMC;

import javax.swing.JOptionPane;

public class CalculadoraIMC {

    // Atributos
    private double imc;
    private String classificacao;

    // Construtores e Inicialização
    public CalculadoraIMC() {
        this(0, "");
    }

    public CalculadoraIMC(double imc, String classificacao) {
        this.imc = imc;
        this.classificacao = classificacao;
    }

    // Getters e Setters
    public double getImc() {
        return imc;
    }

    public void setImc(double imc) {
        this.imc = imc;
    }

    public String getClassificacao() {
        return classificacao;
    }

    public void setClassificacao(String classificacao) {
        this.classificacao = classificacao;
    }

    // Métodos Específicos
    public double calcularIMC(double altura, double peso) {
        if (altura <= 0) {
            JOptionPane.showMessageDialog(null, "Não é possível calcular o IMC, altura inválida!");
            this.setImc(Double.NaN); // return com NaN para indicar o erro
            return this.getImc();
        }
        this.setImc(peso / (altura * altura));
        return this.getImc();
    }

    public String classificarIMC(double imc) {
        String classificacao;
        if (Double.isNaN(imc)) {
            classificacao = "Erro no cálculo do IMC";
        } else if (imc < 18.5) {
            classificacao = "Abaixo do peso";
        } else if (imc < 25) {
            classificacao = "Peso normal";
        } else if (imc < 30) {
            classificacao = "Sobrepeso";
        } else if (imc < 35) {
            classificacao = "Obesidade grau I";
        } else if (imc < 40) {
            classificacao = "Obesidade grau II";
        } else {
            classificacao = "Obesidade grau III";
        }
        this.setClassificacao(classificacao);
        return this.getClassificacao();
    }
}
