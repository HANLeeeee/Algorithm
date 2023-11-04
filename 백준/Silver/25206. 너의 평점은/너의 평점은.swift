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

for _ in 1...20 {
    let input = readLine()!.split(separator: " ").map{ String($0) }
    
    if input[2] == "P" {
        continue
    }
    let (grade, score) = (Double(input[1])!, input[2])
    a += grade * dic[score]!
    b += grade
}

print(a/b)