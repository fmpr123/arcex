<?php
$batata="Semilha";
$arroz="morango";
echo $batata ." de ". $arroz."<br>";
$str = "Abacate moido ";
$compare=strcmp($str,"Abacate moido");
if($compare=="0"){
    echo "As strings têm o mesmo tamanho"."<br>";
}else{
    echo "As string têm tamanhos diferentes"."<br>";
}
echo strrev($str)."<br>";
$new_str=trim($str);
echo $new_str."<br>";
$weekDay= date("l");
echo $weekDay."<br>";
if($weekDay=="Saturday" || $weekDay=="Sunday"."<br>"){
    echo "Boa!";
}else{
    echo "Nunca mais é fim de semana!"."<br>";
}
$array = [4,2,5,9,1,9];
print_r($array);
echo "<br>";
sort($array);
print_r($array);
?>