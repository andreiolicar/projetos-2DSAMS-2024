package Caixa;

import javax.swing.JOptionPane;

public class Principal {

    public static void main(String[] args) {
        Caixa cx1 = new Caixa(); // Instanciação do objeto cx1

        int op; // Declaração da varável de opções

        do { // Início do loop do-while
            // Apresentação e leitura do menu opções
            op = Integer.parseInt(JOptionPane.showInputDialog("Digite: " + "\n"
                    + "1 - Entrada" + "\n"
                    + "2 - Retirada" + "\n"
                    + "3 - Consultar Saldo" + "\n"
                    + "0 - Sair"));

            switch (op) {
                case 1:
                    cx1.entrar(); // Chamada ao método entrar do objeto cx1
                    break;
                case 2:
                    cx1.retirar();// Chamada ao método retirar do objeto cx1
                    break;
                case 3:
                    // Apresentação do conteúdo do atributo saldo
                    JOptionPane.showMessageDialog(null, "Saldo atual: " + cx1.getSaldo());
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
