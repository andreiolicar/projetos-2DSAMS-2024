import javax.swing.JOptionPane; // Importa a biblioteca JOptionPane

public class ExExtra {

    public static void main(String[] args) { // Método principal, onde o programa começa

        while (true) { // Loop infinito, repete até que o usuário escolha "Sair"
            int opcao = exibirMenu(); // Chama a função exibirMenu para mostrar o menu e pega a escolha do usuário

            if (opcao == 0) { // Se o usuário escolher "Sair"
                break; // Sai do loop e termina o programa
            }

            realizarConversao(opcao); // Chama a função realizarConversao para executar a conversão escolhida
        }
    }

    public static int exibirMenu() { // Método para exibir o menu de opções
        String opcaoStr = JOptionPane.showInputDialog("Escolha uma opção:\n" // Cria uma String com as opções do menu e pega a opção que o usuário digitou
                + "1 - Celsius para Fahrenheit\n"
                + "2 - Fahrenheit para Celsius\n"
                + "0 - Sair");
        return Integer.parseInt(opcaoStr); // Converte a opção para inteiro e retorna
    }

    public static void realizarConversao(int opcao) { // Método para realizar a conversão escolhida
        double temperatura; // Declara a variável para armazenar a temperatura
        double resultado; // Declara a variável para armazenar o resultado da conversão

        switch (opcao) { // Inicia um switch para escolher a operação
            case 1: // Celsius para Fahrenheit
                temperatura = Double.parseDouble(JOptionPane.showInputDialog("Insira a temperatura em Celsius:")); // Pede a temperatura em Celsius
                resultado = converterCParaF(temperatura); // Chama a função converterCParaF para converter para Fahrenheit
                JOptionPane.showMessageDialog(null, "Temperatura em Fahrenheit: " + resultado); // Exibe o resultado
                break;
            case 2: // Fahrenheit para Celsius
                temperatura = Double.parseDouble(JOptionPane.showInputDialog("Insira a temperatura em Fahrenheit:")); // Pede a temperatura em Fahrenheit
                resultado = converterFParaC(temperatura); // Chama a função converterFParaC para converter para Celsius
                JOptionPane.showMessageDialog(null, "Temperatura em Celsius: " + resultado); // Exibe o resultado
                break;
            default: // Opção inválida
                JOptionPane.showMessageDialog(null, "Opção inválida."); // Exibe mensagem de erro
                break;
        }
    }

    public static double converterCParaF(double c) { // Método para converter Celsius para Fahrenheit
        return (c * 9 / 5) + 32; // Retorna a temperatura em Fahrenheit
    }

    public static double converterFParaC(double f) { // Método para converter Fahrenheit para Celsius
        return (f - 32) * 5 / 9; // Retorna a temperatura em Celsius
    }
}