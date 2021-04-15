newtype Sum n = Sum { getSum::n }
instance Num n => Monoid (Sum n) where
	mempty = Sum 0
	Sum x `mappend` Sum y = Sum (x + y)

main :: IO()
main = do