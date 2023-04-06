<?php

    if (isset($_GET["color"])) {
        $color = $_GET["color"];

    }else{
        echo "selecciona color";
    }


?>

<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/light.css">
    <?php
    if ($color == "cla"){
        echo '<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/light.css"> ';

    }elseif($color == "osc"){
        echo '<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/dark.css">';

    }
    ?>
</head>
<body>
<h1> Elige el modo de trabajo </h1>
    <form action="index.php">
        <input type="radio" name="color" id="claro" value="cla">
        <label for="claro"> Claro</label>

        <input type="radio" name="color" id="oscuro" value="osc">
        <label for="oscuro"> Oscuro </label>

        <button> Enviar </button> <br>
    </form>

    <a href="siguiente.php?modo=<?=$color?>"> Ir a siguiente página </a>



    <section>

            <h2> Texto de prueba </h2>
        <div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus adipisci autem dignissimos distinctio eum ex
            excepturi explicabo iste maiores nobis optio quas quia quis quod, recusandae reprehenderit sint velit voluptate.
        </div>
        <div>Aliquid cum cumque debitis dolor dolore, doloremque dolores enim ex exercitationem explicabo fugit hic labore
            maiores minima nam numquam provident quod ratione rem sequi unde vero vitae voluptatem voluptates, voluptatum!
        </div>
        <div>Atque blanditiis culpa cum, distinctio dolorem enim est ex facilis fugit laboriosam natus nemo nihil similique sit
            voluptatem. Deserunt ducimus eos exercitationem impedit praesentium quisquam quos rem repellat saepe vitae.
        </div>
        <div>Atque necessitatibus quos vitae. Atque commodi dignissimos eos error fuga iste nisi perspiciatis quas qui rem
            repellendus rerum suscipit tempora, tempore tenetur? At beatae id modi quidem recusandae repellat sapiente?
        </div>
        <div>Distinctio eius eum expedita facilis inventore iste iure, necessitatibus nemo obcaecati suscipit, ullam voluptatem
            voluptates voluptatum! Autem beatae earum perferendis totam voluptas. Deserunt doloremque laudantium minus modi odit
            rem, repellendus.
        </div>
        <div>Incidunt neque provident repellat! Aliquid at atque dicta expedita fugit illo ipsa libero mollitia nesciunt non
            quod, quos ratione recusandae reiciendis saepe sit soluta tempora, totam ut vel veritatis voluptates?
        </div>
        <div>Animi earum iste libero nemo non porro quos repudiandae! Accusamus aperiam deleniti eaque et eum expedita harum
            impedit ipsa ipsum modi nemo, neque, praesentium quidem quisquam quo quod repudiandae tempora?
        </div>
        <div>Ab, accusantium ad aliquam assumenda error et eveniet hic illum ipsam iste magnam neque obcaecati optio
            perspiciatis provident, quaerat quo reiciendis sapiente? Aperiam, dolores maxime quae quibusdam quidem suscipit
            veniam.
        </div>
        <div>A animi aperiam beatae blanditiis consectetur dicta ducimus ea error incidunt minus necessitatibus perferendis,
            praesentium quidem tempore ullam, vero vitae voluptatem? Ad aliquid autem, doloribus id laboriosam nulla repellat
            voluptas!
        </div>
        <div>Deleniti doloribus earum eius soluta voluptatibus? Ad beatae consectetur consequatur deleniti, in ipsa iure
            mollitia, pariatur quasi similique sint soluta voluptate. A doloremque facilis nisi ullam voluptate! Cupiditate,
            maiores, velit?
        </div>
        <div>Accusamus, animi architecto assumenda cum debitis excepturi inventore ipsum necessitatibus nobis officia omnis,
            quae quisquam quo reprehenderit similique sunt tenetur! Consectetur dolor eligendi nihil numquam porro tempora
            voluptas. Necessitatibus, recusandae?
        </div>
        <div>Consectetur eligendi, fugiat, illum in ipsum iste iure obcaecati, quasi recusandae reiciendis repellendus sint ut?
            Aliquid, architecto asperiores consequuntur ea facere inventore laboriosam nesciunt nihil provident quia ratione sed
            veniam.
        </div>
    </section>


</body>
</html>