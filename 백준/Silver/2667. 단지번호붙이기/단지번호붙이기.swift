let input = Int(readLine()!)!

let dx = [-1, 1, 0, 0] //위 아 왼 오
let dy = [0, 0, -1, 1]


var checkArr = [[Bool]](repeating: Array(repeating: false, count: input), count: input)
var map = [[Int]]()

for _ in 0..<input {
    let house = Array(readLine()!).map {Int(String($0))!}
    map.append(house)
}

func isValid(y: Int, x: Int) -> Bool {
    return 0 <= y && y < input && 0 <= x && x < input ? true : false
}

var count = 0
func dfs(y: Int, x: Int) {
    count += 1
    checkArr[y][x] = true
    
    for k in 0..<4 {
        let nextY = y + dy[k]
        let nextX = x + dx[k]
        
        if isValid(y: nextY, x: nextX) && !checkArr[nextY][nextX] && map[nextY][ nextX] == 1 {
            dfs(y: nextY, x: nextX)
        }
    }
}


var answer = [Int]()
for i in 0..<input {
    for j in 0..<input {
        if map[j][i] == 1 && !checkArr[j][i] {
            count = 0
            dfs(y: j, x: i)
            answer.append(count)
        }
    }
}

print(answer.count)
answer.sort()
print(answer.map{String($0)}.joined(separator: "\n"))