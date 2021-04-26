import PersonData

main :: IO ()
main = do
	let guy = Person "Shin" "Hyun" "Kyu"
	putStrLn $ fullName guy