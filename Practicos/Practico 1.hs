{-
# EJERCICIO 1
* 1. esCero :: Int -> Bool, que verifica si un entero es igual a 0.
* 2. esPositivo :: Int -> Bool, que verifica si un entero es estrictamente mayor a 0.
* 3. esVocal :: Char -> Bool, que verifica si un caracter es una vocal en min ́uscula.
* 4. valorAbsoluto :: Int -> Int, que devuelve el valor absoluto de un entero ingresado.
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

{-
# EJERCICIO 2
* a) paratodo :: [Bool] -> Bool, que verifica que todos los elementos de una lista sean True.
* b) sumatoria :: [Int] -> Int, que calcula la suma de todos los elementos de una lista de enteros.
* c) productoria :: [Int] -> Int, que calcula el producto de todos los elementos de la lista de enteros.
* d) factorial :: Int -> Int, que toma un número n y calcula n!.
* e) Utilizá la función sumatoria para definir, promedio :: [Int] -> Int, que toma una lista de números no vacia y calcula el valor promedio (truncado, usando división entera).
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

{-
# EJECICIO 3
&4)
* a. ⟨∀i : 0 ≤ i < #xs : xs.i > 0 ⟩
* b. ⟨∃i : 0 ≤ i < #xs : xs.i = x ⟩
* d. ⟨∀i : 0 ≤ i < (#xs - 1) : xs.i = xs.(i + 1)⟩

&5) Para cada uno de los ítems del ejercicio anterior, evaluá la fórmula en las siguientes listas:
* a. xs = [-5, -3, 4, 8]
* b. xs = [11, 2, 5, 8]
!Para el ítem b), considerar x = 5

&Ejercicio:
* a) Identificá las variables libres de cada expresión y el tipo de cada una.
* b) Definí funciones que tomen como argumento las variables libres identificadas y devuelvan el resultado de la expresión. Atención: Tené en cuenta que en algunos casos es necesario definir funciones auxiliares.
* c) Evaluá las funciones tomando como argumento los valores señalados en 5
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

{-
# EJECICIO 4
&7)
* a. ⟨∏ i : 1 ≤ i ≤ n : i⟩
* b. ( ⟨∑i : 0 ≤ i < #xs : xs.i⟩ ) / #xs
* c. ⟨Max i : 0 ≤ i < #xs : xs.i⟩ < ⟨Min i : 0 ≤ i < #ys : ys.i⟩
* d. ⟨∃i, j : (2 ≤ i < n) ^ (2 ≤ j < n) : i ∗ j = n ⟩

&8)
* a. n = 5.
* b. xs = [6, 9, 3, 9, 8].
* c. xs = [−3, 9, 8], ys = [6, 7, 8].
* d. n = 5

&Ejercicio:
* a) Identificá las variables libres de cada expresi ́on y el tipo de cada una.
* b) Definí funciones que tomen como argumento las variables libres identificadas y devuelvan el resultado de la expresión. Atención: Tené en cuenta que en algunos casos es necesario definir varias funciones.
* c) Evaluá las funciones tomando como argumento los valores señalados en el ejercicio 8
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

{-
# EJERCICIO 5
&10) Implementá en Haskell la función que definiste en el ejercicio anterior
?Definí recursivamente una función Bool que verifica que todos los elementos de una lista son True
! todos.xs ≡ ⟨∀i : 0 ≤ i < #xs : xs.i⟩
-}
todos :: [Bool] -> Bool
todos [] = True
todos (x:xs)    | x = todos xs
                | otherwise = False

{-
# EJERCICIO 6
&11)
* a. n es potencia de 2.
* b. n es el elemento más grande de xs.
* c. El producto de los elementos pares de xs.
* d. La suma de los elementos en posición par de xs

&A partir de las expresiones del ejercicio anterior b) y c) y d)
* a. Identificá las variables libres de cada expresión y el tipo de cada una.
* b. Definí funciones que tomen como argumento las variables libres identificadas y devuelvan el resultado de la expresión. Atención: Tené en cuenta que en algunos casos es necesario definir varias funciones
-}

-- Funcion auxiliar para saber si un número está en una lista
esta :: [Int] -> Int -> Bool
esta [] a = False
esta (x:xs) a   | x == a = True
                | otherwise = esta xs a

