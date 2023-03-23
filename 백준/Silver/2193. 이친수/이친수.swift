let n = Int(readLine()!)!

var map = [0, 1]
for i in 2..<n+1 {
    map.append(map[i-1]+map[i-2])
}

print(map[n])