package Calculadora;

import javax.swing.JOptionPane;

public class Calculadora {

    // Atributos
    private double n1;
    private double n2;
    private double r;

    // Construtores e Inicialização
    public Calculadora() {
        this(0, 0, 0);
    }

    public Calculadora(double n1, double n2, double r) {
        this.n1 = n1;
        this.n2 = n2;
        this.r = r;
    }

    // Getters e Setters
    public double getN1() {
        return n1;
    }

    public void setN1(double n1) {
        this.n1 = n1;
    }

    public double getN2() {
        return n2;
    }

    public void setN2(double n2) {
        this.n2 = n2;
    }

    public double getR() {
        return r;
    }

    public void setR(double r) {
        this.r = r;
    }

    // Métodos Específicos
    public void somar() {
        this.setN1(Double.parseDouble(JOptionPane.showInputDialog("Insira o primeiro número:")));
        this.setN2(Double.parseDouble(JOptionPane.showInputDialog("Insira o segundo número:")));
        this.setR(this.getN1() + this.getN2());
        JOptionPane.showMessageDialog(null, "Resultado da Soma: " + this.getR());
    }

    public void subtrair(double a, double b) {
        this.setN1(a);
        this.setN2(b);
        this.setR(this.getN1() - this.getN2());
        JOptionPane.showMessageDialog(null, "Resultado da Subtração: " + this.getR());
    }

    public double multiplicar() {
        this.setN1(Double.parseDouble(JOptionPane.showInputDialog("Insira o primeiro número:")));
        this.setN2(Double.parseDouble(JOptionPane.showInputDialog("Insira o segundo número:")));
        this.setR(this.getN1() * this.getN2());
        return this.getR();
    }

    public double dividir(double a, double b) {
        if (b == 0) {
            JOptionPane.showMessageDialog(null, "Erro! Divisão por zero não permitida.");
            return Double.NaN;
        }
        this.setR(a / b);
        return this.getR();
    }
}
