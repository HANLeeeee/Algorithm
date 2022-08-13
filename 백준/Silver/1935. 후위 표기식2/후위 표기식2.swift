import Foundation

let num = Int(readLine()!)!
let input = Array(readLine()!).map {String($0)}

var dic = [String : Double]()
for i in 0..<num {
    let result = String(UnicodeScalar(65 + i)!)
    dic[result] = Double(readLine()!)!
}

var arr = [Double]()
for i in input {
    let asci = Int(UnicodeScalar(i)!.value)
    if asci > 64 && asci < 91 {
        arr.append(dic[i]!)
    } else {
        let a = arr.popLast()!
        let b = arr.popLast()!
        if i == "*" {
            arr.append(b*a)
        } else if i == "+" {
            arr.append(b+a)
        } else if i == "-" {
            arr.append(b-a)
        } else {
            arr.append(b/a)
        }
    }
}

print(String(format: "%.2f", arr[0]))