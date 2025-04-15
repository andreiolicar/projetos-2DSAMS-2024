
import javax.swing.JOptionPane; // Importa a classe JOptionPane para exibição de diálogos gráficos

public class CadastroAlunos { // Declaração da classe principal do programa

    public static void main(String[] args) { // Método principal onde o programa é executado
        String nomeCompleto = ""; // Declaração da variável "nomeCompleto" do tipo String, iniciada com uma string vazia
        String RM = "";  // Declaração da variável "RM" do tipo String, iniciada com uma string vazia
        String dataNascimento = ""; // Declaração da variável "dataNascimento" do tipo String, iniciada com uma string vazia
        String curso = ""; // Declaração da variável "curso" do tipo String, iniciada com uma string vazia
        String ano = ""; // Declaração da variável "ano" do tipo String, iniciada com uma string vazia

        int opcao = 0; // Declaração da variável "opcao" do tipo int, iniciada zerada

        while (opcao != 5) { // Laço de repetição que continua enquanto a opção for diferente de 5
            String menu = "Cadastro de Alunos\n\n" // String que armazena o menu de opções
                    + "1 - Cadastrar Aluno\n"
                    + "2 - Exibir Aluno\n"
                    + "3 - Editar Aluno\n"
                    + "4 - Excluir Aluno\n"
                    + "5 - Sair\n\n"
                    + "Digite a opção desejada:"; // Mensagem de solicitação para que o usuário escolha uma opção

            opcao = Integer.parseInt(JOptionPane.showInputDialog(menu)); // Exibe o menu e armazena a escolha do usuário na variável "opcao"

            switch (opcao) { // Estrutura de controle para a escolha do usuário
                case 1: // Caso a opção escolhida seja 1 (Cadastrar Aluno)
                    nomeCompleto = JOptionPane.showInputDialog("Digite o nome completo:"); // Solicita o nome completo do aluno
                    RM = JOptionPane.showInputDialog("Digite o RM:"); // Solicita o RM do aluno
                    dataNascimento = JOptionPane.showInputDialog("Digite a data de nascimento:"); // Solicita a data de nascimento do aluno
                    curso = JOptionPane.showInputDialog("Digite o curso:"); // Solicita o curso do aluno
                    ano = JOptionPane.showInputDialog("Digite o ano:"); // Solicita o ano do aluno
                    JOptionPane.showMessageDialog(null, "Aluno cadastrado com sucesso!"); // Exibe uma mensagem informando que o cadastro foi realizado
                    break; // Interrompe a execução do "switch" após esse caso
                case 2: // Caso a opção escolhida seja 2 (Exibir Aluno)
                    String dadosAluno = "Nome: " + nomeCompleto + "\n" // Prepara uma string com os dados do aluno para exibição
                            + "RM: " + RM + "\n"
                            + "Data de Nascimento: " + dataNascimento + "\n"
                            + "Curso: " + curso + "\n"
                            + "Ano: " + ano;
                    JOptionPane.showMessageDialog(null, dadosAluno); // Exibe os dados do aluno
                    break; // Interrompe a execução do "switch" após esse caso
                case 3: // Caso a opção escolhida seja 3 (Editar Aluno)
                    nomeCompleto = JOptionPane.showInputDialog("Digite o novo nome completo:"); // Solicita um novo nome completo
                    RM = JOptionPane.showInputDialog("Digite o novo RM:"); // Solicita um novo RM
                    dataNascimento = JOptionPane.showInputDialog("Digite a nova data de nascimento:"); // Solicita uma nova data de nascimento
                    curso = JOptionPane.showInputDialog("Digite o novo curso:"); // Solicita um novo curso
                    ano = JOptionPane.showInputDialog("Digite o novo ano:"); // Solicita um novo ano
                    JOptionPane.showMessageDialog(null, "Aluno editado com sucesso!"); // Exibe uma mensagem informando que os dados do aluno foram editados
                    break; // Interrompe a execução do "switch" após esse caso
                case 4: // Caso a opção escolhida seja 4 (Excluir Aluno)
                    nomeCompleto = ""; // Limpa a variável "nomeCompleto"
                    RM = ""; // Limpa a variável "RM"
                    dataNascimento = ""; // Limpa a variável "dataNascimento"
                    curso = ""; // Limpa a variável "curso"
                    ano = ""; // Limpa a variável "ano"
                    JOptionPane.showMessageDialog(null, "Aluno excluído com sucesso!"); // Exibe uma mensagem informando que os dados do aluno foram excluídos
                    break; // Interrompe a execução do "switch" após esse caso
                case 5: // Caso a opção escolhida seja 5 (Sair)
                    JOptionPane.showMessageDialog(null, "Saindo do programa..."); // Exibe uma mensagem informando que o programa está sendo encerrado
                    break; // Interrompe a execução do "switch" após esse caso
                default: // Caso a opção escolhida não seja válida
                    JOptionPane.showMessageDialog(null, "Opção inválida!"); // Exibe uma mensagem informando que a opção é inválida
            }
        }
    }
}
