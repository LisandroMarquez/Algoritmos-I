{-
&7)
?a. ⟨∏ i : 1 ≤ i ≤ n : i⟩
?b. ( ⟨∑i : 0 ≤ i < #xs : xs.i⟩ ) / #xs
?c. ⟨Max i : 0 ≤ i < #xs : xs.i⟩ < ⟨Min i : 0 ≤ i < #ys : ys.i⟩
?d. ⟨∃i, j : (2 ≤ i < n) ^ (2 ≤ j < n) : i ∗ j = n ⟩

&8)
?a. n = 5.
?b. xs = [6, 9, 3, 9, 8].
?c. xs = [−3, 9, 8], ys = [6, 7, 8].
?d. n = 5

&Ejercicio:
?a) Identificá las variables libres de cada expresi ́on y el tipo de cada una.
?b) Definí funciones que tomen como argumento las variables libres identificadas y devuelvan el resultado de la expresión. Atención: Tené en cuenta que en algunos casos es necesario definir varias funciones.
?c) Evaluá las funciones tomando como argumento los valores señalados en el ejercicio 8
-}
-- Multiplicar un numero por si mismos desde a 1 hasta "n"
sieteA :: Int -> Int
sieteA 1 = 1
sieteA n = n * sieteA (n-1)

-- El promedio de una lista
sieteB :: [Int] -> Int
sieteB [x] = x
sieteB xs = sum xs `div` length xs 

-- El mayor n° de la primera lista es menor que el menor n° de la segunda lista
sieteC :: [Int] -> [Int] -> Bool
sieteC [] [] = False
sieteC xs ys = maximum xs < minimum ys

-- Básicamente, si un n° es compuesto, o no es primo
sieteD :: Int -> Bool
sieteD n    | n <= 3 = False
            | otherwise = esPrimo 2 n

esPrimo :: Int -> Int -> Bool
esPrimo i n | i * i > n      = False
            | n `mod` i == 0 = True
            | otherwise      = esPrimo (i + 1) n
