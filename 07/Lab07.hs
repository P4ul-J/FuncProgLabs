--Task 4

data Result a = Error {
    id :: Integer,
    desciption :: String
} | NoError a


--Task 5
bindE :: Result t -> (t -> Result a) -> Result a
bindE (Error a b) _ = Error a b
bindE (NoError a) f = f a  