let num = readLine()!.split(separator: " ").map{ Int($0)!}
let n = num[0]
let m = num[1]
//방문체크해줄 배열 //1부터 시작하기에 n+1까지 사이즈로 만든다 0은 비어있을 예정
var checkArr = [Bool](repeating: false, count: n+1)
//n+1*n+1사이즈의 인접행렬, 모두 false로 초기화
var arr = [[Bool]](repeating: Array(repeating: false, count: n+1), count: n+1)

//간선의 수만큼 반복하여 인접행렬에 값 할당
for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{ Int($0)!}
    let u = input[0]
    let v = input[1]
    
    //방향이 없는 그래프(=양방향 그래프), 해당 노드사이의 간선이 존재하므로 값을 true로 변경
    arr[u][v] = true
    arr[v][u] = true
}

func dfs(node: Int) {
    //해당 노드와 연결되어있는 노드를 탐색
    checkArr[node] = true
    
    //0은 제외
    for i in 1...n {
        //방문하지 않은 노드이고 간선이 있는 곳이면
        if !checkArr[i] && arr[node][i] {
            //방문하지않은 노드를 탐색한다
            dfs(node: i)
        }
        //방문했던 노드였거나 간선이 없는 곳이면 간선이 있는 곳을 찾는다 (for문의 i+1)
    }
}

var count = 0
//노드를 노드의 수만큼 반복하여 탐색
for node in 1...n {
    //방문하지 않은 노드만 탐색
    if !checkArr[node] {
        count += 1
        dfs(node: node)
    }
}

print(count)
