import UIKit

// 1.  Map : In Swift, the map function is a higher-order function that transforms elements of a collection (like an array) using a closure. It returns a new array containing the transformed elements.

let num = [10,20,30,40,50,60]
let newNum = num.map {$0 - 4}
print(newNum)
let seq = num.map {$0 + $0}
print(seq)

//2. compactMap(_:) The compactMap(_:) function in Swift is a higher-order function that transforms the elements of a collection and removes any nil values from the result.

let array = [1, 2, nil, 4, nil, 6]
let result = array.compactMap { $0.map {$0 + $0} }
print(result)

//3. flatMap(_:) The flatMap(_:) function in Swift is a higher-order function used to transform elements of a collection and then flatten the resulting collection. It’s particularly useful when working with nested collections or optionals.

let words = ["hello", "world"]
let letters = words.flatMap { $0.map { String($0) } }
print(letters)  // Output: ["h", "e", "l", "l", "o", "w", "o", "r", "l", "d"]


let nestedOptionalNumbers: [[Int?]] = [[1, 2, nil], [3, nil, 4], [5]]
let flatNumbers = nestedOptionalNumbers.flatMap { $0.compactMap { $0 .map {$0 * $0 }} }
print(flatNumbers)  // Output: [1, 2, 3, 4, 5]

// 4. filter(_:) :

let Shapes = ["Corcle","Square","Trangle","Trangle","Trangle","Square","Square","Square","Corcle","Corcle"]
let circle = Shapes.filter {$0 == "Corcle"}
let Square = Shapes.filter {$0 == "Square"}
let Trangle = Shapes.filter {$0 == "Trangle"}
print(circle,Square,Trangle)

let users = [
    ["name": "Alice", "age": 25,"City":"NY"],
    ["name": "Bob", "age": 17,"City":"PHL"],
    ["name": "Charlie", "age": 30,"City":"NY"]
]

let adult = users.filter{ ($0["age"] as? Int ?? 0) < 18}
let city = users.filter{ ($0["City"] as? String) == "NY"}

print(adult)
print(city)

// 5. contains(_:) : The contains(_:) function in Swift is used to check if a collection (array, set, string, etc.) contains a specific element. It returns a Boolean (true or false) indicating whether the element is present.

let name = "Naresh Chouhan"

print(name.contains("p"))
print(name.contains("h"))
print(name.contains("o"))

// 6 first(where:):

let numbers = [3, 7, 10, 15, 20]
if let firstEven = numbers.first(where: { $0 % 2 == 0 }) {
    print(firstEven)  // Output: 10
} else {
    print("No even number found")
}

let items = ["Apple", "Banana", "Grapes", "Orange", "Strawberry"]

var firstLognWord: String? {
    items.first(where: {$0.count > 5})
}

var lastItem:String? {
    items.last(where: {$0.count < 5})
}

print("Last Item \(String(describing: lastItem))")

let scores = ["Alice": 85, "Bob": 92, "Charlie": 78]

if let highScorer = scores.first(where: { $0.key == "Bob" }) {
    print("\(highScorer.key) scored \(highScorer.value)")  // Output: "Bob scored 92"
}



// 7 last(where:):The last(where:) function in Swift is used to find the last element in a collection that satisfies a given condition. If no element meets the condition, it returns nil.

let numbersq = [3, 7, 10, 15, 20]

if let lastEven = numbersq.last(where: { $0 % 2 == 0 }) {
    print(lastEven)  // Output: 20
} else {
    print("No even number found")
}

// 8 allSatisfy(_:) : The allSatisfy(_:) function in Swift is used to check whether all elements in a collection satisfy a given condition. It returns true if every element meets the condition, otherwise false.

let eventNum = [2, 4, 6, 8, 10]
let allEven = eventNum.allSatisfy { $0 % 2 == 0 }
print(allEven)

// 9 reduce(_:_:): The reduce(_:_:) function in Swift is used to combine all elements of a collection into a single value using an initial value and a closure that processes each element.

let myNum =  [2, 4, 6, 8, 10]
let sum = myNum.reduce(0) {$0 + $1}

print(sum)

let num3 = [1, 2, 3, 4, 5]

let sumw = num3.reduce(into: 0){
    result,num  in
    result += num
}

print(sumw)

let text = "naresh"
let charCount  = text.reduce(into: [Character: Int]()) {
    counts, char in
    counts[char,default: 0] += 1
}

print(charCount)
