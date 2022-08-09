var num = Int(readLine()!)!
var arr = [Int]()

for i in stride(from: num, through: 1, by: -1) {
    arr.insert(i, at: 0)
    for _ in 1...i {
        let last = arr.popLast()
        arr.insert(last!, at: 0)
    }
}


for i in arr {
    print(i, terminator: " ")
}