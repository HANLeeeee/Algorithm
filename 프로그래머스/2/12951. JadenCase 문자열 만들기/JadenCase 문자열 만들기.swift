func solution(_ s:String) -> String {
    let arr = s.components(separatedBy: " ").map { String($0) }
    var result = ""
    for word in arr {
        for i in 0..<word.count {
            let w = word.map { String($0) }
            result += i == 0 ? w[i].uppercased() : w[i].lowercased()
        }
        result += " "
    }
    _ = result.popLast()
    return result
}
