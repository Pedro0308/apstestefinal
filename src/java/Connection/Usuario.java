package Connection;

public class Usuario {
    
    private int cdUsuario;
    private String nomeUsuario;
    private String senhaUsuario;
    
    public Usuario(int cD, String nU , String sU){
        setCdUsuario(cD);
        setNomeUsuario(nU);
        setSenhaUsuario(sU);
    }

    public int getCdUsuario() {
        return cdUsuario;
    }

    public void setCdUsuario(int cdUsuario) {
        this.cdUsuario = cdUsuario;
    }

    public String getNomeUsuario() {
        return nomeUsuario;
    }

    public void setNomeUsuario(String nomeUsuario) {
        this.nomeUsuario = nomeUsuario;
    }

    public String getSenhaUsuario() {
        return senhaUsuario;
    }

    public void setSenhaUsuario(String senhaUsuario) {
        this.senhaUsuario = senhaUsuario;
    }
     
    
}
