<html>
    <head>
    <title> Consulta </title>
    </head>
  <body>
    <table border="20">
      <tr>
        <td> Nombre del proveedor </td> 
        <td> Referencia del proveedor </td> 
        <td> Pais del proveedor </td>
      </tr>
      {
        for $neptuno in doc("neptuno.xml")//neptuno/articulos
        return
        for $prov in doc("neptuno.xml")//proveedores
        where $prov/PaisProveedor="Francia"
        return 
          <tr>
            <td>{$prov/NombreProveedor}</td>
            <td>{$prov/ReferenciaProveedor}</td>
            <td>{$prov/PaisProveedor}</td>

          </tr>
      }
    </table>
  </body>
</html>