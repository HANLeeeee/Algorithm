import Foundation
let input = readLine()!.split(separator: " ").map{ Int($0)!}

var arr = Array(repeating: 0, count: 1002)
var count = 1
for i in 1...1000{
    for _ in 0..<i{
        if count == 1001{
            break
        }
        arr[count] = i
        count += 1
    }
}

var result = 0
for i in input[0]...input[1] {
    result += arr[i]
}
print(result)