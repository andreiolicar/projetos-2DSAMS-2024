
public class Usuario {

    // Atributos
    private String nome;
    private String email;
    private String login;
    private String senha;

    // Construtores
    // Inicializa os atributos vazios
    public Usuario() {
        this("", "", "", "");
    }

    // Inicializa os atributos com valores passados por parametro
    public Usuario(String email, String login, String nome, String senha) {
        this.email = email;
        this.login = login;
        this.nome = nome;
        this.senha = senha;
    }
    
    // Getters e Setters
    public String getNome() {
        return nome;
    }
    
    public void setNome (String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
    
    public void provarExistencia() {
        System.out.println("Oi, eu existo!");
    }
}
