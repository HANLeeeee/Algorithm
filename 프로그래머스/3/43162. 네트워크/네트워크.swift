import Foundation

func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    
    
    var count: Int = 0
    var check = Array(repeating: false, count: n)
 
    func bfs(_ num: Int) {
        check[num] = true
        
        for i in 0..<n {
            if !check[i] && computers[num][i] == 1 {
                bfs(i)
            }
        }
    }
 
    for i in 0..<n {
        if !check[i] {
            count += 1
            bfs(i)
        }
    }
 
    return count
}