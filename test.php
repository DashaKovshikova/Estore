<?php 

// for(start; условие, действие в конце итерации){
//     тело цикла
// }

echo "Код перед циклом <br>";

for($i=0; $i < 11; $i++){
    echo "$i <br>";
}

echo "Код после цикла <br>";

//$carBrand1 = "Audi";
// $carBrand2 = "VW";
// $carBrand3 = "Shkoda";
// $carBrand4 = "BMV";


/// ЭТО АССОЦИАТИВНЫЙ МАССИВ С ПАРОЙ КЛЮЧ => ЗНАЧЕНИЕ в ассоциативном массиве индесами являются название ключа, а не цифрфы от 0 и до...

$carBrands = ['Audi' => 'Q7',
'VW' => 'Polo',
'Shkoda' => 'Octsvia',
'Hundai' => 'Solaris'];

//echo $carBrands; -не работает для массива

print_r($carBrands); // выводит массив

echo '<ul>';

//foreach цикл обходит ровно столько раз сколько элементов в массиве, и записывает результат в тот элемент который мы указали после as

foreach( $carBrands as $item){

    echo '<li>';
    echo $item; 
    echo '</li>';
};

echo '</ul>';

//echo $carBrands[2];
    
?>
