{-
&11)
?a. n es potencia de 2.
?b. n es el elemento más grande de xs.
?c. El producto de los elementos pares de xs.
?d. La suma de los elementos en posición par de xs

&A partir de las expresiones del ejercicio anterior b) y c) y d)
?a. Identificá las variables libres de cada expresión y el tipo de cada una.
?b. Definí funciones que tomen como argumento las variables libres identificadas y devuelvan el resultado de la expresión. Atención: Tené en cuenta que en algunos casos es necesario definir varias funciones
-}

-- Funcion auxiliar para saber si un número está en una lista
esta :: [Int] -> Int -> Bool
esta [] a = False
esta (x:xs) a   | x == a = True
                | otherwise = esta xs a

onceB :: [Int] -> Int -> Bool
onceB [] a = False
onceB (x:xs) a  | not(esta (x:xs) a) = False
                | x == maximum (x:xs) && x == a = True
                | otherwise = onceB xs a

onceC :: [Int] -> Int
onceC [] = 1
onceC (x:xs)    | even x = x * onceC xs
                | otherwise = onceC xs

onceD :: [Int] -> Int
onceD [] = 0
onceD [a] = a
onceD [a,_] = a
onceD (x:y:xs) = x + onceD xs