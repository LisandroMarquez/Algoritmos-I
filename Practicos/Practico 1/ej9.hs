{-
&Utilizando las funciones del Laboratorio 7, programá las siguientes funciones por composición, sin usar recursión ni análisis por casos. Tenés en cuenta que puede ser necesario definir funciones auxiliares para que las definiciones sean más claras.
?a. todosPares :: [Int] -> Bool verifica que todos los números de una lista sean pares.
!b. hayMultiplo :: Int -> [Int] -> Bool verifica si existe algún número dentro del segundo parámetro que sea múltiplo del primer parámetro.
?c. sumaCuadrados :: Int -> Int, dado un número no negativo n, calcula la suma de los primeros n cuadrados, es decir 〈∑i : 0 ≤ i < n : i2〉. Ayuda: En Haskell se puede escribir la lista que contiene el rango de números entre n y m como [n..m].
!d. Programar la función existeDivisor::Int-> [Int] -> Bool, que dado en entero n y una lista ls, devuelve True si y solo si, existe algún elemento en ls que divida a na.
?e. Utilizando la función del apartado anterior, definí la función esPrimo:: Int -> Bool, que dado un entero n, devuelve True si y solo si n es primo. Ayuda: En Haskell se puede escribir la lista que contiene el rango de números entre n y m como [n..m].
!f. ¿Se te ocurre como redefinir factorial (ej. 3d ) para evitar usar recursión?
?g. Programar la función multiplicaPrimos :: [Int] -> Int que calcula el producto de todos los números primos de una lista.
!h. Programar la función esFib :: Int -> Bool, que dado un entero n, devuelve True si y sólo si n está en la sucesión de Fibonacci. Ayuda: Realizar una función auxiliar fib :: Int -> Int que dado un n devuelva el n-ésimo elemento de la sucesión.
?i. Utilizando la función del apartado anterior, definí la función todosFib :: [Int] -> Bool que dada una lista xs de enteros, devuelva si todos los elementos de la lista pertenecen (o no) a la sucesión de Fibonacci
-}
-- funciones aux
paratodo :: [a] -> (a -> Bool) -> Bool
paratodo [] _ = True
paratodo (x:xs) f   | f x = paratodo xs f
                    | otherwise = False

existe :: [a] -> (a -> Bool) -> Bool
existe [] _ = False
existe (x:xs) prop  | prop x = True
                    | otherwise = existe xs prop

mod1 :: Int -> Int -> Bool
mod1 x y = mod x y == 0

mod2 :: Int -> Int -> Bool
mod2 x y = mod y x == 0

fibon :: Int -> Int
fibon 0 = 1
fibon 1 = 1
fibon n = fibon (n-1) + fibon (n-2)

listaFibs :: Int -> [Int]
listaFibs (-1) = []
listaFibs n = fibon n : listaFibs (n-1)

-- a.
todosPares :: [Int] -> Bool
todosPares xs = paratodo xs even

-- b.
hayMultiplo :: Int -> [Int] -> Bool
hayMultiplo n xs = existe xs (mod2 n)
-- c.
sumaCuadrados :: Int -> Int
sumaCuadrados 0 = 0
sumaCuadrados n =  sum (map (^2) [1..n])

-- d.
existeDivisor :: Int-> [Int] -> Bool
existeDivisor n xs = existe xs (mod1 n)

-- e.
esPrimo :: Int -> Bool
esPrimo 1 = False
esPrimo 2 = True
esPrimo 3 = True
esPrimo n = not (existeDivisor n [2..(n-1)])

-- f.
factor :: Int -> Int
factor x = product [1..x]

-- g.
multiplicaPrimos :: [Int] -> Int
multiplicaPrimos xs = product (filter esPrimo xs)

-- h.
esFib :: Int -> Bool
esFib n = n `elem` listaFibs n

-- i.
todosFib :: [Int] -> Bool
todosFib xs = paratodo xs esFib