//: [Previous](@previous)

import Foundation

/*:
 Part 2: Enumerations and Optionals in Swift
 ===

 */

/*:
 ### 1. There are several gasoline types, 92, 95, 98, and diesel that we can use enum to model them.
    - Please declare an enum named Gasoline to model gasoline.
    - Every kind of gasoline has its price. Please declare a computed property named price and a method named getPrice separately in Gasoline enum that both will return different prices depending on different gasoline.
    - Please establish raw values for . The data type of raw value should be String. For example, should be “92”.
    - Please explain what enum associated value is and how it works.
 
 */

enum Gasoline: String {
    case oil92 = "92", oil95 = "95", oil98 = "98", diesel = "diesel"
    
    var price: Double {
        return self.getPrice()
    }
    
    func getPrice() -> Double {
        switch self {
        case .oil92:
            return 29.0
        case .oil95:
            return 30.5
        case .oil98:
            return 32.5
        case .diesel:
            return 27.8
        }
    }
}


let gasoline = Gasoline.oil98
print(gasoline.price)


/*:
 - `associated value` 像是可以客製化每個case的值，和 rawValue 只能選一個
 */


/*:
 ### 2. Optional is a very special data type in Swift. Take var a: Int? = 10 for example, the value of a will be nil or Int . You should have learned how to deal with Optional.
 
    - People would like to have pets, but not everyone could have one. Declare a class Pet with name property and a class People with pet property which will store a Pet instance or nil. Please try to figure out what data type is suitable for these properties in Pet and People.
    - Please create a People instance. Use guard let to unwrap the pet property and print its name.
    - Please create another People instance. Use if let to unwrap the pet property and print its name.
 
 */

class Pet {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class People {
    var pet: Pet?
    
    // have pet
    init(pet: Pet) {
        self.pet = pet
    }
    
    // don't have pet
    init(){
        self.pet = nil
    }
}

// ----------guard let--------------//

let pet = Pet(name: "Stingson")
let peopleHavePet = People(pet: pet)

func printPetName(people: People) {
    guard let pet = people.pet else {
        print("I don't have a pet.")
        return
    }
    print(people.pet!.name)
    return
}

// ----------if let--------------//

printPetName(people: peopleHavePet)

let peopleDontHavePet = People()
func printPetName1(people: People) {
    if let pet = people.pet {
        print(people.pet!.name)
        return
    }else {
        print("I don't have a pet.")
        return
    }
}

printPetName1(people: peopleDontHavePet)


//: [Next](@next)
