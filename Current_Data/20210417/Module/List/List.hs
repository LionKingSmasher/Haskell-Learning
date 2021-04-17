import Data.List

main = do
	putStrLn $ concat $ concatMap (replicate 4) ["ab", "c"]; -- replicate는 반복, concatMap은 합침
	putStrLn $ nub "abcabfffdgs piioaaa"