var input = Int(readLine()!)!
var arr: Array<Int> = []

for i in 1...input {
    arr = readLine()!.split(separator: " ").map { Int(String($0))! }
    print("Case #\(i): \(arr[0]) + \(arr[1]) = \(arr[0]+arr[1])")
}
