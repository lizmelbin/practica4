
<!DOCTYPE html>
<html>
    <head>
        <title>Detalles de estudainte</title>

        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="/assets/css/bootstrap.min.css" rel="stylesheet" >
        </head>




    <div class="container"> 

           <#include "nav.ftl">





        <H3>
            <font color="green">
            Detalles del  estudiante:
            </font>
            </h3>

        <table class="table">
            <tbody>

                               <#if nuevo=="true">
            <form action="/agregarEstudiante">
                <tr> <th>Id:</th>  <td> <input type="text" name="id" value="" readonly></td></tr>
                <tr>  <th>Apellido:</th> <td><input type="text" name="apellido" value="" ></td></tr>
                <tr>   <th>Matricula:</th> <td><input type="number" name="matricula" value="" min="10000000" max="99999999"></td></tr>
                <tr>   <th>Nombre:</th> <td><input type="text" name="nombre" value=""></td></tr>
                <tr>   <th>Telefono:</th> <td><input type="text" name="telefono" value=""></td></tr>
                <tr><td>    

                            
                        <button  name="Guardar" class="btn btn-success" >
                                            <span class="glyphicon glyphicon-floppy-save"> 
                                                </span>
                                            </button>


                     <!--   <input type="submit"  value="Guardar" name="Guardar">-->

                </form>
            </td><td>
                                    <#else>
                <form action="/GuardarCambiosEstudiante">
                    <tr> <th>Id:</th>  <td> <input type="text" name="id" value="${estudiante.getMyId()}" readonly></td></tr>
                    <tr>  <th>Apellido:</th> <td><input type="text" name="apellido" value="${estudiante.getApellido()}" <#if ver=="true">readonly        </#if>     ></td></tr>
                    <tr>   <th>Matricula:</th> <td><input type="number" name="matricula" value="${estudiante.getMatriculaString()}" min="10000000" max="99999999" <#if ver=="true">readonly        </#if> ></td></tr>
                    <tr>   <th>Nombre:</th> <td><input type="text" name="nombre" value="${estudiante.getNombre()}" <#if ver=="true">readonly        </#if> ></td></tr>
                    <tr>   <th>Telefono:</th> <td><input type="text" name="telefono" value="${estudiante.getTelefono()}" <#if ver=="true">readonly        </#if> ></td></tr>
                    <tr><td>    


                            <input type="hidden"  value="${estudiante.getMyId()}" name="idEstudiante">
                            <input type="hidden"  value=${nuevo} name="nuevo">
                                  <#if ver=="true"><#else>
                            <button  name="Guardar" class="btn btn-success" >
                                            <span class="glyphicon glyphicon-floppy-save"> 
                                                </span>
                                            </button>      </#if>   

                    </form>
                </td><td>
                    <#if ver=="true"><#else> 
            <button data-toggle="modal" onclick="myFunction(${estudiante.getMyId()},'/BorrarEstudiantes')" class="btn btn-danger"  >
                                       <span class=" glyphicon glyphicon-remove"> 
                                                </span >
                                       
                                       </button>
            


 </#if> 

                                    </#if>
                </td>
            </tbody>
            </table>  



        </body>

    <script src="/assets/js/jquery-1.12.3.min.js" > </script>
    <script src="/assets/js/bootstrap.min.js" > </script>
    <script>
    function myFunction(idEstudiante,URL) {
        var desiciopn=confirm("Estas seguro?");
           // alert(idEstudiante);
                if(desiciopn){
               
                      window.location=URL+"?idEstudiante="+idEstudiante;
                    }
    }
        </script>

</html>
