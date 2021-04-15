sum'::(Num a) => [a] -> a
sum' arr@(x:xs)
    | arr == [] = 0
    | otherwise = x + sum' xs