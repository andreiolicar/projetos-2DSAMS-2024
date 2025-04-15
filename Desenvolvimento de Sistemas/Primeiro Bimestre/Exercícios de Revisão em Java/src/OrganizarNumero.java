
import javax.swing.JOptionPane; // Importa a classe JOptionPane para exibição de diálogos gráficos

public class OrganizarNumero { // Declaração da classe principal do programa

    public static void main(String[] args) { // Método principal onde o programa é executado

        String n1Str = JOptionPane.showInputDialog("Insira um primeiro número inteiro:"); // String solicitando para o usuário digitar um primeiro número inteiro
        int n1 = Integer.parseInt(n1Str); // Conversão de dado de "String" para "int" e atribuição em uma variável "n1"

        String n2Str = JOptionPane.showInputDialog("Insira um segundo número inteiro:"); // String solicitando para o usuário digitar um segundo número inteiro
        int n2 = Integer.parseInt(n2Str); // Conversão de dado de "String" para "int" e atribuição em uma variável "n2"

        String n3Str = JOptionPane.showInputDialog("Insira um terceiro número inteiro:"); // String solicitando para o usuário digitar um terceiro número inteiro
        int n3 = Integer.parseInt(n3Str); // Conversão de dado de "String" para "int" e atribuição em uma variável "n3"

        String mensagem = "Os números em ordem decrescente:\n"; // String "mensagem" com um título apresentando os números em ordem decrescente e quebrando uma linha "\n"

        if (n1 >= n2 && n1 >= n3) { // Condição "if" para descobrir se "n1" é maior ou igual a "n2" e "n3"
            if (n2 >= n3) { // Caso a condição anterior seja cumprida, outra condição "if" irá verificar se "n2" é maior ou igual a "n3", se for, iremos concatenar o resultado a string "mensagem"
                mensagem += n1 + " " + n2 + " " + n3; // Concatenação da string "mensagem" com os números em ordem decrescente após as verificações lógicas
            } else { // Caso "n2" não seja maior ou igual ao "n3", ou seja, ele é menor, logo iremos concatenar a string "mensagem" com os números em ordem decrescente
                mensagem += n1 + " " + n3 + " " + n2; // Concatenação da string "mensagem" com os números em ordem decrescente após as verificações lógicas
            }
        } else if (n2 >= n1 && n2 >= n3) { // Condição "else if", caso o "n1" não seja maior ou igual a "n2" e "n3", ela é executada e irá verificar se o "n2" é maior ou igual a "n1" e "n3"
            if (n1 >= n3) { // Caso a condição anterior seja cumprida, outra condição "if" irá verificar se "n1" é maior ou igual a "n3", se for, iremos concatenar o resultado a string "mensagem"
                mensagem += n2 + " " + n1 + " " + n3; // Concatenação da string "mensagem" com os números em ordem decrescente após as verificações lógicas
            } else { // Caso "n1" não seja maior ou igual ao "n3", ou seja, ele é menor, logo iremos concatenar a string "mensagem" com os números em ordem decrescente
                mensagem += n2 + " " + n3 + " " + n1; // Concatenação da string "mensagem" com os números em ordem decrescente após as verificações lógicas
            }
        } else {  // Condição "else" será executada, caso as condições "if" e "else if" anteriores não sejem cumpridas, ou seja, "n3" será maior ou igual a "n1" e "n2"
            if (n1 >= n2) { // Caso a condição anterior seja cumprida, outra condição "if" irá verificar se "n1" é maior ou igual a "n2", se for, iremos concatenar o resultado a string "mensagem"
                mensagem += n3 + " " + n1 + " " + n2; // Concatenação da string "mensagem" com os números em ordem decrescente após as verificações lógicas
            } else { // Caso "n1" não seja maior ou igual ao "n2", ou seja, ele é menor, logo iremos concatenar a string "mensagem" com os números em ordem decrescente
                mensagem += n3 + " " + n2 + " " + n1; // Concatenação da string "mensagem" com os números em ordem decrescente após as verificações lógicas
            }
        }

        JOptionPane.showMessageDialog(null, mensagem); // Mensagem de output com os resultados, após todas as verificações lógicas

    }
}
