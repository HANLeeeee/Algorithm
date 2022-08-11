let num = readLine()!.split(separator: " ").map{ Int($0) }
let input = readLine()!.split(separator: " ").map{ Int($0) }

let n = num[0]!
let m = num[1]!
var arr = [Int](1...n)

var count = 0
for i in  0..<m {
    while input[i] != arr.first {
        
        //앞쪽에 있는 수
        if arr.firstIndex(of: input[i]!)! < Int(Double((arr.count+1))/2) {
            let first = arr.removeFirst()
            arr.append(first)

        //뒤쪽에 있는 수
        } else {
            let last = arr.removeLast()
            arr.insert(last, at: 0)
        }
        count += 1

    }
    arr.removeFirst()
}
print(count)