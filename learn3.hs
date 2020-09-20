import Data.Char

let2int :: Char -> Int
let2int c = ord c - ord 'a'  --ord '문자'는 문자를 아스키 코드로 만들어준다
int2let :: Int -> Char
int2let c = chr(c + ord 'a') --int형에서 문자로 변경

shift :: Int -> Char -> Char
shift n c = int2let((let2int c + n) `mod` 26)

encode :: Int -> String -> String
encode n str = [shift n c | c <- str]