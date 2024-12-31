# Haskell unsafePerformIO Bug

This repository demonstrates a common error in Haskell programming: the misuse of `unsafePerformIO`.  The `unsafePerformIO` function allows you to bypass Haskell's pure functional nature, introducing side effects that can cause unexpected and non-deterministic behavior.  This example shows how this can lead to problems and provides a solution using pure functional techniques.

## Bug Description

The `bug.hs` file shows an example of `unsafePerformIO` being used to initialize a global variable with a side effect.  This makes the variable's value dependent on the execution order, breaking referential transparency and leading to unpredictable results. 

## Solution

The `bugSolution.hs` file demonstrates a safer approach using pure functions and avoiding `unsafePerformIO` entirely. This ensures deterministic and predictable behavior.