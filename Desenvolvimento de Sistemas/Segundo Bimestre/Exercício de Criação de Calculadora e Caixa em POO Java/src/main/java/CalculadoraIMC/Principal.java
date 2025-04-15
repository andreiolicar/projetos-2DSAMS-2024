package CalculadoraIMC;

import javax.swing.JOptionPane;

public class Principal {

    public static void main(String[] args) {
        CalculadoraIMC imc = new CalculadoraIMC();
        
        double peso = Double.parseDouble(JOptionPane.showInputDialog("Insira o seu peso (em kg):"));
        double altura = Double.parseDouble(JOptionPane.showInputDialog("Insira a sua altura (em metros):"));
        
        double resultado = imc.calcularIMC(altura, peso);
        
        String classificacaoResultado = imc.classificarIMC(resultado);
        
        if (!Double.isNaN(resultado)) {
            JOptionPane.showMessageDialog(null, String.format("Seu IMC é: " + resultado + "\n" + "Classificação: " + classificacaoResultado));
        }
    }
}
