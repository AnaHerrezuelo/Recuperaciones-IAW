


<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://unpkg.com/@picocss/pico@1.*/css/pico.min.css">
    <style>
        form{
            margin: 3em;
        }

        section{
            margin: 2em;
        }

        .graf{
            width: 90%;
            height: 2em;
            background-color: red;
        }

    </style>
</head>
<body>
    <h1> Votación a la mejor pelicula </h1>
    <form action="index.php" method="post">
        <label for="todo"> Todo a la vez en todas partes </label> <br>
        <input type="texto" name="todo" id="todo" min="1" max="10"> <br> <br>

        <label for="sin"> Sin novedad en el frente </label> <br>
        <input type="texto" name="sin" id="sin"> <br> <br>

        <label for="almas"> Almas en pena </label> <br>
        <input type="texto" name="almas" id="almas"> <br> <br>

        <button> Enviar </button> <br>

    </form>
        <form>
            <button> Borrar </button>
        </form>

    <?php
    if(isset($_POST["todo"]) && isset($_POST["sin"]) && isset($_POST["almas"])){
        $todo = $_POST["todo"];
        $sin = $_POST["sin"];
        $almas = $_POST["almas"];

        if($todo && $sin && $almas){
            //echo "<p> $todo, $sin, $almas: son recogidos </p> <br>";

            if(is_numeric($todo) && is_numeric($sin) && is_numeric($almas)){
                if(($todo<=10) && ($sin<=10) && ($almas <=10) && ($todo>=0) && ($sin>=0) && ($almas >=0)){
                    //setcookie(ctodo,$_COOKIE["todo"], time()*60*60*24*7);
                    //$ctodo = $_COOKIE["todo"];

                    ?>
                    <section>
                        <h2> Resultados </h2>

                        <h5> Todo a la vez en todas partes: <?= $todo ?>  votos </h5>
                        <div class="graf">  </div> <br> <br>

                        <h5> Sin Novedad en el Frente: <?= $sin ?> votos </h5>
                        <div class="graf">  </div> <br> <br>

                        <h5> Almas en pena:  <?= $almas ?> votos </h5>
                        <div class="graf">  </div> <br> <br>

                    </section>
                    <?php






                }else{
                    echo "<p class='error'> los números deben estar comprendidos entre el 0 y el 10 </p>";
                }


            }else{
                echo " <p class='error'> deben de ser un número  </p> ";
            }
        }else{
            echo " <p class='error'> Debes de rellenar todos los huecos </p> ";
        }


    }else{
        echo "<p class='error'> Ha habido un error </p>";
    }
    ?>

</body>
</html>