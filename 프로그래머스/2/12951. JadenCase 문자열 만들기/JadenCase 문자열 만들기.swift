func solution(_ s:String) -> String {
    let arr = s.components(separatedBy: " ").map { String($0) }
    var result = ""
    
    for word in arr {
        for i in 0..<word.count {
            result += i == 0 ? Array(word)[i].uppercased() : Array(word)[i].lowercased()
        }
        result += " "
    }
    _ = result.popLast()
    return result
}