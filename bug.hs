This Haskell code attempts to perform a potentially unsafe operation by using the `unsafePerformIO` function to get around Haskell's pure nature.  This can lead to unexpected behavior and break referential transparency.

```haskell
import System.IO.Unsafe

myGlobal :: Int
myGlobal = unsafePerformIO $ do
  putStrLn "This is a side effect!"
  return 10

main :: IO ()
main = do
  print myGlobal
  print myGlobal
```

The problem is that `myGlobal` is initialized with a side effect.  While it *appears* to be a constant, each time it's accessed, the `putStrLn` line will execute again.