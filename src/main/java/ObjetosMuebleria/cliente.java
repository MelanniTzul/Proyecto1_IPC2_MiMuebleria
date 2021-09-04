
package ObjetosMuebleria;


public class cliente {
    
    private int Nit;
    private String Nombre;
    private String Direccion;
    private String Municipio;
    private String Departamento;

    public cliente() {
    }

    public cliente(int Nit, String Nombre, String Direccion, String Municipio, String Departamento) {
        this.Nit = Nit;
        this.Nombre = Nombre;
        this.Direccion = Direccion;
        this.Municipio = Municipio;
        this.Departamento = Departamento;
    }

    public int getNit() {
        return Nit;
    }

    public void setNit(int Nit) {
        this.Nit = Nit;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public String getMunicipio() {
        return Municipio;
    }

    public void setMunicipio(String Municipio) {
        this.Municipio = Municipio;
    }

    public String getDepartamento() {
        return Departamento;
    }

    public void setDepartamento(String Departamento) {
        this.Departamento = Departamento;
    }
    
            
    
}
