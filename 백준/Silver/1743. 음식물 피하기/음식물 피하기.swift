let num = readLine()!.split(separator: " ").map{ Int($0)!}
let n = num[0]
let m = num[1]
let k = num[2]
var checkArr = [[Bool]](repeating: Array(repeating: false, count: m+1), count: n+1)
var arr = [[Bool]](repeating: Array(repeating: false, count: m+1), count: n+1)
for _ in 0..<k {
    let input = readLine()!.split(separator: " ").map{ Int($0)!}
    let r = input[0]
    let c = input[1]
    
    arr[r][c] = true
}

var dx = [1, 0, -1, 0]
var dy = [0, 1, 0, -1]

func isValid(y: Int, x: Int) -> Bool {
    return 1 <= y && y <= n && 1 <= x && x <= m ? true : false
}

func bfs(r: Int, c: Int) -> Int {
    checkArr[r][c] = true
    var count = 1
    for k in 0..<4 {
        let nextY = r + dy[k]
        let nextX = c + dx[k]
        
        if isValid(y: nextY, x: nextX) && !checkArr[nextY][nextX] && arr[nextY][nextX] {
            count += bfs(r: nextY, c: nextX)
        }
    }
    return count
}

var cnt = 0
for i in 1...n {
    for j in 1...m {
        if arr[i][j] {
            cnt = max(bfs(r: i, c: j), cnt)
        }
    }
}
print(cnt)