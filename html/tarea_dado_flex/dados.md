# Tarea dados con flex

![image](https://github.com/liliguoz/LND/assets/145054491/acaf27a0-05cd-42ba-943d-8b7b26567c22)

## DADOS.HTML

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>dados</title>
    <h1>Juego de dados</h1>
    <link rel="stylesheet" href="dado.css">
</head>
<body>
      </style>
    </head>
    <div class="container">
      <div class="cara-1">
        <div class="punto"></div>
      </div>
      <div class="cara-2">
        <div class="punto"></div>
        <div class="punto"></div>
      </div>
      <div class="cara-3">
        <div class="punto"></div>
        <div class="punto"></div>
        <div class="punto"></div>
      </div>
      <div class="cara-4">
        <div class="columna">
          <div class="punto"></div>
          <div class="punto"></div>
        </div>
        <div class="columna">
          <div class="punto"></div>
          <div class="punto"></div>
        </div>
      </div>
      <div class="cara-5">
        <div class="columna">
          <div class="punto"></div>
          <div class="punto"></div>
        </div>
        <div class="punto medio"></div>
        <div class="columna">
          <div class="punto"></div>
          <div class="punto"></div>
        </div>
      </div>
      <div class="cara-6">
        <div class="columna">
          <div class="punto"></div>
          <div class="punto"></div>
          <div class="punto"></div>
        </div>
        <div class="columna">
          <div class="punto"></div>
          <div class="punto"></div>
          <div class="punto"></div>
        </div>
      </div>
    </div>
    </body>
</html>
```
1. **Encabezado HTML**:
    - El documento comienza con la declaración del tipo de documento (`<!DOCTYPE html>`) y establece el idioma del contenido como inglés (`<html lang="en">`).
    - Dentro del `<head>`, se definen la codificación de caracteres (`<meta charset="UTF-8">`) y la configuración de la vista (`<meta name="viewport" content="width=device-width, initial-scale=1.0">`), que es importante para la compatibilidad con dispositivos móviles.
    - El título de la página se establece con `<title>dados</title>`, y se incluye un encabezado de nivel uno (`<h1>Juego de dados</h1>`).
    - Un enlace a una hoja de estilos CSS externa se incluye con `<link rel="stylesheet" href="dado.css">`, que es donde se definirán los estilos para los elementos del dado.

2. **Cuerpo del documento HTML**:
    - Comienza con `<body>`, dentro del cual se define una `div` principal con la clase `container`. Esta `div` contiene todas las caras del dado.
    
3. **Caras del dado**:
    - Cada cara del dado se representa mediante una `div` con una clase específica (`cara-1`, `cara-2`, etc.), lo que permite aplicar estilos individuales a cada cara en el archivo CSS.
    - **Cara 1**: Contiene una sola `div` con la clase `punto`, representando el número uno.
    - **Cara 2**: Contiene dos `div` con la clase `punto`, representando el número dos.
    - **Cara 3**: Contiene tres `div` con la clase `punto`, representando el número tres.
    - **Cara 4**: Contiene dos `div` con la clase `columna`, cada una de las cuales contiene dos `div` con la clase `punto`, representando el número cuatro.
    - **Cara 5**: Similar a la cara cuatro, pero con un `div` adicional con la clase `medio` que contiene un `punto` en el centro, representando el número cinco.
    - **Cara 6**: Contiene dos `div` con la clase `columna`, cada una de las cuales contiene tres `div` con la clase `punto`, representando el número seis.

4. **Estructura y estilos**:
    - Cada `div` con la clase `punto` se usará para mostrar los puntos en las caras del dado. Los puntos se organizan en `columnas` para las caras que requieren múltiples filas de puntos (caras 4, 5 y 6).
    - La hoja de estilos `dado.css` vinculada al documento manejará la presentación visual de estos puntos y la disposición general del dado, aunque no se proporciona aquí.

## DADOS.CSS

```CSS
* {
    box-sizing:inherit;
  }
  body {
    padding: 0;
    fant-family: sans-serif;
  }
  
  h1 {
    text-align: center;
  }
  .container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
  }
  
  [class^="cara-"] {
    background-color: #555;
    display: flex;
    width: 120px;
    height: 120px;
    padding: 10px;
    margin: 1em;
  }
  
  .cara-1 {
    justify-content: center;
    align-items: center;
  }
  
  .cara-2 {
    justify-content: space-between;
  }
  
  .cara-2 .punto:nth-child(2) {
    align-self: flex-end;
  }
  
  .cara-3 {
    flex-direction: column;
    justify-content: space-between;
  }
  .cara-3 .punto:nth-child(2) {
    align-self: center;
  }
  
  .cara-3 .punto:nth-child(3) {
    align-self: flex-end;
  }
  
  .cara-4 {
    justify-content: space-between;
  }
  
  .cara-4 .columna {
    display: flex;
    flex-direction: column;
    justify-content: space-between;
  }
  
  .cara-5 {
    justify-content: space-between;
  }
  
  .cara-5 .columna {
    display: flex;
    flex-direction: column;
    justify-content: space-between;
  }
  
  .cara-5 .medio {
    align-self: center;
  }
  
  .cara-6 {
    justify-content: space-between;
  }
  
  .cara-6 .columna {
    display: flex;
    flex-direction: column;
    justify-content: space-between;
  }
  
  .cara-6 {
    
  }
  
  .punto {
    width: 20px;
    height: 20px;
    background-color: #eee;
    border-radius: 50%;
  }
```
Este archivo CSS proporciona estilos específicos para la representación visual del dado en el código HTML. Aquí está la explicación de cada parte:

1. **Reseteo de estilos y configuración global**:
   - `*`: Se aplica a todos los elementos y establece `box-sizing` en `inherit`, lo que significa que los elementos heredarán el modelo de caja de sus elementos padres. Esto ayuda a mantener la consistencia en la presentación de los elementos.
   - `body`: Elimina el relleno predeterminado del cuerpo (`padding: 0`) y especifica una familia de fuentes de respaldo (`fant-family: sans-serif;`).

2. **Estilos específicos**:
   - `h1`: Centra cualquier título de nivel 1 (`h1`) dentro del documento.
   - `.container`: Define la clase para el contenedor principal que alberga todas las caras del dado. Utiliza `flexbox` para organizar las caras en filas (`flex-wrap: wrap`) y centrarlas horizontalmente (`justify-content: center`).
   - `[class^="cara-"]`: Selecciona cualquier elemento cuya clase comience con "cara-" (es decir, todas las caras del dado). Establece el fondo a un tono de gris (`#555`) y aplica un espacio uniforme alrededor de cada cara (`padding: 10px; margin: 1em;`).
   
3. **Estilos específicos para cada cara**:
   - Se proporcionan reglas específicas para cada cara del dado, como la disposición de los puntos y su alineación.
   - Para cada cara, se establecen reglas específicas para la disposición y el espaciado de los puntos, utilizando flexbox para alinearlos apropiadamente.

4. **Estilos para los puntos**:
   - `.punto`: Establece el tamaño y la apariencia de cada punto. Tienen un tamaño de 20x20 píxeles, un fondo gris claro (`#eee`), y se redondean para formar un círculo (`border-radius: 50%`).
