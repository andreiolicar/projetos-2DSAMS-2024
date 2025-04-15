
import javax.swing.JOptionPane;

public class ComparacaoPrecos {

    public static void main(String[] args) {
        double preco1 = Double.parseDouble(JOptionPane.showInputDialog("Insira o primeiro preço do produto (em Reais): "));
        double preco2 = Double.parseDouble(JOptionPane.showInputDialog("Insira o segundo preço do produto (em Reais): "));
        double preco3 = Double.parseDouble(JOptionPane.showInputDialog("Insira o terceiro preço do produto (em Reais): "));
        double preco4 = Double.parseDouble(JOptionPane.showInputDialog("Insira o quarto preço do produto (em Reais): "));

        double precoMedio = precoMedio(preco1, preco2, preco3, preco4);
        double maiorPreco = precoMaior(preco1, preco2, preco3, preco4);
        double menorPreco = precoMenor(preco1, preco2, preco3, preco4);

        JOptionPane.showMessageDialog(null, "A média dos preços é: R$ " + precoMedio + "\n O maior preço é: R$ " + maiorPreco + "\n O menor preço é: R$ " + menorPreco);
    }

    static double precoMedio(double p1, double p2, double p3, double p4) {
        return (p1 + p2 + p3 + p4) / 4;
    }

    static double precoMaior(double p1, double p2, double p3, double p4) {
        if (p1 >= p2 && p1 >= p3 && p1 >= p4) {
            return p1;
        } else if (p2 >= p1 && p2 >= p3 && p2 >= p4) {
            return p2;
        } else if (p3 >= p1 && p3 >= p2 && p3 >= p4) {
            return p3;
        } else if (p4 >= p1 && p4 >= p2 && p4 >= p3) {
            return p4;
        } else {
            return Double.NaN;
        }
    }

    static double precoMenor(double p1, double p2, double p3, double p4) {
        if (p1 <= p2 && p1 <= p3 && p1 <= p4) {
            return p1;
        } else if (p2 <= p1 && p2 <= p3 && p2 <= p4) {
            return p2;
        } else if (p3 <= p1 && p3 <= p2 && p3 <= p4) {
            return p3;
        } else if (p4 <= p1 && p4 <= p2 && p4 <= p3) {
            return p4;
        } else {
            return Double.NaN;
        }
    }
}