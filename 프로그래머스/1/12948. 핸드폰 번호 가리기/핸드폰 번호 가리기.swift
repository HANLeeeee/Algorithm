func solution(_ phone_number:String) -> String {
    var result = ""
    for _ in 0..<phone_number.count - 4 {
        result += "*"
    }
    result += phone_number.suffix(4)
    return result
}