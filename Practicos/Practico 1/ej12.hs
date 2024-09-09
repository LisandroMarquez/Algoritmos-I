{-
&12) La función primIgualesA toma un valor y una lista, y calcula el tramo inicial más largo de la lista cuyos elementos son iguales a ese valor. Por ejemplo:
*primIgualesA 3 [3,3,4,1] = [3,3]
*primIgualesA 3 [4,3,3,4,1] = []
*primIgualesA 3 [] = []
*primIgualesA ’a’ "aaadaa" = "aaa"
?a. Programá primIgualesA por recursión.
!b. Programá nuevamente la función utilizando takeWhile.
-}
primIgualesA :: Eq a => a -> [a] -> [a]
primIgualesA _ [] = []
primIgualesA n (x:xs)   | x == n = x : primIgualesA n xs
                        | otherwise = []

primIgualesB :: Eq a => a -> [a] -> [a]
primIgualesB _ [] = []
primIgualesB n xs = takeWhile (n==) xs