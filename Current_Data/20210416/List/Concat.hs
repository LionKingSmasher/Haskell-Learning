import Data.List

main = do
	putStrLn $ concat ["abc", "fgh"]
	putStrLn $ concat $ concatMap (replicate 4) ["a", "b"]