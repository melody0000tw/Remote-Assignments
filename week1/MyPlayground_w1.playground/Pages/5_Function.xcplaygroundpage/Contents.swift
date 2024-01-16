//: [Previous](@previous)

import Foundation

/*:
 Part 5: Function
 ===
 */

// 1. What are the return types in the following statements?
// String字串 和 Double浮點數


// 2. Please declare a function named multiply with two arguments a and b . This function won’t return any value and will only print out the result of a * b . Be noticed that we want to give the argument b a default value of 10.
func multiply(a: Int, b: Int = 10 ){
    print(a * b)
}
multiply(a: 20)

// 3. What’s the difference between argument label and parameter name in a function?
// argument label是在function外面（{}外面）要呼叫參數時實際要帶入的參數名字，如第18行的a
// parameter name是在function裡面（{}裡面）先拿來代替參數值的名字，在被呼叫後會被實際放進來的參數取代，如第16行的a跟b，會被20跟10取代

// 4. Please declare a function named greet with person as an argument label and name as a parameter name. This greet function will return a String. For example, if you call the function greet like this:"greet(person: "Luke")" It will return the String "Hello, Luke"

func greet(person: String) -> String{
    "Hello, \(person)"
}

print(greet(person: "Luke"))

//: [Next](@next)
