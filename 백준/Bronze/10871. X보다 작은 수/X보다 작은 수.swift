let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }

let N = input[0]
let X = input[1]
var result = ""

for x in arr {
    if X > x {
        result += "\(String(x)) "
    }
}
print(result)