let n = Int(readLine()!)!

var map = Array(repeating: 0, count: n+1)
map[0] = 0
map[1] = 1

for i in 2..<n+1 {
    map[i] = map[i-2] + map[i-1]
}

print(map[n])