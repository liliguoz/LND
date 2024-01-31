for $baile in doc("baile.xml") //bailes/baile
where $baile/precio/@moneda="Dolares" and $baile/precio/@cuota="Trimestral"
return $baile/precio