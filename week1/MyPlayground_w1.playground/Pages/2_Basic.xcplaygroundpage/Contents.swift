//: [Previous](@previous)

/*:
 
 Part2: Basic
 ===
 
 ### 1. Please explain the difference between let and var.
 let是指constants，一種宣告後再也不能改動的宣告變數與法，安全性較高；var 則是variable，宣告後可以再改動，用在需要時常變動值的變數宣告語法
 
 ### 2. In Swift, we usually define a variable through the syntax as below:
 `let pi: Double = 3.14`
 
 ### 3. Declare two constants x and y of type Int then assign any value to them. After that, please calculate the average of x and y and store the result in a constant named average .
 */
let x: Int = 10
let y: Int = 20
let average = ( x + y ) / 2
print(average)
/*:
 ### 4. Following Q3, now we want to save the average in a record system, but the system doesn’t accept 65 but 65.0.
    - Please solve this problem so that we can put the average in the record system.
    - Please explain the difference between ( 10 / 3 ) and ( 10.0 / 3.0 ).
 */
let averageDouble: Double = Double(average)
// 10/3算出來的值會是Int(整數)，10.0/3.0算出來的值會是Double(浮點數，有小數點)
/*:
 ### 5. Declare two constants that values are 10 and 3 each, then please calculate the remainder and save the result in a constant named remainder .
 */
let a: Int = 10
let b: Int = 3
let remainder = 10 % 3
/*:
 ### 6. Swift is a very powerful language that can infer the data type for you ( Type Inference ) while we still need to know the basics well. Please change the following codes into the ones with the type annotation.
 */
var flag: Bool = true
var inputString: String = "Hello world."
let bitsInBite: Int = 8
let averageScore:Double = 86.8
/*:
 ### 7. What is Type Inference in Swift?
 Type Inference是指型別推導，指的是在程式碼中若沒有特別指定資料的型別，Swift編譯的時候會根據邏輯推論資料的型別，如 `let A = 1 + 1`，因為1是整數，A就會被推論為整數；若 `let A = 1.0 + 1.0` ，因為1.0是浮點數，A就會被推論為浮點數。
 
 ### 8. What is the issue about this piece of code?
 當phonenumber這個儲存格被放入0987654321這筆資料時，資料型別就已經被推論為「整數」，則不能再放入資料型別為「字串」的資料，即"Hello World."
 
 ### 9. Compound assignment operators are very useful when programming. Please declare a variable   with initial value 22000, and use unary plus operator adding 28000 to salary, so it will be 50000 after this process.
 */
var salary: Int = 22000
salary += 28000
print(salary) // 50000
/*:
 ### 10.  You should notice that ‘=’ has a different meaning in programming. In the real world, .‘=’ means equal while in programming, ‘=’ means assign . You simply put the right hand side data into the left hand side variable or constant. Now please write down the Equality operator in Swift.
 ` == `
 */


//: [Next](@next)
