let input = readLine()!.split(separator: " ").map{ Int($0)!}
let (n, m) = (input[0], input[1])

var arr = [Int](1...n)
for _ in 0..<m {
    let num = readLine()!.split(separator: " ").map{ Int($0)!}
    let (first, last) = (num[0], num[1])
    arr.replaceSubrange(first-1...last-1, with: arr[first-1...last-1].reversed())
}

arr.forEach { print($0, terminator: " ")}