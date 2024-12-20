averageMarks :: (String, Int, [Int]) -> Double
averageMarks (_, _, []) = 0
averageMarks (_, _, marks) = fromIntegral (sum marks) / fromIntegral (length marks)

main :: IO ()
main = do
    let students = [("Hira", 1, [90, 92, 98]), ("Mira", 2, [44, 78, 90]), ("Aira", 3, [88, 85, 90])]
    let averages = [(name, averageMarks student) | student@(name, _, marks) <- students]
    mapM_ (putStrLn . (\(name, avg) -> name ++ ": " ++ show avg)) averages

