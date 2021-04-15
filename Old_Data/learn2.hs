hash :: String -> [[Char]]
hash = \str -> case str of
		[] -> [] --입력을 안 받을 경우 빈 문자열 그대로 출력
		 map (:[]) str --있다면 분리하여 출력