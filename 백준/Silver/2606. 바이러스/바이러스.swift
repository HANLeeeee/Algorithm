let inputComputer = Int(readLine()!)!
let inputNetword = Int(readLine()!)!


var checkArr = Array(repeating: false, count: inputComputer+1)
var arr = Array(repeating: Array(repeating: false, count: inputComputer+1), count: inputComputer+1)

for _ in 0..<inputNetword {
    let line = readLine()!.split(separator: " ").map{ Int($0)!}
    
    //양방향 간선
    arr[line[0]][line[1]] = true
    arr[line[1]][line[0]] = true
}


var count = 0
func dfs(_ num: Int) {
    checkArr[num] = true
    
    for i in 1..<inputComputer+1 {
        if checkArr[i] == false && arr[num][i] == true {
            dfs(i)
            count += 1
        }
    }
}


dfs(1)
print(count)