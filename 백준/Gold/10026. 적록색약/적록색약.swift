import Foundation

let n = Int(readLine()!)!

var checkArr = Array(repeating: Array(repeating: false, count: n), count: n)
var map = [[String]]()

for _ in 0..<n {
    let input = Array(readLine()!).map {String($0)}
    map.append(input)
}

let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]

func isValid(y: Int, x: Int) -> Bool {
    return 0 <= y && y < n && 0 <= x && x < n ? true : false
}

func dfs(y: Int, x: Int, color: String) {
    checkArr[y][x] = true

    for k in 0..<4 {
        let nextY = y + dy[k]
        let nextX = x + dx[k]
        
        if isValid(y: nextY, x: nextX) && !checkArr[nextY][nextX] && color.contains(map[nextY][nextX]) {
            dfs(y: nextY, x: nextX, color: color)
        }
    }
}

var count = 0
for i in 0..<n {
    for j in 0..<n {
        if !checkArr[i][j] {
            count += 1
            checkArr[i][j] = true
            dfs(y: i, x: j, color: map[i][j])
        }
    }
}

print(count, terminator: " ")

checkArr = Array(repeating: Array(repeating: false, count: n), count: n)
count = 0
for i in 0..<n {
    for j in 0..<n {
        if !checkArr[i][j] {
            count += 1
            checkArr[i][j] = true
            let color = map[i][j] == "B" ? "B" : "RG"
            dfs(y: i, x: j, color: color)
        }
    }
}

print(count)