{-
a) paratodo :: [Bool] -> Bool, que verifica que todos los elementos de una lista sean True.
b) sumatoria :: [Int] -> Int, que calcula la suma de todos los elementos de una lista de enteros.
c) productoria :: [Int] -> Int, que calcula el producto de todos los elementos de la lista de enteros.
d) factorial :: Int -> Int, que toma un número n y calcula n!.
e) Utilizá la función sumatoria para definir, promedio :: [Int] -> Int, que toma una lista de números no vacia y calcula el valor promedio (truncado, usando división entera).
-}
-- a)
paratodo :: [Bool] -> Bool
paratodo [] = True
paratodo (x:xs) | x = paratodo xs
                | otherwise = False

-- b)
sumatoria :: [Int] -> Int
sumatoria [] = 0
sumatoria (x:xs) = x + sumatoria xs

-- c)
productoria :: [Int] -> Int
productoria [] = 1
productoria (x:xs) = x * productoria xs

-- d)
factorial :: Int -> Int
factorial 0 = 1
factorial x = x * factorial (x-1)
-- e)
promedio :: [Int] -> Int
promedio [x] = x
promedio xs = sumatoria xs `div` length xs 
