var max = 0
var index = 0
var input = [Int]()
for i in 0..<9 {
    let a = Int(readLine()!)!
    input.append(a)
    if max < a {
        max = a
        index = i
    }
}
print(max)
print(index+1)