//: [Previous](@previous)

import Foundation

/*:
 ### 3. Please complete the following function that prints a triangle made of asterisks.
 */

func printTriangle(layers: Int) {
    for layers in 1...layers {
        for asterisk in 1...layers{
            print("*", terminator: "")
        }
        print("\n")
    }
}

printTriangle(layers: 5)


//: [Next](@next)
