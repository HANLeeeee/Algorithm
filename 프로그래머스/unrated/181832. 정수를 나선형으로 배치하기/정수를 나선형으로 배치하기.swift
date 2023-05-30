import Foundation

func solution(_ n:Int) -> [[Int]] {
    var answer = Array(repeating: Array(repeating: 0, count: n), count: n)
    let dx = [0, 1, 0, -1] 
    let dy = [1, 0, -1, 0]
    var x = 0, y = 0, dir = 0
    for i in 1...n * n {
        answer[x][y] = i
        let nx = x + dx[dir], ny = y + dy[dir]
        if nx < 0 || ny < 0 || nx >= n || ny >= n || answer[nx][ny] != 0 { 
            dir = (dir + 1) % 4
            x += dx[dir]; y += dy[dir]
        } else {
            x = nx; y = ny
        }
    }
    return answer
}
