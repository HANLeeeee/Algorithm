let n = Int(readLine()!)!

var map = Array(repeating: 0, count: 1001)
map[1] = 1
map[2] = 3

if n > 2 {
    for i in 3..<n+1 {
        map[i] = (map[i-1] + 2*map[i-2]) % 10007
    }
}

print(map[n])