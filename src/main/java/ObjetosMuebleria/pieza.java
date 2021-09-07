
package ObjetosMuebleria;



public class pieza {
    private int Codigo_Pieza;
    private String Tipo;
    private double Costo;

    public pieza() {
        
    }

    public pieza(int Codigo_Pieza, String Tipo, double Costo) {
        this.Codigo_Pieza = Codigo_Pieza;
        this.Tipo = Tipo;
        this.Costo = Costo;
    }

    public int getCodigo_Pieza() {
        return Codigo_Pieza;
    }

    public void setCodigo_Pieza(int Codigo_Pieza) {
        this.Codigo_Pieza = Codigo_Pieza;
    }

    public String getTipo() {
        return Tipo;
    }

    public void setTipo(String Tipo) {
        this.Tipo = Tipo;
    }

    public double getCosto() {
        return Costo;
    }

    public void setCosto(double Costo) {
        this.Costo = Costo;
    }
    
    
    
    
  
    
}
