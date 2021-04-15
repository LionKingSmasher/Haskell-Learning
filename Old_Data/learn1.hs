module Lecture7 where

type Parser a = String -> [(a, String)]

item :: Parser Char
item = \xs -> case xs of
			[] -> [] --입력을 넣었을 때, 입력이 비어있으면, 빈 문자열 []을 출력한다.
			(x:xs) -> [(x, xs)] --입력이 있을 때는, [(x, xs)] 꼴로 표현한다. ex) item "Hello World" = [('H', "ello World")]

(+++) :: Parser a -> Parser a -> Parser a
p +++ q = \xs -> case p xs of
				[] -> parse q xs
				[(y, ys)] -> [(y, ys)]

parse :: Parser a -> String -> [(a, String)] --설명 인자는 자료형이 각각 Parser a와 String인 것을 입력 받았을 때, [(a, String)] 꼴로 출력한다.
--위를 추가 설명을 해본다면 람다대수로 표현하였을 때,  x->(y->x+y)의 괄호를 없애어 x->y->x+y를 하였을 때, 자동으로 괄호를 쳐준다고 보면 된다.
--또한 (x, y) -> x + y로 표현한 것과 같다.
parse x ps = x ps
return_ :: a -> Parser a
return_ v = \xs -> [(v, xs)]

num = [x | x <- [1..]]