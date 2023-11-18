import Foundation

func solution(_ n:Int, _ wires:[[Int]]) -> Int {
    var result = Int.max
    var map: [Int: [Int]] = [:]
    var check = Array(repeating: false, count: n+1)
    
    for i in 1..<n+1 {
        map[i] = []
    }
    
    for wire in wires{
        map[wire[0]]?.append(wire[1])
        map[wire[1]]?.append(wire[0])
    }
    
    func bfs(_ n: Int) -> Int {
        var arr = [Int]()
        var count = 0
        
        arr.append(n)
        check[n] = true
        
        while !arr.isEmpty {
            let pop = arr.removeFirst()
            count += 1
            
            for i in map[pop]! {
                if !check[i] {
                    arr.append(i)
                    check[i] = true
                }
            }
        }
        return count
    }
    
    for i in 1..<n+1 {
        check = Array(repeating: false, count: n+1)
        check[i] = true
        let cnt = bfs(1)
        result = min(result, abs(cnt - (n-cnt)))
    }
    
    return result
}