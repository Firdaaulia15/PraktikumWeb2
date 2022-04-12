<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Soal 1</title>
</head>

<body>
    <form action="" method="post">
        Jumlah Peserta:
        <input type="text" name="jumlah"><br>
        <input type="submit" name="submit" value="Cetak">
    </form>
    <?php
    if (isset($_POST['submit'])) {
        $jumlah = $_POST['jumlah'];
        $nilai = 1;

        while ($nilai <= $jumlah) {

            if ($nilai % 2 == 0) {
                echo "<h2 style=\"color:green\">Peserta ke-$nilai</h2>";
            } else {
                echo "<h2 style=\"color:red\">Peserta ke-$nilai</h2>";
            }
            $nilai++;
        }
    }
    ?>
</body>

</html>