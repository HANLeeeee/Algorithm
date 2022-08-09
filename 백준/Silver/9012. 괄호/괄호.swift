let num = Int(readLine()!)!

for _ in 0..<num {
    let input = Array(readLine()!).map {String($0)}
    
    var count = 0
    for i in 0..<input.count {
        if input[i] == "(" {
            count += 1
        } else {
            if count == 0 {
                count -= 1
                break
            }
            count -= 1
        }
    }
    
    print(count == 0 ? "YES" : "NO")
}
