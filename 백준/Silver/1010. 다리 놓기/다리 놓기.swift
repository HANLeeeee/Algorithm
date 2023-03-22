var dp = [[Int]](repeating: [Int](repeating: 0, count: 31), count: 31)

for i in 1...30 {
    dp[1][i] = i
}

for i in 2...30 {
    for j in i...30 {
        for k in stride(from: j-1, through: 1, by: -1) {
            dp[i][j] += dp[i-1][k]
        }
    }
}

let t = Int(readLine()!)!
for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0], m = input[1]
    print(dp[n][m])
}