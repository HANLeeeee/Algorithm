let num = readLine()!.split(separator: " ").map{ Int($0)!}
let n = num[0]
let m = num[1]
var checkArr = [Bool](repeating: false, count: n+1)
var arr = [[Bool]](repeating: Array(repeating: false, count: n+1), count: n+1)
for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{ Int($0)!}
    let u = input[0]
    let v = input[1]
    arr[u][v] = true
    arr[v][u] = true
}

func dfs(node: Int) {
    checkArr[node] = true
    for i in 1...n {
        if !checkArr[i] && arr[node][i] {
            dfs(node: i)
        }
    }
}

var count = 0
for node in 1...n {
    if !checkArr[node] {
        count += 1
        dfs(node: node)
    }
}
print(count)
