//: [Previous](@previous)

import Foundation

/*:
 Part 4: Error Handling in Swift
 ===

 ### Read the code above first and paste it in the playground file, there is an error inside the code. Please solve the error by adding a piece of code in the file. Call guess(number:) and pass 20 as the argument after you fix the problem.

 */

enum GuessNumberGameError: Error {
    case wrongNumber
}
class GuessNumberGame {
    var targetNumber = 10
    func guess(number: Int) throws {
        guard number == targetNumber else {
//            print("Wrong guess!")
            throw GuessNumberGameError.wrongNumber
        }
        print("Guess the right number: \(targetNumber)")
    }
}


try GuessNumberGame().guess(number:20)

//: [Next](@next)
