
import javax.swing.JOptionPane; // Importa a biblioteca JOptionPane

public class Ex05 {

    public static void main(String[] args) { // Método principal, onde o programa começa

        double altura = Double.parseDouble(JOptionPane.showInputDialog("Insira a altura do triângulo:")); // Pede a altura do triângulo e transforma em double
        double base = Double.parseDouble(JOptionPane.showInputDialog("Insira a base do triângulo:")); // Pede a base do triângulo e transforma em double

        double hipotenusa = hipotenusa(altura, base); // Chama o método hipotenusa para calcular a hipotenusa e guarda o resultado

        JOptionPane.showMessageDialog(null, "O valor da hipotenusa do triângulo é: " + hipotenusa); // Mostra o resultado numa caixa de diálogo
    }

    static double hipotenusa(double altura, double base) { // Método para calcular a hipotenusa

        double hipotenusaQuadrado = (base * base) + (altura * altura); // Calcula o quadrado da hipotenusa
        double hipotenusa = Math.sqrt(hipotenusaQuadrado); // Calcula a hipotenusa usando a raiz quadrada

        return hipotenusa; // Retorna o valor da hipotenusa
    }
}
