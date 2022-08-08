let n = Int(readLine()!)!

for i in 0..<n {
    var result = ""
    for _ in stride(from: n-i-1, to: 0, by: -1){
        result += " "
    }
    for _ in 0..<2*i+1{
        result += "*"
    }
    print(result)
}
for i in 0..<n-1 {
    var result = ""
    for _ in 0...i {
        result += " "
    }
    for _ in stride(from: 2*((n-1)-i)-1, to: 0, by: -1){
        result += "*"
    }
    print(result)
}