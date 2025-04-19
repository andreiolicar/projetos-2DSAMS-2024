package Calculadora;

import javax.swing.JOptionPane;

public class Principal {

    public static void main(String[] args) {
        Calculadora cal = new Calculadora();

        int op; // Declaração da varável de opções

        do { // Início do loop do-while
            // Apresentação e leitura do menu opções
            op = Integer.parseInt(JOptionPane.showInputDialog("Digite: " + "\n"
                    + "1 - Soma" + "\n"
                    + "2 - Subtração" + "\n"
                    + "3 - Multiplicação" + "\n"
                    + "4 - Divisão" + "\n"
                    + "0 - Sair"));

            switch (op) {
                case 1:
                    cal.somar();
                    break;
                case 2:
                    double num1Sub = Double.parseDouble(JOptionPane.showInputDialog("Insira o primeiro número:"));
                    double num2Sub = Double.parseDouble(JOptionPane.showInputDialog("Insira o segundo número:"));
                    cal.subtrair(num1Sub, num2Sub);
                    break;
                case 3:
                    double resultadoMult = cal.multiplicar();
                    JOptionPane.showMessageDialog(null, "Resultado da Multiplicação: " + resultadoMult);
                    break;
                case 4:
                    double num1Div = Double.parseDouble(JOptionPane.showInputDialog("Insira o numerador:"));
                    double num2Div = Double.parseDouble(JOptionPane.showInputDialog("Insira o denominador:"));
                    double resultadoDiv = cal.dividir(num1Div, num2Div);
                    if (!Double.isNaN(resultadoDiv)) {
                        JOptionPane.showMessageDialog(null, "Resultado da Divisão: " + resultadoDiv);
                    }
                    break;
                case 0:
                    JOptionPane.showMessageDialog(null, "Finalizando Programa...");
                    break;
                default:
                    JOptionPane.showMessageDialog(null, "Opção inválida!");
            }
        } while (op != 0); // Repete se a opção é diferente de zero
    }
}
