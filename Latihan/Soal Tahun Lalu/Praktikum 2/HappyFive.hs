module HappyFive where
-- hehehe halo kak ini sebenarnya bukan soal saya tapi saya ingin coba sesuatu

happyFive :: [Int] -> [Int]
happyFive li = [x | x <- li, mod x 5 == 0 || (x >= 50 && x<= 59)]
