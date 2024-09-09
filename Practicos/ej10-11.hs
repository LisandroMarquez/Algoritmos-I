{-
&10) Programá una función que dada una lista de números xs, devuelve la lista que resulta de duplicar cada valor de xs.
?a. Definila usando recursión.
!b. Definila utilizando la función map

&11) Programá una función que dada una lista de números xs, calcula una lista que tiene como elementos aquellos números de xs que son primos.
?a. Definila usando recursión.
!b. Definila utilizando la función filter.
?c. Revisá tu definición del ejercicio g. ¿Cómo podes mejorarla?
-}

-- 10)
-- a.
diezA :: [Int] -> [Int]
diezA [] = []
diezA (x:xs) = x*2 : diezA xs

-- b.
diezB :: [Int] -> [Int]
diezB = map (* 2)

-- 11)
-- AUX FUNCTIONS
existe :: [a] -> (a -> Bool) -> Bool
existe [] _ = False
existe (x:xs) prop  | prop x = True
                    | otherwise = existe xs prop

modulo :: Int -> Int -> Bool
modulo x y = mod x y == 0

existeDivisor :: Int-> [Int] -> Bool
existeDivisor n xs = existe xs (modulo n)

esPrimo :: Int -> Bool
esPrimo 1 = False
esPrimo 2 = True
esPrimo 3 = True
esPrimo n = not (existeDivisor n [2..(n-1)])

-- a.
soloPrimos :: [Int] -> [Int]
soloPrimos [] = []
soloPrimos (x:xs)  | esPrimo x = x : soloPrimos xs
                    | otherwise = soloPrimos xs

-- b.
soloPrimos2 :: [Int] -> [Int]
soloPrimos2 [] = []
soloPrimos2 xs = filter esPrimo xs