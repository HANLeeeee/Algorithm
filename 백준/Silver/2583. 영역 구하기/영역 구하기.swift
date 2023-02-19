let input = readLine()!.split(separator: " ").map{ Int($0)!}
let m = input[0] //세로
let n = input[1] //가로
let k = input[2] //직사각형 크기

var checkArr = [[Bool]](repeating: Array(repeating: false, count: n), count: m)
var map = [[Int]](repeating: Array(repeating: 0, count: n), count: m)
var rectArr = [[Int]]()

for _ in 0..<k {
    rectArr.append(readLine()!.split(separator: " ").map{ Int($0)!})
}

//꼭지점으로 사각형 영역 구하기
for i in 0..<rectArr.count {
    for j in rectArr[i][0]..<rectArr[i][2] {
        for r in rectArr[i][1]..<rectArr[i][3] {
            map[r][j] = 1
        }
    }
}

let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]

func isValid(y: Int, x: Int) -> Bool {
    return 0 <= y && y <= m-1 && 0 <= x && x <= n-1 ? true : false
}

var count = 0
func dfs(y: Int, x: Int) {
    checkArr[y][x] = true
    
    for k in 0..<4 {
        let nextY = y + dy[k]
        let nextX = x + dx[k]
        
        if isValid(y: nextY, x: nextX) && !checkArr[nextY][nextX] && map[nextY][nextX] == 0 {
            count += 1
            dfs(y: nextY, x: nextX)
        }
    }
}

var answer = [Int]()
for y in 0..<m {
    for x in 0..<n {
        if map[y][x] == 0 && !checkArr[y][x] {
            count = 1
            dfs(y: y, x: x)
            answer.append(count)
        }
    }
}
print(answer.count)
answer.sort()
print(answer.map{String($0)}.joined(separator: " "))