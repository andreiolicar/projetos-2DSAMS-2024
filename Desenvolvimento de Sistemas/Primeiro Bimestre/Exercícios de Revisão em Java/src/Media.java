
import javax.swing.JOptionPane; // Importa a classe JOptionPane para exibição de diálogos gráficos

public class Media { // Declaração da classe principal do programa

    public static void main(String[] args) { // Método principal onde o programa é executado

        String nomeAluno = JOptionPane.showInputDialog("Olá, aluno! Seja bem vindo ao sistema de cálculos de notas de matemática! \n Insira seu nome completo: "); // String desejando boas vindas e solicitando que o usuário digite o seu nome completo

        String n1Str = JOptionPane.showInputDialog("Insira sua primeira nota: "); // String solicitando que o usuário insira sua primeira nota
        int n1 = Integer.parseInt(n1Str); // Conversão do dado de "string" para "int" e armazenamento em uma variável "n1"

        String n2Str = JOptionPane.showInputDialog("Insira sua segunda nota: ");  // String solicitando que o usuário insira sua segunda nota
        int n2 = Integer.parseInt(n2Str); // Conversão do dado de "string" para "int" e armazenamento em uma variável "n2"

        String n3Str = JOptionPane.showInputDialog("Insira sua terceira nota: ");  // String solicitando que o usuário insira sua terceira nota
        int n3 = Integer.parseInt(n3Str); // Conversão do dado de "string" para "int" e armazenamento em uma variável "n3"

        String n4Str = JOptionPane.showInputDialog("Insira sua quarta nota: ");  // String solicitando que o usuário insira sua quarta nota
        int n4 = Integer.parseInt(n4Str); // Conversão do dado de "string" para "int" e armazenamento em uma variável "n4"

        int media = (n1 + n2 + n3 + n4) / 4; // Variável "int" chamada "media" que irá calcular e armazenar a média das quatro notas

        JOptionPane.showMessageDialog(null, nomeAluno + ", a média das suas notas de matématica é: " + media); // Apresentação dessa média de notas ao usuário
    }
}
