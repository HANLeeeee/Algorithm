let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }

let N = input[0]
let X = input[1]
var result = ""

for i in 0..<arr.count {
    if X > arr[i] {
        result += "\(String(arr[i])) "
    }
}
print(result)