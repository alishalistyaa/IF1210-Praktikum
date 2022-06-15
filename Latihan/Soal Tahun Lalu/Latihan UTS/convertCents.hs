
convertCents :: Int -> (Int, Int, Int, Int)
convertCents s =
    let 
        q = div s 25
        d = div (s-(25*q)) 10
        n = div (s-(25*q)-(10*d)) 5
        p = s-(25*q)-(10*d)-(5*n)
    in (q,d,n,p)