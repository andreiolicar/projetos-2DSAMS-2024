
import javax.swing.JOptionPane;

public class Pessoa {

    private String nome;
    private String endereco;
    private double salario;
    private String telefone;
    private String email;

    public Pessoa() {
        this("", "", 0, "", "");
    }

    public Pessoa(String nome, String endereco, double salario, String telefone, String email) {
        this.nome = nome;
        this.endereco = endereco;
        this.salario = salario;
        this.telefone = telefone;
        this.email = email;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public double getSalario() {
        return salario;
    }

    public void setSalario(double salario) {
        this.salario = salario;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void inputPessoa() {
        setNome(JOptionPane.showInputDialog("Digite o nome:"));
        setEndereco(JOptionPane.showInputDialog("Digite o endereço:"));
        setSalario(Double.parseDouble(JOptionPane.showInputDialog("Digite o salário:")));
        setTelefone(JOptionPane.showInputDialog("Digite o telefone:"));
        setEmail(JOptionPane.showInputDialog("Digite o email:"));
    }

    public void outputPessoa() {
        System.out.println("Nome: " + getNome());
        System.out.println("Endereço: " + getEndereco());
        System.out.println("Salário: " + getSalario());
        System.out.println("Telefone: " + getTelefone());
        System.out.println("Email: " + getEmail());
    }
}
