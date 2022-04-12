<!DOCTYPE html>
<head>
    <title>No 5</title>
</head>
<body>
    <form method="post">
        <input type="text" name="teks">
        <button type="submit">submit</button>
    </form>

    <?php 
        if(isset($_POST['teks'])) {
            $teks = $_POST['teks'];
            $i = 0;
            $j = 0;
            while($i < strlen($teks)){
                while($j < strlen($teks)){
                    if($j == 0) {
                        echo strtoupper($teks[$i]);
                    }else {
                        echo strtolower($teks[$i]);
                    }
                    $j++;
                }
                $j = 0;
                $i++;
            }
        }
    ?>
</body>
</html>