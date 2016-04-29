

<!DOCTYPE html>
<html>
    <head>
        <title>Borrar Estudiante</title>
        <meta charset="">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="/assets/css/bootstrap.min.css" rel="stylesheet" >
        </head>
    <body>
        <div class="container"> 

              <#include "nav.ftl">
        </div>
        <#if agregado>
                <div class="alert alert-success"  role="alert">
                    El Estudiante ${nombreEstudiante} Ha sido agregado correctamente
                    </div>

        <#else>
        <div>  El Estudiante no ha  sido agregado.
            </div>
        </#if>
        
        
        <script src="/assets/js/jquery-1.12.3.min.js" > </script>
    <script src="/assets/js/bootstrap.min.js" > </script>
        </body>
    </html>
