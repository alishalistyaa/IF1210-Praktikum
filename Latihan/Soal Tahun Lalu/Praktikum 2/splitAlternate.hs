splitAlternate:: [Char] -> ([Char],[Char])

splitAlternate li = [x | x <- li, odd x], [x | x <- li, even x]