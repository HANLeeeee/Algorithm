let n = Int(readLine()!)!

var arr = [Int]()
arr.append(0)
arr.append(1)

for i in 2..<n+1 {
    arr.append(arr[i-2] + arr[i-1])
}

print(arr[n])