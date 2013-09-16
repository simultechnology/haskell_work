
f1 x = 4 * x^2 + (x^3 * (-3))

f2 x = if x >= -1 && x <= 1
        then (True, f1 x)
        else (False, 0)

-- 5x + 3y = 37を満たすx, yのタプルを返す
f3 x  = (x, (37 - 5 * x) / 3)
-- 17x + 5y = 8を満たすx, yのタプルを返す
f3' x = (x, (8 - 17 * x) / 5)

fa x = (x, (13 - 221 * x) / 754)

fa' x =  (x, 48 / x)

isInt x = x == fromInteger (round x)

-- 整数のみからなるタプルを返す
f4 f =  [ f y | y <- [1..], isInt (snd (f y)) == True]

f5 x f = take x (zip (map round (map fst (f4 f))) (map round (map snd (f4 f))))
