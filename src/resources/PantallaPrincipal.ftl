
<html>
    <head>
        <title>"Ventana Principal del sistema de estudiantes."</title>
        
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        </head>
    <body>
        <h1>
            ${mensaje}
        </h1>
        
        <form action="/verEstudiantes">
            <input type="submit" name="Ver Estudiantes" value="Ver"> <br>
          
          </form>
            <form action="/nuevoEstudiante">
            <input type="submit" name="Agregar nuevo estudiante" value="Agregar"> <br>
          
          </form>
        
         <form action="/actualizarEstudiante">
            <input type="submit" name="Actualizar estudiante" value="Actualizar"> <br>
          
          </form>
        </body>
    </html>
