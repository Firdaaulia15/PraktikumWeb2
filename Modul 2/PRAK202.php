<!DOCTYPE html>
<html>
    <head>
        <style>
        .error {color: #FF0000;}
        </style>
    </head>
    <body>
        <?php 
            //deklarasi variabel
            $namaErr = $nimErr = $genderErr = "";
            $nama = $nim = $gender = "";
            //
            if ($_SERVER["REQUEST_METHOD"] == "POST") {
                if (empty($_POST["nama"])) {
                    $namaErr = "Nama tidak boleh kosong";
                } else {
                    $nama = $_POST["nama"];
                }

                if (empty($_POST["nim"])) {
                    $nimErr = "NIM tidak boleh kosong";
                } else {
                    $nim = $_POST["nim"];
                }

                if (empty($_POST["gender"])) {
                    $genderErr = "Jenis kelamin tidak boleh kosong";
                } else {
                    $gender = $_POST["gender"];
                }
            } 
        ?>
        <form action="" method="post">
            Nama: <input type = "text" name="nama">
            <span class="error">*<?php echo $namaErr;?></span>
            <br>
            Nim: <input type = "text" name="nim">
            <span class="error">*<?php echo $nimErr;?></span>
            <br>
            Jenis Kelamin: 
            <span class="error">*<?php echo $genderErr;?></span>
            <br>
            <input type = "radio" name="gender" value="Laki-Laki">Laki-Laki
            <br>
            <input type = "radio" name="gender" value="Perempuan">Perempuan
            
            <br>
            <input type="submit" name="submit" value="Submit">
        </form>

        <?php
       if (!empty($_POST["nama"]) && !empty($_POST["nim"]) && !empty($_POST["gender"])) {
           echo "<h2> Output: </h2>";
           echo $nama . "<br>";
           echo $nim . "<br>";
           echo $gender . "<br>";
       }
        ?>
    </body>
</html>