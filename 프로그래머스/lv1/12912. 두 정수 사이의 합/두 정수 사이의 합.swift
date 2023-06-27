func solution(_ a:Int, _ b:Int) -> Int {
    var result = 0
    
    if a == b {
        return a
    }
    
    var first = a < b ? a : b
    var second = a > b ? a : b
    
    for i in first...second {
        result += i
    }    
    
    return result
}