import Data.Char
import Data.List

main = do
	line <- fmap (reverse . map toUpper) getLine
	putStrLn line