data TrafficLight = Red | Yellow | Grenn --자료형 TrafficLight는 Red, Yello, Green을 가진다.

test :: (Integral a) => a -> a --여기서 integral은 int와 다르지 않다
test x = x * x

head' :: [a] -> a --a는 자료형이 아니라, 타입 변수를 뜻하며, 모든 변수가 들어갈 수 있으나, 들어갈 때의 a의 자료형과 출력할 때 a의 자료형이 같아야한다.
head' [] = error "Error" --아무것도 없다면 Error 메시지 출력
head' (x:_) = x  --있다면 첫번째 배열 인덱스 출력

capital :: String -> String
capital "" = "Empty"
capital all@(x:xs) = "Word: " ++ all ++ " letter: " ++ [x] -- @앞에 있는 것은 그냥 입력한 전체, 즉 입력된 원래 변수를 의미한다.

instance Show TrafficLight where --Show라는 클래스 안 에는 show 함수가 포함 되어 있다.
	show Red = "Red Light" --자료형 데이터로 Red를 받는다면, Red Light로 출력
	show Blue = "Blue Light" --출력만 다르고 이하 동문
	show Yellow = "Red Light" --출력만 다르고 이하 동문