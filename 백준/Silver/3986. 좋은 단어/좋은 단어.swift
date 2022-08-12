let num = Int(readLine()!)!
var count = 0
for _ in 0..<num {
    var arr = [String]()
    let input = Array(readLine()!).map {String($0)}
    for i in input {
        if i == arr.last {
            arr.removeLast()
        } else {
            arr.append(i)
        }
    }
    if arr.isEmpty {
        count += 1
    }
}
print(count)