onceB :: [Int] -> Int -> Bool
onceB [] a = False
onceB (x:xs) a  | not(esta (x:xs) a) = False
                | x == maximum (x:xs) && x == a = True
                | otherwise = onceB xs a

onceC :: [Int] -> Int
onceC [] = 1
onceC (x:xs)    | even x = x * onceC xs
                | otherwise = onceC xs

onceD :: [Int] -> Int
onceD [] = 0
onceD [a] = a
onceD [a,_] = a
onceD (x:y:xs) = x + onceD xs

{-
# EJERCICIO 7 Y 8
&27)
* a. paratodo.xs.T ≡⟨∀i : 0 ≤ i < #xs : T.(xs.i) ⟩
* b. existe.xs.T ≡⟨∃i : 0 ≤ i < #xs : T.(xs.i) ⟩
* c. sumatoria.xs.T = ⟨∑i : 0 ≤ i < #xs : T.(xs.i) ⟩
* d. productoria.xs.T = ⟨∏ i : 0 ≤ i < #xs : T.(xs.i) ⟩

& Programá las funciones definidas en el ejercicio 27. Para definir los tipos en haskell lo podés hacer de la siguiente manera:
* a. paratodo’ :: [a] -> (a -> Bool) -> Bool
* b. existe’ :: [a] -> (a -> Bool) -> Bool
* c. sumatoria’ :: [a] -> (a -> Int) -> Int
* d. productoria’ :: [a] -> (a -> Int) -> Int

& Teniendo en cuenta las funciones definidas en el Laboratorio 1 y en el Laboratorio 7, evaluá las expresiones como se muestra en el ejemplo
!paratodo [0, 0, 0, 0] esCero
!True
-}
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

{-
# EJERCICIO 9
&Utilizando las funciones del Laboratorio 7, programá las siguientes funciones por composición, sin usar recursión ni análisis por casos. Tenés en cuenta que puede ser necesario definir funciones auxiliares para que las definiciones sean más claras.
* a. todosPares :: [Int] -> Bool verifica que todos los números de una lista sean pares.
? b. hayMultiplo :: Int -> [Int] -> Bool verifica si existe algún número dentro del segundo parámetro que sea múltiplo del primer parámetro.
* c. sumaCuadrados :: Int -> Int, dado un número no negativo n, calcula la suma de los primeros n cuadrados, es decir 〈∑i : 0 ≤ i < n : i2〉. Ayuda: En Haskell se puede escribir la lista que contiene el rango de números entre n y m como [n..m].
? d. Programar la función existeDivisor::Int-> [Int] -> Bool, que dado en entero n y una lista ls, devuelve True si y solo si, existe algún elemento en ls que divida a na.
* e. Utilizando la función del apartado anterior, definí la función esPrimo:: Int -> Bool, que dado un entero n, devuelve True si y solo si n es primo. Ayuda: En Haskell se puede escribir la lista que contiene el rango de números entre n y m como [n..m].
? f. ¿Se te ocurre como redefinir factorial (ej. 3d ) para evitar usar recursión? 
* g. Programar la función multiplicaPrimos :: [Int] -> Int que calcula el producto de todos los números primos de una lista.
? h. Programar la función esFib :: Int -> Bool, que dado un entero n, devuelve True si y sólo si n está en la sucesión de Fibonacci. Ayuda: Realizar una función auxiliar fib :: Int -> Int que dado un n devuelva el n-ésimo elemento de la sucesión.
* i. Utilizando la función del apartado anterior, definí la función todosFib :: [Int] -> Bool que dada una lista xs de enteros, devuelva si todos los elementos de la lista pertenecen (o no) a la sucesión de Fibonacci
-}
-- funciones aux
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

{-
# EJERCICIO 10 Y 11
&10) Programá una función que dada una lista de números xs, devuelve la lista que resulta de duplicar cada valor de xs.
*a. Definila usando recursión.
?b. Definila utilizando la función map

&11) Programá una función que dada una lista de números xs, calcula una lista que tiene como elementos aquellos números de xs que son primos.
*a. Definila usando recursión.
?b. Definila utilizando la función filter.
*c. Revisá tu definición del ejercicio g. ¿Cómo podes mejorarla?
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
-- !AUX FUNCTIONS
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

{-
# EJERCICIO 12
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

{-
# EJERCICIO 13
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