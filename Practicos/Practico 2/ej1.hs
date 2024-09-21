{-
&Definí en Haskell las funciones derivadas en el ejercicio 2 y evaluá las mismas en los ejemplos utilizados en el ejercicio 3.
-}

-- *a.
sum_cuad :: [Int] -> Int
sum_cuad [] = 0
sum_cuad (x:xs) = x * x + sum_cuad xs

-- ! More efficient
sum_cuad1 :: [Int] -> Int
sum_cuad1 = foldr (\ x -> (+) (x * x)) 0

-- *b.
iga :: Eq a => a -> [a] -> Bool
iga e [] = True
iga e (x:xs) = (x == e) && iga e xs

-- ! More efficient
iga1 :: Eq a => a -> [a] -> Bool
iga1 e = foldr (\ x -> (&&) (x == e)) True

-- *c.
expo :: Int -> Int -> Int
expo x 0 = 1
expo x n = x * expo x (n-1)

-- *d.
sum_par :: Int -> Int
sum_par 0 = 0
sum_par n   | n `mod` 2 == 0 = sum_par (n-1) + n
            | n `mod` 2 == 1 = sum_par (n-1)

-- ! More readable
sum_par1 :: Int -> Int
sum_par1 0 = 0
sum_par1 n  | even n = sum_par1 (n-1) + n
            | odd n = sum_par1 (n-1)

-- *e.
cuantos :: (a -> Bool) -> [a] -> Int
cuantos p [] = 0
cuantos p (x:xs)    |  p x = 1 + cuantos p xs
                    | not (p x) = cuantos p xs