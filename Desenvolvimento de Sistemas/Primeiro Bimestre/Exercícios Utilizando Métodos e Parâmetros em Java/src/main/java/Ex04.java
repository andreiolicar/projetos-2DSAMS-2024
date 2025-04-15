
import javax.swing.JOptionPane; // Importa a biblioteca JOptionPane

public class Ex04 {

    public static void main(String[] args) { // Método principal, onde o programa começa

        while (true) { // Loop infinito, repete até que o usuário escolha "Sair"
            int opcao = exibirMenu(); // Exibe o menu e pega a escolha do usuário

            if (opcao == 0) { // Se o usuário escolher "Sair"
                break; // Sai do loop e termina o programa
            }

            realizarCalculo(opcao); // Realiza o cálculo correspondente à opção
        }
    }

    static int exibirMenu() { // Método para exibir o menu de opções
        String opcaoStr = JOptionPane.showInputDialog("Escolha uma opção:\n" // Cria uma String com as opções do menu e pega a opção digitada pelo usuário
                + "1 - Soma\n"
                + "2 - Subtração\n"
                + "3 - Divisão\n"
                + "4 - Multiplicação\n"
                + "5 - Resto da Divisão\n"
                + "6 - Dobro\n"
                + "7 - Quadrado\n"
                + "8 - Cubo\n"
                + "9 - Raiz Quadrada\n"
                + "0 - Sair");
        return Integer.parseInt(opcaoStr); // Converte a opção para inteiro e retorna
    }

    static void realizarCalculo(int opcao) { // Método para realizar o cálculo escolhido pelo usuário
        double num1, num2, resultado; // Declara variáveis para os números e o resultado
        switch (opcao) { // Inicia um switch para escolher a operação
            case 1: // Soma
                num1 = lerNumero("Digite o primeiro número:"); // Pede o primeiro número
                num2 = lerNumero("Digite o segundo número:"); // Pede o segundo número
                resultado = num1 + num2; // Calcula a soma
                exibirResultado("Soma: " + resultado); // Exibe o resultado
                break;
            case 2: // Subtração
                num1 = lerNumero("Digite o primeiro número:"); // Pede o primeiro número
                num2 = lerNumero("Digite o segundo número:"); // Pede o segundo número
                resultado = num1 - num2; // Calcula a subtração
                exibirResultado("Subtração: " + resultado); // Exibe o resultado
                break;
            case 3: // Divisão
                num1 = lerNumero("Digite o primeiro número:"); // Pede o primeiro número
                num2 = lerNumero("Digite o segundo número:"); // Pede o segundo número
                if (num2 == 0) { // Verifica se o segundo número é zero
                    exibirResultado("Divisão por zero não permitida."); // Exibe mensagem de erro
                } else {
                    resultado = num1 / num2; // Calcula a divisão
                    exibirResultado("Divisão: " + resultado); // Exibe o resultado
                }
                break;
            case 4: // Multiplicação
                num1 = lerNumero("Digite o primeiro número:"); // Pede o primeiro número
                num2 = lerNumero("Digite o segundo número:"); // Pede o segundo número
                resultado = num1 * num2; // Calcula a multiplicação
                exibirResultado("Multiplicação: " + resultado); // Exibe o resultado
                break;
            case 5: // Resto da Divisão
                num1 = lerNumero("Digite o primeiro número:"); // Pede o primeiro número
                num2 = lerNumero("Digite o segundo número:"); // Pede o segundo número
                if (num2 == 0) { // Verifica se o segundo número é zero
                    exibirResultado("Divisão por zero não permitida."); // Exibe mensagem de erro
                } else {
                    resultado = num1 % num2; // Calcula o resto da divisão
                    exibirResultado("Resto da Divisão: " + resultado); // Exibe o resultado
                }
                break;
            case 6: // Dobro
                num1 = lerNumero("Digite um número:"); // Pede um número
                resultado = num1 * 2; // Calcula o dobro
                exibirResultado("Dobro: " + resultado); // Exibe o resultado
                break;
            case 7: // Quadrado
                num1 = lerNumero("Digite um número:"); // Pede um número
                resultado = num1 * num1; // Calcula o quadrado
                exibirResultado("Quadrado: " + resultado); // Exibe o resultado
                break;
            case 8: // Cubo
                num1 = lerNumero("Digite um número:"); // Pede um número
                resultado = num1 * num1 * num1; // Calcula o cubo
                exibirResultado("Cubo: " + resultado); // Exibe o resultado
                break;
            case 9: // Raiz Quadrada
                num1 = lerNumero("Digite um número:"); // Pede um número
                if (num1 < 0) { // Verifica se o número é negativo
                    exibirResultado("Raiz quadrada de número negativo não permitida."); // Exibe mensagem de erro
                } else {
                    resultado = Math.sqrt(num1); // Calcula a raiz quadrada
                    exibirResultado("Raiz Quadrada: " + resultado); // Exibe o resultado
                }
                break;
            default: // Opção inválida
                exibirResultado("Opção inválida."); // Exibe mensagem de erro
                break;
        }
    }

    static double lerNumero(String mensagem) { // Método para ler um número do usuário
        String input = JOptionPane.showInputDialog(mensagem); // Exibe a mensagem e pega o número digitado
        return Double.parseDouble(input); // Converte para double e retorna
    }

    static void exibirResultado(String mensagem) { // Método para exibir o resultado
        JOptionPane.showMessageDialog(null, mensagem); // Exibe a mensagem numa caixa de diálogo
    }
}
