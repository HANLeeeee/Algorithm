import Foundation

var dic: [String: Float] = ["A+": 4.5, "A0": 4.0, "B+": 3.5, "B0": 3.0, "C+": 2.5, "C0": 2.0, "D+": 1.5, "D0": 1.0, "F": 0.0]

var a: Float = 0
var b: Float = 0

(1...20).forEach { _ in
    let input = readLine()!.split(separator: " ").map{ String($0) }
    
    if input[2] != "P" {
        a += Float(input[1])! * dic[input[2]]!
        b += Float(input[1])!
    }
}

print(a/b)