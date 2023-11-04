var dic: [String: Float] = [
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

var a: Float = 0
var b: Float = 0

for _ in 1...20 {
    let input = readLine()!.split(separator: " ").map{ String($0) }
    let (grade, score) = (Float(input[1])!, input[2])
    if score == "P" {
        continue
    }
    a += grade * dic[score]!
    b += grade
}

print(a/b)