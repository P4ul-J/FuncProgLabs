data Event a = Lecture | Lab a | Exercise deriving Show

type Professor = String 
newtype Title = Title String deriving Show
data Course a = Course Professor Title [Event a] deriving Show

type PathToFile = String 
data EventDescription = Lab2 { 
    topic :: String 
    ,assistants :: [String] 
    } deriving Show

isLab :: Event a -> Bool 
isLab (Lab _ ) = True
isLab _ = False

giveMeAllLabs :: Course EventDescription -> [Event EventDescription] 
giveMeAllLabs (Course _ _ es) = filter isLab es

labs = giveMeAllLabs (Course "Schupp" (Title "Functional␣Programming") [Lecture])


-----------------------------------------------------------------

ex02 = Course "Prof. Brain" (Title "Esoteric Programming Language") [Lecture, Exercise, Lab (Lab2 "Brainfuck and Taxi" ["Pinky"]) ]

------------------------------------------------------------------

-- Task 3

labTopics :: Course EventDescription -> [String]
labTopics a = [ s | Lab (Lab2 s _) <- giveMeAllLabs a]


