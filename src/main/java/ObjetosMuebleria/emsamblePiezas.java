
package ObjetosMuebleria;


public class emsamblePiezas {
    private String Mueble;
    private int Pieza;
    private int Cantidad;

    public emsamblePiezas() {
    }

    public emsamblePiezas(String Mueble, int Pieza, int Cantidad) {
        this.Mueble = Mueble;
        this.Pieza = Pieza;
        this.Cantidad = Cantidad;
    }

    public String getMueble() {
        return Mueble;
    }

    public void setMueble(String Mueble) {
        this.Mueble = Mueble;
    }

    public int getPieza() {
        return Pieza;
    }

    public void setPieza(int Pieza) {
        this.Pieza = Pieza;
    }

    public int getCantidad() {
        return Cantidad;
    }

    public void setCantidad(int Cantidad) {
        this.Cantidad = Cantidad;
    }
    
    
}
