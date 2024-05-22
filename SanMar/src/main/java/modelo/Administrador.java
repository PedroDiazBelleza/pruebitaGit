
package modelo;

public class Administrador {
    //ATRIBUTOS ENCAPSULADOS
    private int codigoAdmin;
    private String privilegioAdmin;
    private String correoAdmin; 
    private String claveAdmin;
    private String celularAdmin;
    
    //CONSTRUCTOR PARAMETRIZADO
    public Administrador(int codigoAdmin, String privilegioAdmin, String correoAdmin, String claveAdmin, String celularAdmin) {
        this.codigoAdmin = codigoAdmin;
        this.privilegioAdmin = privilegioAdmin;
        this.correoAdmin = correoAdmin;
        this.claveAdmin = claveAdmin;
        this.celularAdmin = celularAdmin;
    }
    
    //CONSTRUCTOR SIN PARAMETROS
    public Administrador(){}
    
    //METODOS DE ACCESO
    public int getCodigoAdmin() {
        return codigoAdmin;
    }

    public void setCodigoAdmin(int codigoAdmin) {
        this.codigoAdmin = codigoAdmin;
    }

    public String getPrivilegioAdmin() {
        return privilegioAdmin;
    }

    public void setPrivilegioAdmin(String privilegioAdmin) {
        this.privilegioAdmin = privilegioAdmin;
    }

    public String getCorreoAdmin() {
        return correoAdmin;
    }

    public void setCorreoAdmin(String correoAdmin) {
        this.correoAdmin = correoAdmin;
    }

    public String getClaveAdmin() {
        return claveAdmin;
    }

    public void setClaveAdmin(String claveAdmin) {
        this.claveAdmin = claveAdmin;
    }

    public String getCelularAdmin() {
        return celularAdmin;
    }

    public void setCelularAdmin(String celularAdmin) {
        this.celularAdmin = celularAdmin;
    }
    
}
