let input = Array(readLine()!).map { String($0)}
var arr = [String]()

var raser = 0
var result = 0
for i in 0..<input.count {
    if input[i] == "(" {
        arr.append(input[i])
    } else {
        let _ = arr.popLast()
        if input[i-1] == "(" {
            result += arr.count
        } else {
            result += 1
        }
    }
}
print(result)