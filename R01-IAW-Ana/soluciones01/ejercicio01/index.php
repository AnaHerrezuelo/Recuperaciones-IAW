<?php
$modo="claro";
if(isset($_GET["modo"])){
    $modo=$_GET["modo"];
}
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Claro/Oscuro</title>
    <?php
    if($modo=="claro")
        echo('<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/light.css">');
    else
        echo('<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/dark.css">');
    ?>

</head>
<body>
<h1>Elige el modo de trabajo</h1>
<form action="index.php" method="GET">
    <input type="radio" name="modo" value="claro" id="claro" checked>
    <label for="claro">Claro</label>
    <input type="radio" name="modo" value="oscuro" id="oscuro">
    <label for="oscuro">Oscuro</label>
    <button>Enviar</button>
</form>
<p><a href="siguiente.php?modo=<?=$modo?>">Ir a la siguiente página</a></p>
<h1>Texto de prueba</h1>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam atque aut dignissimos doloremque excepturi, fuga
    fugiat laboriosam laudantium nesciunt odio officiis possimus quisquam quos recusandae repellat sapiente sint soluta
    temporibus.</p>
<p>Ad, assumenda eaque ipsam molestiae nulla porro repellat reprehenderit veniam veritatis voluptatibus? Deleniti dolor
    harum odio provident qui quod reiciendis rem sit sunt temporibus! Beatae ipsa minima totam veniam vitae?</p>
<p>Commodi culpa debitis dignissimos dolorum, ducimus ea eligendi eos eum iusto libero magni nemo, nisi porro,
    reiciendis sed tenetur voluptatem! Consectetur deleniti eligendi expedita minus nemo perferendis praesentium quo
    rem?</p>
<p>Amet dolorum ea eos excepturi fuga libero magnam, numquam. Quos, sunt tempora. Alias aliquid ducimus esse libero
    molestiae quibusdam quidem quisquam reiciendis repellat repellendus reprehenderit similique, soluta temporibus velit
    veritatis?</p>
<p>Animi aperiam dolor error esse, illum labore maxime nesciunt nobis quod ullam unde, veniam. Aperiam distinctio labore
    nesciunt quas quasi qui quia, suscipit! Aliquid debitis enim impedit quos ullam vel.</p>
<p>Cupiditate error eveniet facilis nostrum quod, sit? Dignissimos enim fuga illo ipsum odit, provident quisquam
    repellat ullam veritatis voluptas. Officiis sapiente soluta temporibus totam. Esse ex itaque quae quas vitae.</p>
<p>Aliquam amet aspernatur aut autem deserunt dolor dolorem eum laudantium maiores maxime minima nam nemo officiis quo
    sed, tempore tenetur! Assumenda consequuntur dicta dolores eos ipsa nemo placeat qui quisquam!</p>
<p>Asperiores, fugit, nostrum! Commodi expedita quae sed. Debitis dolorum minus mollitia rerum suscipit! Architecto
    asperiores corporis cum eos ex laborum magnam modi, perferendis placeat saepe similique sunt vel vero vitae?</p>
<p>Cupiditate deleniti dignissimos magni maxime veniam? Ab alias et fugiat illo itaque laboriosam provident repellendus?
    Ab ad alias commodi, cupiditate eaque harum id incidunt ipsam iusto qui, rem sint tempora.</p>
<p>Aliquid atque beatae blanditiis consectetur cupiditate, dolorem eaque earum eius fuga illo, ipsa ipsum laboriosam
    perspiciatis porro quam rem sit sunt tenetur unde veritatis? Aliquam expedita laborum nam quia tempore?</p>
<h1>Tabla de prueba</h1>
<table>
    <tr>
        <td>celda01</td>
        <td>celda02</td>
        <td>celda03</td>
        <td>celda04</td>
        <td>celda05</td>
        <td>celda06</td>
        <td>celda07</td>
        <td>celda08</td>
        <td>celda09</td>
        <td>celda10</td>
    </tr>
    <tr>
        <td>celda01</td>
        <td>celda02</td>
        <td>celda03</td>
        <td>celda04</td>
        <td>celda05</td>
        <td>celda06</td>
        <td>celda07</td>
        <td>celda08</td>
        <td>celda09</td>
        <td>celda10</td>
    </tr>
    <tr>
        <td>celda01</td>
        <td>celda02</td>
        <td>celda03</td>
        <td>celda04</td>
        <td>celda05</td>
        <td>celda06</td>
        <td>celda07</td>
        <td>celda08</td>
        <td>celda09</td>
        <td>celda10</td>
    </tr>
    <tr>
        <td>celda01</td>
        <td>celda02</td>
        <td>celda03</td>
        <td>celda04</td>
        <td>celda05</td>
        <td>celda06</td>
        <td>celda07</td>
        <td>celda08</td>
        <td>celda09</td>
        <td>celda10</td>
    </tr>
    <tr>
        <td>celda01</td>
        <td>celda02</td>
        <td>celda03</td>
        <td>celda04</td>
        <td>celda05</td>
        <td>celda06</td>
        <td>celda07</td>
        <td>celda08</td>
        <td>celda09</td>
        <td>celda10</td>
    </tr>
    <tr>
        <td>celda01</td>
        <td>celda02</td>
        <td>celda03</td>
        <td>celda04</td>
        <td>celda05</td>
        <td>celda06</td>
        <td>celda07</td>
        <td>celda08</td>
        <td>celda09</td>
        <td>celda10</td>
    </tr>
    <tr>
        <td>celda01</td>
        <td>celda02</td>
        <td>celda03</td>
        <td>celda04</td>
        <td>celda05</td>
        <td>celda06</td>
        <td>celda07</td>
        <td>celda08</td>
        <td>celda09</td>
        <td>celda10</td>
    </tr>
    <tr>
        <td>celda01</td>
        <td>celda02</td>
        <td>celda03</td>
        <td>celda04</td>
        <td>celda05</td>
        <td>celda06</td>
        <td>celda07</td>
        <td>celda08</td>
        <td>celda09</td>
        <td>celda10</td>
    </tr>
    <tr>
        <td>celda01</td>
        <td>celda02</td>
        <td>celda03</td>
        <td>celda04</td>
        <td>celda05</td>
        <td>celda06</td>
        <td>celda07</td>
        <td>celda08</td>
        <td>celda09</td>
        <td>celda10</td>
    </tr>
    <tr>
        <td>celda01</td>
        <td>celda02</td>
        <td>celda03</td>
        <td>celda04</td>
        <td>celda05</td>
        <td>celda06</td>
        <td>celda07</td>
        <td>celda08</td>
        <td>celda09</td>
        <td>celda10</td>
    </tr>
</table>
</body>
</html>