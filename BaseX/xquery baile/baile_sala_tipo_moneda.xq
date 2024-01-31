for $baile in doc("baile.xml") //bailes/baile
where $baile/sala/text()="103" and $baile/precio/@moneda="Dolares"
return $baile/nombre/text()