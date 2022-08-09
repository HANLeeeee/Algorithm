let T = Int(readLine()!)!
for _ in 1...T{
    let arr = readLine()!.split(separator: " ")
    let R = Int(arr[0])!
    let S = arr[1]
    for j in S {
        for _ in 1...R {
            print("\(j)", terminator: "")
        }
    }
    print("")
}
