let count: Int = Int(readLine()!)!

for _ in 0..<count {
    print(readLine()!.split(separator: "X").reduce(0) {
        $0 + ($1.count * ($1.count + 1) / 2)
    })
}