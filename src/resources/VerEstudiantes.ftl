
<!DOCTYPE html>
<html>
    <head>
        <title>Listado de estudiantes</title>

        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="/assets/css/bootstrap.min.css" rel="stylesheet" >
        </head>
    <body>
        <div class="container"> 

            
            
            <#include "nav.ftl">
            
            
            <div class="panel panel-default">
                <div class="panel-heading"><font color="green">
                    <h3>Listado de estudiantes</h3>
                    </font></div>
                <div class="panel-body">
                    <div class="table-responsive">
                    <table class="table">
                        <thead>
                        <th>Id</th>
                        <th>Apellido</th>
                        <th>Matricula</th>
                        <th>Nombre</th>
                        <th>Telefono</th>
                        </thead>
                        <tbody>

           <#list estudiantes as estudiante>
                           
                            <tr>
                                <td>${estudiante.getMyId()}</td>
                                <td>${estudiante.getApellido()}</td>
                                <td>${estudiante.getMatriculaString()}</td>
                                <td>${estudiante.getNombre()}</td>
                                <td>${estudiante.getTelefono()}</td>
                                <td>
                               
                                   <button data-toggle="modal" onclick="verEstudiante(${estudiante.getMyId()});" class="btn btn-info"  >
                                       <span class="glyphicon glyphicon-eye-open"> 
                                                </span >
                                       
                                       </button>


                                    </td>
                               
                                <td>
                                    <form action="/EditarEstudiante">
                                        <input type="hidden" name="idEstudiante" value=${estudiante.getMyId()} >
                                        <input type="hidden" name="nuevo" value="false" >
                                        <button  name="" class="btn btn-success" >
                                            <span class=" glyphicon glyphicon-pencil"> 
                                                </span>
                                            </button>

                                        </form>
                                </td>    
                                <td>
                               
                                   <button data-toggle="modal" onclick=" myFunction(${estudiante.getMyId()});" class="btn btn-danger"  >
                                       <span class=" glyphicon glyphicon-remove"> 
                                                </span >
                                       
                                       </button>


                                    </td>
                                </tr>
            </#list>
                            </tbody>   
                        
                        </table>
                        </div >
                    </div>
                </div>


            </div>

               

        </body>

    <script src="/assets/js/jquery-1.12.3.min.js" > </script>
    <script src="/assets/js/bootstrap.min.js" > </script>
<script>
    
    
function myFunction(idEstudiante) {
    var desiciopn=confirm("Estas seguro lo deseas borrar?");
       // alert(idEstudiante);
            if(desiciopn){
                
                window.location.assign("/BorrarEstudiantes?&idEstudiante="+idEstudiante);
                }
}
</script>



<script>
    
    
function verEstudiante(idEstudiante) {
  
                
                window.location.assign("/EditarEstudiante?idEstudiante="+idEstudiante+"&ver=true&nuevo=false");
                
}
</script>

    </html>
