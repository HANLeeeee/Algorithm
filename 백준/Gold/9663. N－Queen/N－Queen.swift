import Foundation

let n = Int(readLine()!)!

var map = Array(repeating: Array(repeating: false, count: n), count: n)
var col = Array(repeating: false, count: n)

func diagonal(y: Int, x: Int) -> Bool {
    for k in 1..<y+1 {
        if 0 <= x-k && map[y-k][x-k] {
            return true
        } else if x+k < n && map[y-k][x+k] {
            return true
        }
    }
    return false
}

var result = 0
func back(i: Int) {
    if i == n {
        result += 1
        return
    }
    
    for j in 0..<n {
        if !col[j] && !diagonal(y: i, x: j) {
            map[i][j] = true
            col[j] = true
            
            back(i: i+1)
            
            col[j] = false
            map[i][j] = false
        }
    }
}

back(i: 0)
print(result)