import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var board = board
    var arr: [Int] = []
    var result = 0
    
    for move in moves {
        for i in 0..<board.count {
            let last = board[i][move-1]
            if last == 0 {
                continue
            } else {
                if arr.last == last {
                    arr.removeLast()
                    result += 2
                } else {
                    arr.append(last)
                }
                board[i][move-1] = 0
                break
            }
        }
    }
    return result
}