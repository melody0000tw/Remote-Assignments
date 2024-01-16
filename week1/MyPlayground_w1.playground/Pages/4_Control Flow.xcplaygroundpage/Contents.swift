//: [Previous](@previous)

import Foundation

/*:
 Part 4: Control Flow
 ===
 */

// 1. Please use For-In loop and Range to print the last three members in the lottoNumbers array
let lottoNumbers = [10, 9, 8, 7, 6, 5]
print(lottoNumbers[3...5])

// 2. Please use a for-in loop to print the results as the images listed below respectively (through .lottoNumbers.):
for number in lottoNumbers.sorted(by: <) {
    print(number)
}

for number in lottoNumbers {
    if (number % 2 == 0) {
        print(number)
    }
}

// 3. Please use a while loop to solve the Q2.

var index = lottoNumbers.count - 1
while (index >= 0) {
    print(lottoNumbers[index])
    index -= 1
}

var index1 = 0
while (index1 <= lottoNumbers.count - 1) {
    let number = lottoNumbers[index1]
    if (number % 2 == 0) {
        print(number)
    }
    index1 += 1
}

// 4. Please use a repeat-while loop to solve Q2.
var index2 = lottoNumbers.count - 1
repeat {
    print(lottoNumbers[index2])
    index2 -= 1
} while (index2 >= 0)

var index3 = 0
repeat {
    let number = lottoNumbers[index3]
    if (number % 2 == 0) {
        print(number)
    }
    index3 += 1
} while (index3 <= lottoNumbers.count - 1)


// 5. What are the differences between while and repeat-while?
// while loop 是先審核條件，條件符合再執行程式碼；
// repeat-while 是先執行程式碼再審核條件，條件通過才會執行下一次loop，所以repeat-while無論如何都會執行一次

// 6. Declare a variable isRaining to record the weather. Please write a statement that if the weather is raining, print “It’s raining, I don’t want to work today.”, otherwise print “Although it’s sunny, I still don’t want to work today.”

let isRaining: Bool = false
if (isRaining) {
    print("It’s raining, I don’t want to work today.")
} else {
    print("Although it’s sunny, I still don’t want to work today.")
}

// 7. In a company, we might use numbers to represent job levels. Let’s make an example. We use 1 for the Member, 2 for Team Leader, 3 for Manager, and 4 for Director. Now, declare a variable named jobLevel and assign a number to it. If the jobLevel number is in our list, print the relative job title name; if not, just print “We don't have this job”. Please use the if-else statement and the switch statement to complete this requirement separately.

let jobLevel: Int = 3
if (jobLevel == 1) {
    print("Member")
} else if (jobLevel == 2) {
    print("Team Leader")
} else if (jobLevel == 3) {
    print("Manager")
} else if (jobLevel == 4) {
    print("Director")
} else {
    print("We don't have this job")
}

switch jobLevel {
case 1:
    print("Member")
case 2:
    print("Team Leader")
case 3:
    print("Manager")
case 4:
    print("Director")
default:
    print("We don't have this job")
}


//: [Next](@next)
