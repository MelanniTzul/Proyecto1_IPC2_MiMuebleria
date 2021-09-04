
package ObjetosMuebleria;


public class venta {
    private String Nombre_De_Usuario;
    private String Nombre;

    public venta() {
    }

    public venta(String Nombre_De_Usuario, String Nombre) {
        this.Nombre_De_Usuario = Nombre_De_Usuario;
        this.Nombre = Nombre;
    }

    public String getNombre_De_Usuario() {
        return Nombre_De_Usuario;
    }

    public void setNombre_De_Usuario(String Nombre_De_Usuario) {
        this.Nombre_De_Usuario = Nombre_De_Usuario;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }
    
    
}
