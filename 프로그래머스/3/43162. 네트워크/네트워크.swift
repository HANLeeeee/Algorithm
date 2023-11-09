func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    var count: Int = 0
    var check = Array(repeating: false, count: n)
 
    func dfs(_ num: Int) {
        check[num] = true
        
        for i in 0..<n {
            if !check[i] && computers[num][i] == 1 {
                dfs(i)
            }
        }
    }
 
    for i in 0..<n {
        if !check[i] {
            count += 1
            dfs(i)
        }
    }
 
    return count
}