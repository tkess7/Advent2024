import Foundation

var lhs: [Int] = []
var rhs: [Int] = []

let url = Bundle.main.url(forResource: "day1input", withExtension: "txt")
let data = try String(contentsOf: url!, encoding: .utf8)

let rows = data.split(separator: "\n")

for row in rows {
    let split = row.split(separator: " ")
    lhs.append(Int(split.first!)!)
    rhs.append(Int(split.last!)!)
}

let sortedLeft = lhs.sorted()
let sortedRight = rhs.sorted()

let zipped = zip(sortedLeft, sortedRight)
let result = zipped.map { left, right in
    return abs(left - right)
}.reduce(0, +)
