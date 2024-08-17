{-
&4)
?a. ⟨∀i : 0 ≤ i < #xs : xs.i > 0 ⟩
?b. ⟨∃i : 0 ≤ i < #xs : xs.i = x ⟩
?d. ⟨∀i : 0 ≤ i < (#xs - 1) : xs.i = xs.(i + 1)⟩

&5) Para cada uno de los ítems del ejercicio anterior, evaluá la fórmula en las siguientes listas:
?a. xs = [-5, -3, 4, 8]
?b. xs = [11, 2, 5, 8]
!Para el ítem b), considerar x = 5

&Ejercicio:
?a) Identificá las variables libres de cada expresión y el tipo de cada una.
?b) Definí funciones que tomen como argumento las variables libres identificadas y devuelvan el resultado de la expresión. Atención: Tené en cuenta que en algunos casos es necesario definir funciones auxiliares.
?c) Evaluá las funciones tomando como argumento los valores señalados en 5
-}

-- Todos los elementos son mayores a 0
cuatroA :: [Int] -> Bool
cuatroA [] = True
cuatroA (x:xs)  | x > 0 = cuatroA xs
                | otherwise = False

-- Existe al menos un elemento de la lista que es igual al elemento ingresado
cuatroB :: [Int] -> Int -> Bool
cuatroB [] a = False
cuatroB (x:xs) a    | x == a = True
                    | otherwise = cuatroB xs a

-- Todos los elementos de la lista son iguales entre sí
cuatroD :: [Int] -> Bool
cuatroD [] = True
cuatroD [x] = True
cuatroD (x:y:xs)    | x == y = cuatroD (y:xs)
                    | otherwise = False