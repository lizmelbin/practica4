
<!DOCTYPE html>
<html>
    <head>
        <title>Detalles de estudainte</title>
 
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        </head>
    <body>
<H3>
            <font color="green">
            Detalles del  estudiante:
            </font>
            </h3>

             <table>
                <tbody>
                        <tr> <th>Id:</th>  <td>${estudiante.getMyId()}</td></tr>
                                 <tr>  <th>Apellido:</th> <td>${estudiante.getApellido()}</td></tr>
                                <tr>   <th>Matricula:</th> <td>${estudiante.getMatricula()}</td></tr>
                                <tr>   <th>Nombre:</th> <td>${estudiante.getNombre()}</td></tr>
                                <tr>   <th>Telefono:</th> <td>${estudiante.getTelefono()}</td></tr>
                           <tr><td>    
                                <form action="/EditarEstudiante">
                  <input type="submit" name="id" value="Editar">
                  <input type="hidden"  value="${estudiante.getMyId()}" name="idEstudiante">
                
              </form></td><td>
                    <form action="/BorrarEstudiante">
                  <input type="submit" value="Borrar">
                
              </form></td></tr>
                        
                </tbody>
              </table>  
              

        
        </body>
    </html>
