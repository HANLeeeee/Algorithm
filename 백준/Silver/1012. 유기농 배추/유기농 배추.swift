let t = Int(readLine()!)!

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map{ Int($0)!}
    let m = input[0]
    let n = input[1]
    let k = input[2]
    
    var checkArr = [[Bool]](repeating: Array(repeating: false, count: m), count: n)
    var arr = [[Int]](repeating: Array(repeating: 0, count: m), count: n)
        
    for _ in 0..<k {
        let input = readLine()!.split(separator: " ").map{ Int($0)!}
        let x = input[0]
        let y = input[1]
        
        arr[y][x] = 1
    }

    let dx = [-1, 1, 0, 0]
    let dy = [0, 0, -1, 1]
    
    func isValid(y: Int, x: Int) -> Bool {
        return 0 <= y && y <= n-1 && 0 <= x && x <= m-1 ? true : false
    }

    func dfs(y: Int, x: Int) {
        checkArr[y][x] = true
        
        for k in 0..<4 {
            let nextY = y + dy[k]
            let nextX = x + dx[k]
            
            if isValid(y: nextY, x: nextX) && !checkArr[nextY][nextX] && arr[nextY][nextX] == 1 {
                dfs(y: nextY, x: nextX)
            }
        }
    }

    var answer = 0
    for y in 0..<n {
        for x in 0..<m {
            if arr[y][x] == 1 && !checkArr[y][x] {
                dfs(y: y, x: x)
                answer += 1
            }
        }
    }
    print(answer)
}