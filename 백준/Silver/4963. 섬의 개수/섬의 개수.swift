import Foundation

var result: [Int] = []
while true {
    let input = readLine()!.split(separator: " ").map { Int($0)!}
    if input == [0, 0] { break }
    let (w, h) = (input[0], input[1])
    var map: [[Int]] = []
    var check = Array(repeating: Array(repeating: false, count: w), count: h)
    for _ in 0..<h {
        map.append(readLine()!.split(separator: " ").map {Int($0)!})
    }

    let dx = [-1, 1, 0, 0, -1, -1, 1, 1]
    let dy = [0, 0, -1, 1, -1, 1, -1, 1]

    func isValid(y: Int, x: Int) -> Bool {
        return 0 <= y && y <= h-1 && 0 <= x && x <= w-1 ? true : false
    }

    func dfs(y: Int, x: Int) {
        check[y][x] = true

        for k in 0..<8 {
            let nextY = y + dy[k]
            let nextX = x + dx[k]
            
            if isValid(y: nextY, x: nextX) && !check[nextY][nextX] && map[nextY][nextX] == 1 {
                dfs(y: nextY, x: nextX)
            }
        }
    }

    var count = 0
    for y in 0..<h {
        for x in 0..<w {
            if map[y][x] == 1 && !check[y][x] {
                dfs(y: y, x: x)
                count += 1
            }
        }
    }
    result.append(count)
}

_ = result.map { print($0, terminator: "\n") }