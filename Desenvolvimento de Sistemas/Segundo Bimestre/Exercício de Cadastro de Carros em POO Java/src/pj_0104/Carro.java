
import javax.swing.JOptionPane;

public class Carro {

    private String marca;
    private String modelo;
    private int ano;
    private double preco;
    private String cor;

    public Carro() {
        this("", "", 0, "", "");
    }

    public Carro(String nome, String endereco, double salario, String telefone, String email) {
        this.marca = marca;
        this.modelo = modelo;
        this.ano = ano;
        this.preco = preco;
        this.cor = cor;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public void inputCarro() {
        setMarca(JOptionPane.showInputDialog("Digite a marca do carro:"));
        setModelo(JOptionPane.showInputDialog("Digite o modelo do carro:"));
        setAno(Integer.parseInt(JOptionPane.showInputDialog("Digite o ano do carro:")));
        setPreco(Double.parseDouble(JOptionPane.showInputDialog("Digite o preço do carro:")));
        setCor(JOptionPane.showInputDialog("Digite a cor do carro:"));
    }

    public void outputCarro() {
        System.out.println("Marca: " + getMarca());
        System.out.println("Modelo: " + getModelo());
        System.out.println("Ano: " + getAno());
        System.out.println("Preço: " + getPreco());
        System.out.println("Cor: " + getCor());
    }
}
