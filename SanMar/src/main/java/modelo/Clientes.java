
package modelo;

public class Clientes {
    //ATRIBUTOS ENCAPSULADOS
    private int codigoCli;
    private String nombreCli;
    private String apellidoCli;
    private String correoCli; 
    private String claveCli;
    private String celularCli;

    //CONSTRUCTOR PARAMETRIZADO
    public Clientes(int codigoCli, String nombreCli, String apellidoCli, String correoCli, String claveCli, String celularCli) {
        this.codigoCli = codigoCli;
        this.nombreCli = nombreCli;
        this.apellidoCli = apellidoCli;
        this.correoCli = correoCli;
        this.claveCli = claveCli;
        this.celularCli = celularCli;
    }
    
    //CONSTRUCTOR SIN PARAMETROS
    public Clientes(){}
    
    //METODOS DE ACCESO
    public int getCodigoCli() {
        return codigoCli;
    }

    public void setCodigoCli(int codigoCli) {
        this.codigoCli = codigoCli;
    }

    public String getNombreCli() {
        return nombreCli;
    }

    public void setNombreCli(String nombreCli) {
        this.nombreCli = nombreCli;
    }

    public String getApellidoCli() {
        return apellidoCli;
    }

    public void setApellidoCli(String apellidoCli) {
        this.apellidoCli = apellidoCli;
    }

    public String getCorreoCli() {
        return correoCli;
    }

    public void setCorreoCli(String correoCli) {
        this.correoCli = correoCli;
    }

    public String getClaveCli() {
        return claveCli;
    }

    public void setClaveCli(String claveCli) {
        this.claveCli = claveCli;
    }

    public String getCelularCli() {
        return celularCli;
    }

    public void setCelularCli(String celularCli) {
        this.celularCli = celularCli;
    }
 
}
