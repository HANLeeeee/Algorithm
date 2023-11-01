let input = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{ Double($0)!}

let m = arr.max()!
var result: Double = 0
for i in arr {
    result += i/m*100
}

print(result/Double(input))