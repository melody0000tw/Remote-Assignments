//: [Previous](@previous)

import Foundation

/*:
### 2. Please declare a closure whose input type is Int, output type is Bool. The functionality of
this closure is to verify if the input is odd or not. Return true if it’s odd and vice versa.
 */


let isOddNumber = { $0 % 2 != 0 }

isOddNumber(9)
isOddNumber(10)

//: [Next](@next)
