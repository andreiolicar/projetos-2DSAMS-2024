
import javax.swing.JOptionPane; // Importa a classe JOptionPane para exibição de diálogos gráficos

public class TrocaNumero { // Declaração da classe principal do programa

    public static void main(String[] args) { // Método principal onde o programa é executado

        String numAString = JOptionPane.showInputDialog("Digite um primeiro número: "); // String solicitando para o usuário inserir um primeiro número
        int numA = Integer.parseInt(numAString); // Conversão de dado de "String" para "int" e armazenamento em uma variável "numA"

        String numBString = JOptionPane.showInputDialog("Digite um segundo número: "); // String solicitando para o usuário inserir um segundo número
        int numB = Integer.parseInt(numBString); // Conversão de dado de "String" para "int" e armazenamento em uma variável "numB"

        int troca = numA; // Criação de uma variável "int" chamada "troca" e atribuição de valor para "troca" de "numA"
        numA = numB; // Atribuição de valor para "numA" de "numB"
        numB = troca; // Atribuição de valor para "numB" de "troca"

        JOptionPane.showMessageDialog(null, "O valor do primeiro número após a troca é: " + numA); // Mensagem de output ao usuário, informando que o valor de "numA" após a troca é igual a "numB"
        JOptionPane.showMessageDialog(null, "O valor do segundo número a troca é: " + numB); // Mensagem de output ao usuário, informando que o valor de "numB" após a troca é igual a "numA"
    }
}
