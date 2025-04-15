import javax.swing.JOptionPane; // Importa a classe JOptionPane para exibição de diálogos gráficos

public class CalculadoraImc { // Declaração da classe principal do programa

    public static void main(String[] args) { // Método principal onde o programa é executado
        String nome = JOptionPane.showInputDialog("Digite seu nome:"); // Solicita ao usuário que insira seu nome
        String pesoStr = JOptionPane.showInputDialog("Digite seu peso (em kg):"); // Solicita ao usuário que insira seu peso
        double peso = Double.parseDouble(pesoStr); // Converte o valor do peso (String) para o tipo double
        String alturaStr = JOptionPane.showInputDialog("Digite sua altura (em metros):"); // Solicita ao usuário que insira sua altura
        double altura = Double.parseDouble(alturaStr); // Converte o valor da altura (String) para o tipo double

        double imc = peso / (altura * altura); // Calcula o IMC utilizando a fórmula: peso / (altura * altura)

        String resultado = ("Olá, " + nome + "!\nSeu IMC é: " + imc + "\n"); // Cria uma string com uma mensagem com o nome do usuário e o valor do IMC

        if (imc < 18.5) { // Condição para verificar se o IMC é inferior a 18.5
            resultado += "Você está abaixo do peso ideal."; // Adiciona a mensagem para o IMC abaixo de 18.5
        } else if (imc < 25) { // Condição para verificar se o IMC é entre 18.5 e 24.9
            resultado += "Você está no peso ideal."; // Adiciona a mensagem para o IMC no peso ideal
        } else if (imc < 30) { // Condição para verificar se o IMC é entre 25 e 29.9
            resultado += "Você está com sobrepeso."; // Adiciona a mensagem para o IMC com sobrepeso
        } else { // Caso o IMC seja 30 ou mais
            resultado += "Você está com obesidade."; // Adiciona a mensagem para o IMC com obesidade
        }

        JOptionPane.showMessageDialog(null, resultado); // Exibe a mensagem final com o resultado do IMC e a classificação
    }
}

