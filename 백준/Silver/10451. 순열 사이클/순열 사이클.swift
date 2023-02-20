let T = Int(readLine()!)!

func sol() {

    for _ in 0..<T {
        let N = Int(readLine()!)!
        let nums = readLine()!.split(separator: " ").map{ Int(String($0))! }
        var line = Array(repeating: 0, count: N+1)
        var visited = Array(repeating: false, count: N+1)
        var answer = 0
        
        for j in 0..<nums.count {
            
            line[j+1] = nums[j]
        }
        
        func dfs(start: Int) {
            var index = 0
            var queue = [start]
            
            while index < queue.count {
                let node = queue[index]
            
                if !visited[node] {
                    visited[node] = true
                    queue.append(line[node])
                }
                   
                index += 1
            }
        }
        
        for i in 1...N {
            if !visited[i] {
                dfs(start: i)
                answer += 1
            }
        }
        
        print(answer)
    }
}

sol()