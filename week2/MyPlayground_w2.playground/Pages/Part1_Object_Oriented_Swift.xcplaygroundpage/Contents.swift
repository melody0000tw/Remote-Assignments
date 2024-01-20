//: [Previous](@previous)

import Foundation

/*:
 Part 1: Object-Oriented Swift
 ===
 
 */

/*:
 ### 1. Declare a class Animal with a property gender and a method eat() . The data type of gender should be enum Gender as below and when you call eat() method, it will print “I eat everything!”
 */

enum Gender {
    case male
    case female
    case undefined
}

class Animal {
    let gender: Gender
    
    init(gender: Gender) {
        self.gender = gender
    }
    func eat() {
        print("I eat everything!")
    }
}

let animal = Animal(gender: .male)
animal.eat()

/*:
 ### 2. Declare three classes: Elephant , Tiger , Horse that inherits from Animal and override the eat() method to print what they usually eat.
 */

class Elephant: Animal {
    override func eat() {
        print("I eat fruit.")
    }
}

class Tiger: Animal {
    override func eat() {
        print("I eat meat.")
    }
}

class Horse : Animal {
    override func eat() {
        print("I eat grass.")
    }
}

/*:
 ### 3. Declare a class Zoo with a property weeklyHot which means the most popular one in the zoo this week. The codes below can’t work correctly, please find what data type should A be and solve the problem. Note that tiger , elephant , and horse are instances of class Tiger, Elephant, and Horse respectively.

 */

class Zoo {
    var weeklyHot: Animal
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
}
let zoo = Zoo(weeklyHot: Tiger(gender: .female))
let tiger = Tiger(gender: .male)
let elephant = Elephant(gender: .female)
let horse = Horse(gender: .undefined)

tiger.eat()
elephant.eat()
horse.eat()

zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse

/*:
 ### 4. What is an instance? What does Initilizer do in Class and Struct?
 
 - `instance` 代表某個類型的實際例子，在上述例子中 tiger 就是類型 Tiger 的實例
 - `Initializer`則是創建實例初始化時會需要用到的函式，在class中必須要存在，但在Struct中不一定，因為Struct本身就有內建的init
 
 */

/*:
 ### 5. What’s the difference between Struct and Class ?
 - Struct v.s Class
    - Struct 是一種Value Type；Class是一種Reference Type
    - Strcut 中的常數是不能 mutate 的，；Class中的常數可以被mutate
    - 在 Struct 中，若兩筆資料的值相同，就會是相等的；但在Class中每筆資料都是獨一無二的，即便相同也不相等
 */

/*:
 ### 6. What’s the difference between reference type and value type ?
 
 - `Reference Type` 是透過指向來儲存資料，會共享資料，所以當宣告 `let b = a`之後，b 的資料中會指向 a 資料的位置，若 a 做了任何變動 b 也會跟著改變，class就是一種 reference type
 - `Value Type` 是透過複製來儲存資料的，資料間都是獨立的，所以當宣告 `let b = a`之後，b 會複製 a 的資料放入自己的記憶體，若 a 做了任何變動 b 仍不會有所改變，struct就是一種 value type
 
 */

/*:
 ### 7. What’s the difference between instance method and type method ?
 
 - `Instance method` 是一種「需要建立類型與實例才可以使用的method」，如上面的 `tiger.eat()`， `.eat()` 需要有 `tiger` 這個實例才可以使用
 - `Type method` 是一種「不用建立實例，類型本身就可以使用的method」，如 `Int.max()`，`.max()` 只需要 `Int` 這個類型就可以使用
 
 */

/*:
 ### 8. What does self mean in an instance method and a type method respectively?

 - `self` 在 instance method 中表示 「呼叫這個method的實例本身」
 - `self` 在 type method 中表示 「這個Type本身」
 
 */





//: [Next](@next)
