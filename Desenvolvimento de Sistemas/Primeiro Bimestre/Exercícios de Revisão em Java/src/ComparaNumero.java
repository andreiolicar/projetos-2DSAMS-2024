
import javax.swing.JOptionPane; // Importa a classe JOptionPane para exibição de diálogos gráficos

public class ComparaNumero { // Declaração da classe principal do programa

    public static void main(String[] args) { // Método principal onde o programa é executado

        String n1Str = JOptionPane.showInputDialog("Digite um número inteiro: "); // String que solicita ao usuário inserir um número inteiro
        int n1 = Integer.parseInt(n1Str); // Conversão ddo dado de "string" para "int", armazenamento em uma variável int "n1"

        String n2Str = JOptionPane.showInputDialog("Digite um segundo número inteiro: "); // String que solicita ao usuário inserir um segundo número inteiro
        int n2 = Integer.parseInt(n2Str); // Conversão ddo dado de "string" para "int", armazenamento em uma variável int "n2"

        if (n1 == n2) { // Condicional para verificar se as variáveis "n1" e "n2" são iguais
            JOptionPane.showMessageDialog(null, "Os números são iguais!"); // Se forem, essa mensagem é exibida informando ao usuário
        } else { // Else para se as varáveis não forem iguais, ou seja, diferetentes
            JOptionPane.showMessageDialog(null, "Os números são diferentes!");// Se forem diferentes, essa mensagem é exibida informando ao usuário
        }
        
        if (n1 > n2) { // Condicional que verifica se a váriavel "n1" é maior que a "n2"
            JOptionPane.showMessageDialog(null, n1 + ", " + n2); // Caso a condição seja cumprida, essa mensagem é exibida, exibindo em forma decrescente, com o "n1" primeiro e o "n2" depois
        } else { // Else para se o "n2" foi maior que o "n1"
            JOptionPane.showMessageDialog(null, n2 + ", " + n1); // Caso a condição não seja cumprida, essa mensagem é exibida, exibindo em forma decrescente, com o "n2" primeiro e o "n1" depois
        }
    }
}
