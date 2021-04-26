module PersonData
(Person(..),
 firstName,
 middleName,
 lastName,
 fullName
) where

data Person = Person String String String deriving Show

firstName :: Person -> String
firstName (Person firstname _ _) = firstname 

middleName :: Person -> String
middleName (Person _ middlename _) = middlename

lastName :: Person -> String
lastName (Person _ _ lastName) = lastName

fullName :: Person -> String
fullName (Person firstname middlename lastname) = firstname ++ " " ++ middlename ++ " " ++ lastname