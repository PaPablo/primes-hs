-- List of number to test primality with
longList n = [1..n]
optimizedList n = [2..floor (sqrt $ fromIntegral n :: Double)]

-- list of remainders of dividing n by each element of l
listOfRemainders n l = map (n `mod`) l

-- List of remainders, filtered by 0s
remaindersEqualToZero n l = filter (==0) $ listOfRemainders n l

isPrime n =  (length $ remaindersEqualToZero n $ optimizedList n) == 2

-- Old version of isPrime using the long list
isPrimeLong n = (length $ remaindersEqualToZero n $ longList n) == 2
