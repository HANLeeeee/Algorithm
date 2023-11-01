import Foundation

let input = Int(readLine()!)!
let score = readLine()!.split(separator: " ").map{ Int($0)!}

var arr = [Double]()
for i in 0..<input {
    arr.append(Double(score[i]))
}

let m = arr.max()!
for i in 0..<arr.count {
    arr[i] = Double(arr[i])/Double(m) * 100
}
let sum = arr.reduce(0, {$0+$1})
print(sum/Double(input))