import Foundation

let n = Int(readLine()!)!

var map = Array(repeating: 0, count: 91)
map[1] = 1
map[2] = 1

for i in stride(from: 3, through: n, by: 1) {
    map[i] = map[i-2] + map[i-1]
}

print(map[n])