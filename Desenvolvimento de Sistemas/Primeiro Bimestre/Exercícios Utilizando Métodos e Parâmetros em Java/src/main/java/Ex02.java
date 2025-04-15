
import javax.swing.JOptionPane; // Importa a biblioteca JOptionPane

public class Ex02 {

    public static void main(String[] args) { // Método principal, onde o programa começa

        double n1 = Double.parseDouble(JOptionPane.showInputDialog("Insira o primeiro número: ")); // Pede o primeiro número e converte para double
        double n2 = Double.parseDouble(JOptionPane.showInputDialog("Insira o segundo número: ")); // Pede o segundo número e converte para double

        double diferenca = diferenca(n1, n2); // Chama a função 'diferenca' para calcular a diferença

        JOptionPane.showMessageDialog(null, "O resultado da diferença entre o maior e o menor número é: " + diferenca); // Exibe o resultado numa caixa de diálogo
    }

    static double diferenca(double n1, double n2) { // Método para calcular a diferença entre o maior e o menor número

        if (n1 >= n2) { // Se o primeiro número for maior ou igual ao segundo
            return n1 - n2; // Retorna a diferença entre o primeiro e o segundo número
        } else { // Se o segundo número for maior que o primeiro
            return n2 - n1; // Retorna a diferença entre o segundo e o primeiro número
        }
    }
}
