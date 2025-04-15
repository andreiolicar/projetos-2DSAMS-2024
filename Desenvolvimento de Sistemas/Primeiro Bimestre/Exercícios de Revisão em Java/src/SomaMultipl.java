
import javax.swing.JOptionPane; // Importa a classe JOptionPane para exibição de diálogos gráficos

public class SomaMultipl { // Declaração da classe principal do programa

    public static void main(String[] args) { // Método principal onde o programa é executado

        int i = 0, somaImpares = 0; // Declaração de variáveis "int", um para o laço de repetição for e outra para a soma dos números impares
        long produtoPares = 1; // Declaração de variável "long" para o produto dos números pares, pois não conseguimos armazenar o resultado em "int"

        for (i = 0; i <= 30; i++) {
            if (i % 2 == 0) { // Descobrir/ separar os números pares
                if (i != 0) { // Retirar o 0 da multiplicação, para que o resultado não seja zerado
                    produtoPares *= i; // Multiplicação dos produtos pares
                }
            } else { // Números não pares, ou seja, números impares
                somaImpares += i; // Soma de todos os números impares
            }

        }

        JOptionPane.showMessageDialog(null, "O produto dos números pares entre 0 e 30 é: " + produtoPares); // Mensagem de output apresentando o produto dos números pares
        JOptionPane.showMessageDialog(null, "A soma dos números ímpares entre 0 e 30 é: " + somaImpares); // Mensagem de output apresentando a soma dos os números impares
    }
}
