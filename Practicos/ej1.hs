{-
& 1. esCero :: Int -> Bool, que verifica si un entero es igual a 0.
& 2. esPositivo :: Int -> Bool, que verifica si un entero es estrictamente mayor a 0.
& 3. esVocal :: Char -> Bool, que verifica si un caracter es una vocal en min ́uscula.
& 4. valorAbsoluto :: Int -> Int, que devuelve el valor absoluto de un entero ingresado.
-}
-- 1)
esCero :: Int -> Bool
esCero x    | x == 0 = True
            | otherwise = False

-- 2)
esPositivo :: Int -> Bool
esPositivo x    | x > 0 = True
                | otherwise = False

-- 3)
esVocal :: Char -> Bool
esVocal x   | x `elem` "aeiou" = True
            | otherwise = False

-- 4)
valorAbsoluto :: Int -> Int
valorAbsoluto x | x >= 0 = x
                | otherwise = -x