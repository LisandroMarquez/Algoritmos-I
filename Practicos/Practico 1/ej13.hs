{-
&La función primIguales toma una lista y devuelve el mayor tramo inicial de la lista cuyos elementos son todos iguales entre sí. Por ejemplo:
*primIguales [3,3,4,1] = [3,3]
*primIguales [4,3,3,4,1] = [4]
*primIguales [] = []
*primIguales "aaadaa" = "aaa"
?a. Programá primIguales por recursión.
!b. Usá cualquier versión de primIgualesA para programar primIguales. Está permitido dividir en casos, pero no usar recursión.
-}
-- a.
primIguales2a :: Eq a => [a] -> [a]
primIguales2a [] = []
primIguales2a (x:xs) = x : takeWhile (x==) xs

-- b.
primIguales2b :: Eq a => [a] -> [a]
primIguales2b [] = []
primIguales2b xs =  takeWhile (==head xs) xs