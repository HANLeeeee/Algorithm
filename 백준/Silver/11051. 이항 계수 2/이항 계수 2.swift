let input = readLine()!.split(separator: " ").map{ Int($0)!}
let (n, k) = (input[0], input[1])

var map = Array(repeating: Array(repeating: -1, count: n+1), count: n+1)

for i in 1..<n+1 {
    map[i][0] = 1
    map[i][i] = 1
}

for i in 1..<n+1 {
    for j in 0..<n+1 {
        if map[i][j] < 0 {
            map[i][j] = (map[i-1][j-1] + map[i-1][j]) % 10007
        }
    }
}

print(map[n][k])