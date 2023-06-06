func solution(_ arr: [Int], _ query: [Int]) -> [Int] {
    var result: [Int] = arr
    
    for i in 0..<query.count {
         // print("\(i)번째인덱스, 변경전 \(result)")
        if i % 2 == 0 {
            result = Array(result.prefix(through: query[i]))
            
        } else {
            
            result.removeFirst(query[i])
        }
         // print("변경후 \(result)")
    }
    
    return result
}