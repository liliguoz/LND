<html>
  <head><title>segunda consulta</title></head>
  <body>
  <table border="10">
    <tr>
     <td>Referencia proveedor</td>
     <td>Nombre de proveedor</td>
     <td>Direccion del proveedor</td>
     <td>Codigo Postal del proveedor</td>
     <td>Pais proveedor</td>
     <td>Telefono</td>
   </tr>
   {
      for $proveedor in doc("neptuno_examen.xml")//proveedor
      where $proveedor/PaisProveedor ='Francia'
      return
      <tr>
        <td>{$proveedor/ReferenciaProveedor}</td>
        <td>{$proveedor/NombreProveedor}</td>
        <td>{$proveedor/DireccionProveedor}</td>
        <td>{$proveedor/CodigoPostal}</td>
        <td>{$proveedor/PaisProveedor}</td>
        <td>{$proveedor/TelefonoProveedor}</td>
      </tr>    
   }
   </table>
  </body>
</html>
