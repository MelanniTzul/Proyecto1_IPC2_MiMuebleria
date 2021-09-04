
package ObjetosMuebleria;


public class usuario {
    private  String Nombre_De_Usuario;
    private  String Password;
    private  String Tipo;
    private  String Estado;

    public usuario(String Nombre_De_Usuario, String Password, String Tipo, String Estado) {
        this.Nombre_De_Usuario = Nombre_De_Usuario;
        this.Password = Password;
        this.Tipo = Tipo;
        this.Estado = Estado;
    }

    public String getNombre_De_Usuario() {
        return Nombre_De_Usuario;
    }

    public void setNombre_De_Usuario(String Nombre_De_Usuario) {
        this.Nombre_De_Usuario = Nombre_De_Usuario;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getTipo() {
        return Tipo;
    }

    public void setTipo(String Tipo) {
        this.Tipo = Tipo;
    }

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }
  
 
}
