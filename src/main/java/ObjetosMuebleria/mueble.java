
package ObjetosMuebleria;


public class mueble {
    private String Nombre;
    private int Precio;

    public mueble() {
    }

    public mueble(String Nombre, int Precio) {
        this.Nombre = Nombre;
        this.Precio = Precio;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public int getPrecio() {
        return Precio;
    }

    public void setPrecio(int Precio) {
        this.Precio = Precio;
    }
    
    
}
