let n = Int(readLine()!)!

var map = Array(repeating: Array(repeating: 0, count: 10), count: 101)
for i in 0...9 {
    map[1][i] = 1
}

if n > 1 {
    for i in 2...n {
        for j in 0...9 {
            if j == 0 {
                map[i][j] = map[i-1][j+1] % 1000000000
            } else if j == 9 {
                map[i][j] = map[i-1][j-1] % 1000000000
            } else {
                map[i][j] = (map[i-1][j-1] + map[i-1][j+1]) % 1000000000
            }
        }
    }
}

var sum = 0
for i in 1...9 {
    sum = (sum + map[n][i]) % 1000000000
}

print(sum)