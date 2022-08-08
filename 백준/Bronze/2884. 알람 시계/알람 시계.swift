let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var h = input[0]
var m = input[1]
 
m -= 45
if m < 0 {
    h -= 1
    m += 60
}
if h < 0 {
    h += 24
}

print(h, m)
