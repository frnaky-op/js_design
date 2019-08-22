<?php

$url='rose.jpg';

//var_dump(getColorPallet($url));

echoColors(getColorPallet($url));


function echoColors($pallet){ // OUTPUT COLORSBAR
    foreach ($pallet as $key=>$val)
        echo '<div style="width:300px;height:100px;background:#'.$val.'">#'.$val.'</div>';
}

function getColorPallet($imageURL, $palletSize=[16,8]){ // GET PALLET FROM IMAGE PLAY WITH INPUT PALLET SIZE
    // SIMPLE CHECK INPUT VALUES
    if(!$imageURL) return false;

    // IN THIS EXEMPLE WE CREATE PALLET FROM JPG IMAGE
    $img = imagecreatefromjpeg($imageURL);

    // SCALE DOWN IMAGE
    $imgSizes=getimagesize($imageURL);

    $resizedImg=imagecreatetruecolor($palletSize[0],$palletSize[1]);

    imagecopyresized($resizedImg, $img , 0, 0 , 0, 0, $palletSize[0], $palletSize[1], $imgSizes[0], $imgSizes[1]);

    imagedestroy($img);

    //CHECK IMAGE
    /*header("Content-type: image/png");
    imagepng($resizedImg);
    die();*/

    //GET COLORS IN ARRAY
    $colors=[];
//$palletSize[0]
    //for($i=0;$i<$palletSize[1];$i++)
        for($j=0;$j<3;$j++)
            $colors[]=dechex(imagecolorat($resizedImg,$j,0));

    imagedestroy($resizedImg);

    //REMOVE DUPLICATES
    $colors= array_unique($colors);

    return $colors;

}
?>
<!<!doctype html>
<html>
<head>


</head>
<body>
<form method="post" enctype="multipart/form-data">
    <input type="file" name="file">
    <input type="submit" name="submit">
</form>

</body>


</html>