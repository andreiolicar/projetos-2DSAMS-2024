
import javax.swing.JOptionPane; // Importa a biblioteca JOptionPane

public class Ex03 {

    public static void main(String[] args) { // Método principal, onde o programa começa

        char sexo = JOptionPane.showInputDialog("Digite o sexo (M/F):").charAt(0); // Pede o sexo (M ou F) e pega só o primeiro caractere
        double altura = Double.parseDouble(JOptionPane.showInputDialog("Digite a altura (em metros):")); // Pede a altura e transforma em double
        double pesoIdeal = calcularPesoIdeal(sexo, altura); // Chama a função pra calcular o peso ideal

        JOptionPane.showMessageDialog(null, "O seu peso ideal é: " + pesoIdeal); // Exibe o resultado numa janela
    }

    static double calcularPesoIdeal(double sexo, double altura) { // Método pra calcular o peso ideal

        if (sexo == 'M' || sexo == 'm') { // Se o sexo for masculino (M ou m)
            return (72.7 * altura) - 58; // Calcula o peso ideal para homens
        } else if (sexo == 'F' || sexo == 'f') { // Se o sexo for feminino (F ou f)
            return (62.1 * altura) - 44.7; // Calcula o peso ideal para mulheres
        } else { // Se o sexo não for nem M nem F
            JOptionPane.showMessageDialog(null, "Sexo inválido. Use 'M' para masculino ou 'F' para feminino."); // Exibe mensagem de erro
            return Double.NaN; // Retorna NaN (Not a Number)
        }
    }
}
