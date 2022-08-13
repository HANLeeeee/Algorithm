let num = Int(readLine()!)!

for _ in 0..<num {
    let input = Array(readLine()!).map {String($0)}
    var arr = [String]()
    var backarr = [String]()
    for i in input {
        if i == "<" {
            if !arr.isEmpty {
                backarr.append(arr.popLast()!)
            }
        } else if i == ">" {
            if !backarr.isEmpty {
                arr.append(backarr.popLast()!)
            }
        } else if i == "-" {
            if !arr.isEmpty {
                let _ = arr.popLast()!
            }
        } else {
            arr.append(i)
        }
    }
    print(arr.joined() + backarr.joined().reversed())
}