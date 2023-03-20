let input = readLine()!.split(separator: " ").map{ Int($0)!}
let (n, m) = (input[0], input[1])

var map = Array(repeating: Array(repeating: -1, count: m+1), count: n+1)

var candyArr = [[Int]]()
candyArr.append(Array(repeating: 0, count: m+1))
for _ in 0..<n {
    candyArr.append([0] + readLine()!.split(separator: " ").map{ Int($0)!})
}

func dp(y: Int, x: Int) -> Int {
    if y == 0 || x == 0 {
        map[y][x] = 0
    }
    if map[y][x] < 0 {
        map[y][x] = candyArr[y][x] + max(dp(y: y-1, x: x), dp(y: y, x: x-1))
    }
    return map[y][x]
}

print(dp(y: n, x: m))