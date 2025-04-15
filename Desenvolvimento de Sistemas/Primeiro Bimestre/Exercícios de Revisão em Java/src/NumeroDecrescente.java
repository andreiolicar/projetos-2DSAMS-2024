
import javax.swing.JOptionPane; // Importa a classe JOptionPane para exibição de diálogos gráficos

public class NumeroDecrescente { // Declaração da classe principal do programa

    public static void main(String[] args) { // Método principal onde o programa é executado

        String n1Str = JOptionPane.showInputDialog("Insira um número inteiro:"); // String solicitando ao usuário para digitar um número inteiro
        int n1 = Integer.parseInt(n1Str); // Conversão do dado de "string" para "int" e armazenamento em uma variável "n1"

        String mensagem = "Antecessores:\n"; // String "mensagem" com uma escrita "Antecessores" para um título e pulando uma linha "\n"

        while (n1 > 0) { // Laço de repetição "while" para realizar a condição enquanto "n1" foi maior que zero
            mensagem += "O antecessor de " + n1 + " é: " + (n1 - 1) + "\n"; // Concatenação de strings, com a string "mensagem"/ apresentação do número atual e seu antecessor
            n1--; // Iteração "n1" - 1
        } 

        JOptionPane.showMessageDialog(null, mensagem); // Apresentação da string concatenada "mensagem" que irá exibir todo o resultado do algoritmo
    }
}
