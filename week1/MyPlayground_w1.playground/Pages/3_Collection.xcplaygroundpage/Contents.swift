//: [Previous](@previous)

/*:
 Part 3: Collection
 ===
 */

// 1. Please initialize an empty array with String data type and assign it to a variable named .myFriends .
var myFriends = Array<String>()

// 2. According to Q1, now I have three friends, ‘Ian’, ‘Bomi’, and ‘Kevin’. Please help me to add their name into myFriends array at once.
myFriends += ["Ian", "Bomi", "Kevin"]

// 3. Oops, I forgot to add ‘Michael’ who is one of my best friends, please help me to add Michael to the end of myFriends array.
myFriends.append("Michael")

// 4. Because I usually hang out with Kevin, please move Kevin to the beginning of the .myFriends array.
myFriends.remove(at: 2)
myFriends.insert("Kevin", at: 0)

// 5. Use for...in to print all the friends in myFriends array.
for friend in myFriends {
    print(friend)
}

// 6. Now I want to know who is at index 5 in the myFriends array, try to find the answer for me. Please explain how you get the answer and why the answer is it.
let the5thFriend = myFriends.endIndex >= 5 ? myFriends[5] : nil
print(the5thFriend ?? "沒有第五位")
// 先確認myFriend這個Array的最後一個Index有沒有等於或大於五，若有就把第五位的值代入the5thFriend，若沒有就代入nil，並print出沒有第五位

// 7. How to get the first element in an array?
print(myFriends.first!)

// 8. How to get the last element in an array?
print(myFriends.last!)

// 9. Please initialize a Dictionary with keys of type String, value of type Int, and assign it to a variable named myCountryNumber.
var myCountryNumber = [String: Int]()

// 10. Please add three values 1, 44, 81 to myCountryNumber for keys ‘US’, ‘GB’, ‘JP’ respectively.
myCountryNumber["US"] = 1
myCountryNumber["GB"] = 44
myCountryNumber["JP"] = 81

// 11. Change the value of ‘GB’ from 44 to 0.
myCountryNumber["GB"] = 0

// 12. How to declare an empty dictionary?
let dict: Dictionary<String, Int> = [:]
let dict2: [String: Int] = [:]
let dict3 = Dictionary<String,Int>()
let dict4 = [String: Int]()

// 13. How to remove a key-value pair in a dictionary?
var fruit : [String: Int] = ["apple": 3, "banana": 10]

fruit["apple"] = nil // 方法1
fruit.removeValue(forKey: "banana") //方法2
print(fruit)

//: [Next](@next)
