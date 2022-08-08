let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let x = input[0]
let y = input[1]
let w = input[2]
let h = input[3]

var minY = h-y > y ? y : h-y
var minX = w-x > x ? x : w-x
print(minY-minX > 0 ? minX : minY)