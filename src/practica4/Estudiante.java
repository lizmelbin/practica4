/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package practica4;

/**
 *
 * @author ltejada
 */
public class Estudiante {
    
    
    private int matricula;
    private String nombre;

    private static int ID=1;
    private String apellido;
    private String telefono;

    public int getMyId() {
        return myId;
    }
    private final int myId=ID;
    
    public Estudiante(int matricula, String nombre, String apellido, String telefono) {
        this.matricula = matricula;
        this.nombre = nombre;
        this.apellido = apellido;
        this.telefono = telefono;
        ID++;
    }
    
    public Estudiante(int matricula, String nombre, String apellido) {
        this.matricula = matricula;
        this.nombre = nombre;
        this.apellido = apellido;
        ID++;
    }

    public int getMatricula() {
        return matricula;
    }

    public void setMatricula(int matricula) {
        this.matricula = matricula;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getTelefono() {
        return telefono==null?"":telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
      public String getMatriculaString()
      {
          return (matricula+"").replace(",","");
      }
    
}
