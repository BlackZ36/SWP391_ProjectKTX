package Model;

public class Account {
    
    private Long idAccount;
    private String username;
    private Long idRole;
    private String password;
    private String status;

    // Constructors
    public Account() {
    }

    public Account(Long idAccount, String username, Long idRole, String password, String status) {
        this.idAccount = idAccount;
        this.username = username;
        this.idRole = idRole;
        this.password = password;
        this.status = status;
    }

    // Getters and Setters
    public Long getIdAccount() {
        return idAccount;
    }

    public void setIdAccount(Long idAccount) {
        this.idAccount = idAccount;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Long getIdRole() {
        return idRole;
    }

    public void setIdRole(Long idRole) {
        this.idRole = idRole;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}

