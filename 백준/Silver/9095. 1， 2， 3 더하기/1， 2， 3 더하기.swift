import Foundation

var map = Array(repeating: 0, count: 11)
map[0] = 1
map[1] = 1
map[2] = 2

for i in 3..<11 {
    map[i] = map[i-1] + map[i-2] + map[i-3]
}

let t = Int(readLine()!)!
for _ in 0..<t {
    let n = Int(readLine()!)!
    print(map[n])
}