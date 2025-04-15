
import javax.swing.JOptionPane; // Importa a biblioteca JOptionPane

public class Ex01 {

    public static void main(String[] args) { // Método principal, onde o programa começa

        String nome = JOptionPane.showInputDialog("Digite o nome do aluno:"); // Pede o nome do aluno e guarda numa String
        double nota1 = lerNota(); // Chama a função lerNota para pegar a primeira nota e guarda em nota1
        double nota2 = lerNota(); // Chama a função lerNota para pegar a segunda nota e guarda em nota2
        double media = calcularMedia(nota1, nota2); // Chama a função calcularMedia para calcular a média e guarda em media

        JOptionPane.showMessageDialog(null, "Média do aluno " + nome + ": " + media); // Exibe a média do aluno numa caixa de diálogo

        if (media >= 7.0) { // Verifica se a média é maior ou igual a 7.0
            JOptionPane.showMessageDialog(null, "Aluno aprovado!"); // Se for, exibe que o aluno foi aprovado
        } else { // Se a média for menor que 7.0
            JOptionPane.showMessageDialog(null, "Aluno reprovado."); // Exibe que o aluno foi reprovado
        }
    }

    static double lerNota() { // Método para ler uma nota do aluno
        String input = JOptionPane.showInputDialog("Digite a nota:"); // Pede a nota e guarda numa String
        return Double.parseDouble(input); // Converte a String para double e retorna a nota
    }

    static double calcularMedia(double nota1, double nota2) { // Método para calcular a média de duas notas
        return (nota1 + nota2) / 2; // Retorna a média das duas notas
    }
}
