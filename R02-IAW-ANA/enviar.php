<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
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