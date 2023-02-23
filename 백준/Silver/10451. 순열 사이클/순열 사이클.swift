let t = Int(readLine()!)!

for _ in 0..<t {
    let n = Int(readLine()!)!
    let numArr = readLine()!.split(separator: " ").map{ Int($0)!}

    var lineArr = Array(repeating: 0, count: n+1)
    var checkArr = Array(repeating: false, count: n+1)
    
    for i in 0..<n {
        lineArr[i+1] = numArr[i]
    }
    
    func dfs(_ num: Int) {
        if !checkArr[num] {
            checkArr[num] = true
            dfs(lineArr[num])
        }
    }
    
    var count = 0
    for i in 1..<n+1 {
        if !checkArr[i] {
            dfs(i)
            count += 1
        }
    }
    print(count)
}