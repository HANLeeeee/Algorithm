let inputArr = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m) = (inputArr[0], inputArr[1])
let MOD = 1000000007

var board: [[Int]] = []
for _ in 1...n {
    board.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

var cache = Array(repeating: Array(repeating: 0, count: m), count: n)

for i in 0...m-1 {
    cache[0][i] = board[0][i]
}

if n <= 1 {
    cache[0][0] = board[0][0]
} else {
    for i in 1...n-1 {
        for j in 0...m-1 {
            if board[i][j] == 0 {
                continue
            }
            if j != 0 {
                cache[i][j] += cache[i-1][j-1]
                cache[i][j] %= MOD
            }
            
            cache[i][j] += cache[i-1][j]
            cache[i][j] %= MOD
            
            if j != m-1 {
                cache[i][j] += cache[i-1][j+1]
                cache[i][j] %= MOD
            }
        }
    }
}


var answer = 0
for i in 0...m-1 {
    answer += cache[n-1][i]
    answer %= MOD
}

print(answer)