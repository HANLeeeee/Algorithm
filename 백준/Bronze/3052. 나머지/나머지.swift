var arr = [Int]()
var arr2 = [Int]()
for _ in 0..<10 {
    let input = Int(readLine()!)!
    arr.append(input%42)
}


for i in arr {
    if !arr2.contains(i) {
        arr2.append(i)
    }
}

print(arr2.count)