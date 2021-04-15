import System.IO(
	Handle, --파일 핸들
	FilePath, --파일 위치
	IOMode(ReadMode), --파일 읽기 모드
	openFile, --파일 열기
	hGetLine, --파일 핸들의 라인 가져오기
	hPutStr, --쓰기
	hClose, --닫기
	hIsEOF, --파일 끝인지 체크
	stderr) --오류 출력(출력)

import Control.Monad(when)

dumpFile :: Handle -> FilePath -> Integer -> IO ()
dumpFile handle filename lineNumber = do
	end <- hIsEOF handle
	when(not end) $ do
		line <- hGetLine handle
		putStrLn line
		dumpFile handle filename $ lineNumber + 1

main :: IO ()
main = do
	hPutStr stderr "Filename: "
	filename <- getLine
	handle <- openFile filename ReadMode
	dumpFile handle filename 1
	hClose handle