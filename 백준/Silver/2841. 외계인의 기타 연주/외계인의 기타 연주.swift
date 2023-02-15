let input = readLine()!.split(separator: " ").map{ Int($0)!}
var arr = [[Int]](repeating: Array(repeating: 0, count: 0), count: input[0])

var count = 0
for _ in 0..<input[0] {
    let guitar = readLine()!.split(separator: " ").map{ Int($0)!}
    
    while true {
        if arr[guitar[0]].last == guitar[1] {
            //상관없음 그냥 넘어가기
            break
        } else if arr[guitar[0]].last ?? 0 > guitar[1] {
            //마지막 요소보다 작기때문에 삭제하기
            arr[guitar[0]].removeLast()
            count += 1
            continue
        } else {
            //마지막 요소보다 크니까 추가하기
            arr[guitar[0]].append(guitar[1])
            count += 1
            break
        }
    }
}

print(count)
