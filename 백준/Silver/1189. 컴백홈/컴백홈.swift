let input = readLine()!.split(separator: " ").map{ Int($0)!}
let r = input[0]
let c = input[1]
let k = input[2]

var checkArr = Array(repeating: Array(repeating: false, count: c), count: r)
var map = [[String]]()
var distance = Array(repeating: Array(repeating: 0, count: c), count: r)

for _ in 0..<r {
    let input = Array(readLine()!).map {String($0)}
    map.append(input)
}

let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]

func isValid(y: Int, x: Int) -> Bool {
    return 0 <= y && y < r && 0 <= x && x < c ? true : false
}

var count = 0
func dfs(y: Int, x: Int, d: Int) {
    if y == 0 && x == c-1 && d == k {
        count += 1
        return
    }
    
    for k in 0..<4 {
        let nextY = y + dy[k]
        let nextX = x + dx[k]
        
        if isValid(y: nextY, x: nextX) && !checkArr[nextY][nextX] && map[nextY][nextX] != "T" {
            checkArr[nextY][nextX] = true
            dfs(y: nextY, x: nextX, d: d+1)
            checkArr[nextY][nextX] = false
        }
    }
}


checkArr[r-1][0] = true
dfs(y: r-1, x: 0, d: 1)

print(count)