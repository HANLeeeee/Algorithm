import Foundation

var dic = [
    "A+": 4.5,
    "A0": 4.0,
    "B+": 3.5,
    "B0": 3.0,
    "C+": 2.5,
    "C0": 2.0,
    "D+": 1.5,
    "D0": 1.0,
    "F": 0.0
]

var a: Double = 0
var b: Double = 0

(1...20).forEach { i in
    let input = readLine()!.split(separator: " ").map{ String($0) }
    let (_, score, grade) = (input[0], input[1], input[2])
    
    if grade != "P" {
        a += Double(score)! * dic[grade]!
        b += Double(score)!
    }
}

print(round(a/b*1000000)/1000000)