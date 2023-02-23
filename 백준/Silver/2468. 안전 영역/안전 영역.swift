let n = Int(readLine()!)!

var arr = [[Int]]()
var water = Set<Int>()
var checkArr = Array(repeating: Array(repeating: false, count: n), count: n)

water.insert(0)
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ Int($0)!}
    arr.append(input)
    
    for i in 0..<n {
        water.insert(input[i])
    }
}

//물 높이의 최대값
//let high = arr.map({ $0.max()! }).max()!

let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]

func isValid(y: Int, x: Int) -> Bool {
    return 0 <= y && y <= n-1 && 0 <= x && x <= n-1 ? true : false
}

func dfs(y: Int, x: Int, height: Int) {
    checkArr[y][x] = true

    for k in 0..<4 {
        let nextY = y + dy[k]
        let nextX = x + dx[k]
        
        if isValid(y: nextY, x: nextX) && !checkArr[nextY][nextX] && (arr[nextY][nextX] > height) {
            
            dfs(y: nextY, x: nextX, height: height)
        }
    }
}

var answer = [Int]()
for water in water {
    //물의 높이마다 방문체크 초기화
    checkArr = Array(repeating: Array(repeating: false, count: n), count: n)
    var count = 0

    for y in 0..<n {
        for x in 0..<n {
            if arr[y][x] > water && !checkArr[y][x] {
                count += 1
                dfs(y: y, x: x, height: water)
            }
        }
    }
    answer.append(count)
}

print(answer.max()!)