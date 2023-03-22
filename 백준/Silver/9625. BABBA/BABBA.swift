import Foundation

var map = Array(repeating: -1, count: 46)
map[0] = 0
map[1] = 1

for i in 2..<46 {
    map[i] = map[i-2] + map[i-1]
}

let k = Int(readLine()!)!
print(map[k-1], terminator: " ")
print(map[k])