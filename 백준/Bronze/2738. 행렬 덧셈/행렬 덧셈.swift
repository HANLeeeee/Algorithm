import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
var arr1: [[Int]] = []
var arr2: [[Int]] = []

for _ in 0..<input[0] {
    arr1.append(readLine()!.split(separator: " ").map{Int($0)!})
}
for _ in 0..<input[0] {
    arr2.append(readLine()!.split(separator: " ").map{Int($0)!})
}
let result = zip(arr1, arr2).map {zip($0, $1).map { $0 + $1 }}
for row in result {
    print(row.map {String($0)}.joined(separator: " "))
}