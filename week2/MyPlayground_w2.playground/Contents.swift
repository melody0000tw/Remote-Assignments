import UIKit

/*:
 Part 1: Object-Oriented Swift
 ===
 */
/*:
 ### 1. eclare a class Animal with a property gender and a method eat() . The data type of gender should be enum Gender as below and when you call eat() method, it will print “I eat everything!”
 */

enum Gender {
    case male
    case female
    case undefined
}

class Animal {
    let gender: Gender
    func eat() {
        print("I eat everything!")
    }
    
    init(gender: Gender) {
        self.gender = gender
    }
}

let animal = Animal(gender: .female)
animal.eat()

/*:
 ### 2. Declare three classes: Elephant , Tiger , Horse that inherits from Animal and override the eat() method to print what they usually eat.
 */
class Elephant: Animal {
    override func eat() {
        print("I am an elephant. I usually eat fruits!")
    }
}

class Tiger: Animal {
    override func eat() {
        print("I am a tiger. I usually eat meats!")
    }
}

class Horse: Animal {
    override func eat() {
        print("I am a horse. I usually eat grass!")
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

let zoo = Zoo(weeklyHot: Tiger(gender: .undefined))

let tiger = Tiger(gender: .male)
let elephant = Elephant(gender: .female)
let horse = Horse(gender: .undefined)

zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse

/*:
 ### 4. What is an instance? What does Initilizer do in Class and Struct?
 
 `instance` 是指一個類型的實際例子，以上述來說，tiger就是Tiger這個class的實例。
 `Initializer` 則是在每個類型定中創建實例必須要用的函式，在`Class`是必要加入的，但在`Struct`中不寫也沒關係，因為Struct本身已經有內建的Initializer
 */

/*:
 ### 5. What’s the difference between Struct and Class ?
 - `Struct` v.s `Class`
    - `Struct` 是一種 Value Type，而 `Class` 是一種 Reference Type
    - 當 a = b ， 在 `Struct` 中 b 會複製 a 的值放入自己的，當 a 改動時 b 的值不變；而在 `Class` 中 b 會指向 a 的資料位置， 當 a 或 b 改動， 另一方的資料也會跟著變動
    - 若兩個 `Struct` 的 value 是相同的，代表他們是相同的；但在 `Class` 中，每筆資料都是獨一無二的，就算 Value 相同也是
 */

/*:
 ### 6. What’s the difference between reference type and value type ?
 
`Struct` 一種 Value Type，代表記憶體中儲存的值是一個 Value，而 `Class` 是一種 Reference Type，代表記憶體中儲存的東西是物件和他的ID
 */

/*:
 ### 7. What’s the difference between instance method and type method ?
 
 - `Instance method` 是實例的方法，需要創建類型與實例才可以使用，如上面的 `tiger.eat()` ，其中 `.eat()` 就是是一種 Instance method，需要有 實例 `tiger` 才能使用，類型 `Tiger` 本身不能使用
 - `Type method` 是類型共同的方法，不需要創建實例也可以使用，比如說 `Int.max()` ， 其中 `.max()` 就是 `Int` 這個類型的 Type method
 */

/*:
 ### 8. What does self mean in an instance method and a type method respectively?
 - `self` 在 `instance method` 中代表「呼叫這個method的實例本身」
 - `self` 在 `type method` 中代表「這個類型本身」
 */
