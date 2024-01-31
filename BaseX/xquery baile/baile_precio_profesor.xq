for $baile in doc("baile.xml") //bailes/baile
where $baile/precio/@cuota="mensual"
return $baile/profesor/text()