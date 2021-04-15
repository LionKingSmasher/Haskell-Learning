productArr :: [Int] -> Int --입력으로 Int형으로 된 배열을 받으며, 출력은 Int형으로 정한다
productArr [] = 1 --비어있을 경우 1을 출력
productArr (n : ns) = n * productArr ns