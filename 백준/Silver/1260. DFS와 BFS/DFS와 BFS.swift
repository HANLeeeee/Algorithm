let input = readLine()!.split(separator: " ").map{ Int($0)!}

let n = input[0]
let m = input[1]
let v = input[2]

var checkArr = Array(repeating: false, count: n+1)
var arr = Array(repeating: Array(repeating: false, count: n+1), count: n+1)

for _ in 0..<m {
    let line = readLine()!.split(separator: " ").map{ Int($0)!}
    
    //양방향 간선
    arr[line[0]][line[1]] = true
    arr[line[1]][line[0]] = true
}

func dfs(_ v: Int) {
    checkArr[v] = true
    
    print(v, terminator: " ")
    for i in 1..<n+1 {
        if checkArr[i] == false && arr[v][i] == true {
            dfs(i)
        }
    }
}

func bfs(_ v: Int) {
    var q = [Int]()
    
    checkArr[v] = false
    q.append(v)
    
    while !q.isEmpty {
        var v2 = q.removeFirst()
        print(v2, terminator: " ")
        
        for i in 1..<n+1 {
            if checkArr[i] == true && arr[v2][i] == true {
                q.append(i)
                checkArr[i] = false
            }
        }
    }
    
}

dfs(v)
print("")
bfs(v)