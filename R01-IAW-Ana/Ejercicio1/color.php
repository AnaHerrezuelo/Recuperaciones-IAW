    <?php

        if (isset($_GET["color"])) {
            $color = $_GET["color"];

            if ($color == 1){
                $fondoC = '<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/light.css"> ';
                echo "$fondoC";

            }elseif($color == 2){
                $fondoO = '<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/dark.css">';
                echo "$fondoO";

            }


        }else{
            header("location:index.php");
        }

    ?>