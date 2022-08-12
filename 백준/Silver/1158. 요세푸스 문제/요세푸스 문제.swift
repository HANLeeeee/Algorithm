let input = readLine()!.split(separator: " ").map{ Int($0)!}
let n = input[0]
let k = input[1]
var count = k

var arr = [Int](1...n)
var result = [Int]()

while !arr.isEmpty {
    if count > arr.count {
        count -= arr.count
    } else {
        result.append(arr[count-1])
        arr.remove(at: count-1)
        count += k-1
    }
}

print("<" + result.map({String($0)}).joined(separator: ", ") + ">")