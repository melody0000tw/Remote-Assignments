//: [Previous](@previous)

import Foundation

/*:
 Part 3: Protocol in Swift
 ===

 */

/*:
 ### 1. Declare a struct Person with a name property type String and a protocol name PoliceMan . There is only one method arrestCriminals with no argument in the protocol.
 ### 2. Make struct Person conform to PoliceMan protocol.
 ### 3. Declare a protocol ToolMan with a method fixComputer that has no argument.
 ### 4. Add a property toolMan to the struct Person with data type ToolMan .
 ### 5. Declare a struct named Engineer that conforms to the ToolMan protocol.
 ### 6. Create a Person instance with the name “Steven” and also create the relative data you need to declare this instance.
 */

protocol PoliceMan {
    func arrestCriminals()
}

extension PoliceMan {
    func arrestCriminals() {
        print("Arrest criminal!")
    }
}

protocol ToolMan {
    func fixComputer()
}

extension ToolMan {
    func fixComputer() {
        print("fix computer!")
    }
}

struct Person: PoliceMan  {
    let name: String
    let toolMan: ToolMan
}

struct Engineer: ToolMan {}

let engineer = Engineer()
let person = Person(name: "Steven", toolMan: engineer)

print(person.arrestCriminals())
print(person.toolMan.fixComputer())



//: [Next](@next)
