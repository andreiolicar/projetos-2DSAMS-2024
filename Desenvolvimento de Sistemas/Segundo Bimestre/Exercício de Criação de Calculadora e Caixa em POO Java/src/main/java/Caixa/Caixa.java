package Caixa;

import javax.swing.JOptionPane;

public class Caixa {

    // Atributo
    private double saldo;

    // Construtores
    // Inicializando o atributo zerado
    public Caixa() {
        this(0);
    }

    public Caixa(double saldo) {
        this.saldo = saldo;
    }

    // Getter e Setter
    public double getSaldo() {
        return saldo;
    }

    public void setSaldo(double saldo) {
        this.saldo = saldo;
    }

    // Métodos específicos da classe
    public void entrar() {
        // Lê um valor, converte de String para double e atribui a variável o valor
        double valor = Double.parseDouble(JOptionPane.showInputDialog("Digite o valor da entrada:"));
        // Soma o conteúdo do atributo saldo com a variável valor e passa o resultado por parâmetro para o método setSaldo()
        this.setSaldo(this.saldo + valor);
    }

    public void retirar() {
        // Lê um valor, converte de String para double e atribui a variável o valor
        double valor = Double.parseDouble(JOptionPane.showInputDialog("Digite o valor da retirada:"));
        // Subtrai o conteúdo do atributo saldo com a variável valor e passa o resultado por parâmetro para o método setSaldo()
        this.setSaldo(this.saldo - valor);
    }
}
