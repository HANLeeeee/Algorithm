let line = readLine() ?? ""
let a = Int(line) ?? 0

for index in 1...a {
    var result = ""
    for _ in 1..<a-index+1 {
        result += " "
    }
    for _ in a-index+1...a {
        result += "*"
    }
    print(result)
}
