import Foundation

let n = Int(readLine()!)!

var score = [Int]()
for _ in 0..<n {
    score.append(Int(readLine()!)!)
}

var map = Array(repeating: 0, count: n)

for i in 0..<n {
    if i == 0 {
        map[0] = score[0]
    } else if i == 1 {
        map[1] = score[0] + score[1]
    } else if i == 2 {
        map[2] = max(score[0], score[1]) + score[2]
    } else {
        map[i] = max(map[i-2], map[i-3]+score[i-1]) + score[i]
    }
}

print(map[n-1])