let input1 = readLine()!.split(separator: " ").map { Int(String($0))! }
let input2 = readLine()!.split(separator: " ").map { Int(String($0))! }
let input3 = readLine()!.split(separator: " ").map { Int(String($0))! }


var x = 0
var y = 0
if input1[0] == input2[0] {
    x = input3[0]
} else if input1[0] == input3[0] {
    x = input2[0]
} else {
    x = input1[0]
}

if input1[1] == input2[1] {
    y = input3[1]
} else if input1[1] == input3[1] {
    y = input2[1]
} else {
    y = input1[1]
}

print(x, y)