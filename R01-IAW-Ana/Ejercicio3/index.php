<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/light.css">
</head>
<body>

    <h1> Patrón de  colores </h1>

    <form action="enviar.php">
        <label for="color1"> Color 1 </label> <br>
        <input type="color" name="color1" id="color1"> <br> <br>

        <label for="color2"> Color 2 </label> <br>
        <input type="color" name="color2" id="color2"> <br> <br>

        <label for="filas"> Numero de filas </label> <br>
        <input type="number" name="filas" id="filas" min="0" max="100"> <br> <br>

        <label for="columnas"> Numero de columnas </label> <br>
        <input type="number" name="columnas" id="columnas" min="0" max="100"> <br> <br>

        <button> Enviar</button>
    </form>


</body>
</html>