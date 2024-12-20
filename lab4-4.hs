listZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
listZipWith _ [] [] = []
listZipWith f (x:xs) (y:ys) = f x y : listZipWith f xs ys
listZipWith _ _ _ = []

main :: IO ()
main = do
    print $ listZipWith (+) [1, 2, 3] [4, 5, 6]
    print $ listZipWith (*) [1, 2, 3] [4, 5, 6]

