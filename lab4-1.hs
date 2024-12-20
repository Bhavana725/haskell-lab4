swapTuple :: (a, b) -> (b, a)
swapTuple (a, b) = (b, a)

main :: IO ()
main = do
    let tup1 = (1, 2)
    let swapped1 = swapTuple tup1
    putStrLn $ "Original tuple: " ++ show tup1
    putStrLn $ "Swapped tuple: " ++ show swapped1
    let tup2 = (9, 12)
    let swapped2 = swapTuple tup2
    putStrLn $ "Original tuple: " ++ show tup2
    putStrLn $ "Swapped tuple: " ++ show swapped2

