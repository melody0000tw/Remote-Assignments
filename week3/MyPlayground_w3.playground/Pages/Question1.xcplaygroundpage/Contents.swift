import UIKit

/*:
 ### 1. What is a closure ? How to execute a closure?
 
 - Closure是什麼？
     - Closure 是一段可以被傳遞的code，其實 function 就是 Closure的一種，另一種常見的 Closure 就是 Closure expression。
     - Closure expression 有點像是把一串程式碼變成一個值的方式，讓他用更短的方式去傳遞或應用。比如說 `difference == 0` 這段程式碼會被編譯成一個值： `true` 或 `false` 而 Closure expression 就像是把一個 function 裡面的功能變成一個值拿來傳遞
     - Closure expression 適合用來代替只會被執行一次的 function，可以用inline的方式放入其他function中
 
 - 如何執行一個Closure
    - 以`sorted(by)`為例，closure可以被放入變數中被傳遞，也可以直接用inline的方式變成參數
 */


typealias fruitTpye = (name: String, price: Int)
let fruits: [fruitTpye] = [("banana", 40), ("apple", 10), ("orange", 90), ("kiwi", 55)]

// 放入變數傳遞
let sortedClosure = { (a: fruitTpye, b: fruitTpye) -> Bool in
    a.price > b.price
}
let sortedFruits = fruits.sorted(by: sortedClosure)
print(sortedFruits)

// 直接帶入參數中
let sortedFruitsInlineClosure = fruits.sorted() { a, b in
    a.price > b.price
}
print(sortedFruitsInlineClosure)

//: [Next](@next)
