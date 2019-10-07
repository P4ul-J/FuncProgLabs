--1
  -- a
a = take 3 ['n', 'u', 'f', 'F', 'P']  -- "nuf"
  --b
b = reverse ['n', 'u', 'f', 'F', 'P'] --
  --c
c = ['n', 'u', 'f', 'F', 'P'] == "nufFP"-- true
  --d
d1 = head ['n', 'u', 'f', 'F', 'P']
d2 = take 1 ['n', 'u', 'f', 'F', 'P']
d3 =['n', 'u', 'f', 'F', 'P'] !! 1
  --e
e1 =['n', 'u', 'f', 'F', 'P']!!4
e2 = drop 4 ['n', 'u', 'f', 'F', 'P']
  --f
f = tail ['n', 'u', 'f', 'F', 'P']
  --g
g = drop 3 ['n', 'u', 'f', 'F', 'P']
  --h
h1 = reverse (take 3 ['n', 'u', 'f', 'F', 'P'])
h2 =drop 2 (reverse ['n', 'u', 'f', 'F', 'P'])

--2
a2 =tail [4,1] ++ reverse [3, 2] ++ take 1 [4,1] -- last take change with drop 1

--3
a3 = [3,6..99]
--4
  --a false list of a empty list
  
