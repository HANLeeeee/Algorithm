func solution(_ s:String) -> String {
    let arr = s.components(separatedBy: " ").map { String($0) }
    var result: [String] = []
    
    for word in arr {
        var change = ""
        for i in 0..<word.count {
            change += i == 0 ? Array(word)[i].uppercased() : Array(word)[i].lowercased()
        }
        result.append(change)
    }
    
    return result.joined(separator: " ")
}