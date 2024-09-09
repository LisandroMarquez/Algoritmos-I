{-
&27)
?a. paratodo.xs.T ≡⟨∀i : 0 ≤ i < #xs : T.(xs.i) ⟩
?b. existe.xs.T ≡⟨∃i : 0 ≤ i < #xs : T.(xs.i) ⟩
?c. sumatoria.xs.T = ⟨∑i : 0 ≤ i < #xs : T.(xs.i) ⟩
?d. productoria.xs.T = ⟨∏ i : 0 ≤ i < #xs : T.(xs.i) ⟩

& Lab 7. Programá las funciones definidas en el ejercicio 27. Para definir los tipos en haskell lo podés hacer de la siguiente manera:
?a. paratodo’ :: [a] -> (a -> Bool) -> Bool
?b. existe’ :: [a] -> (a -> Bool) -> Bool
?c. sumatoria’ :: [a] -> (a -> Int) -> Int
?d. productoria’ :: [a] -> (a -> Int) -> Int

& Lab 8. Teniendo en cuenta las funciones definidas en el Laboratorio 1 y en el Laboratorio 7, evaluá las expresiones como se muestra en el ejemplo
!paratodo [0, 0, 0, 0] esCero
!True
-}
-- Para evaluar
-- 1)
esCero :: Int -> Bool
esCero x = x == 0

-- 2)
esPositivo :: Int -> Bool
esPositivo x = x > 0

-- 3)
esVocal :: Char -> Bool
esVocal x = x `elem` "aeiou"

-- 4)
valorAbsoluto :: Int -> Int
valorAbsoluto x | x >= 0 = x
                | otherwise = -x

-- a.
paratodo :: [a] -> (a -> Bool) -> Bool
paratodo [] _ = True
paratodo (x:xs) prop    | prop x = paratodo xs prop
                        | otherwise = False

-- b.
existe :: [a] -> (a -> Bool) -> Bool
existe [] _ = False
existe (x:xs) prop  | prop x = True
                    | otherwise = existe xs prop

-- c.
sumatoria :: [a] -> (a -> Int) -> Int
sumatoria [] _ = 0
sumatoria (x:xs) prop = prop x + sumatoria xs prop

-- d.
productoria :: [a] -> (a -> Int) -> Int
productoria [] _ = 1
productoria (x:xs) prop = prop x * productoria xs prop