class Queue<T> {
    var enQueue: [T]
    var deQueue: [T] = []
    
    var count: Int {
        return enQueue.count + deQueue.count
    }
    
    var isEmpty: Bool {
        return enQueue.isEmpty && deQueue.isEmpty
    }
    
    init(_ queue: [T]) {
        self.enQueue = queue
    }
    
    func push(_ element: T) {
        enQueue.append(element)
    }
    
    func pop() -> T {
        if deQueue.isEmpty {
            deQueue = enQueue.reversed()
            enQueue.removeAll()
        }
        return deQueue.popLast()!
    }

    func front() -> T? {
        let newQue = deQueue.reversed() + enQueue
        return newQue.first
    }
}
let input = readLine()!.split(separator: " ").map{ Int($0)!}
let n = input[0] //세로
let m = input[1] //가로

var checkArr = [[Bool]](repeating: Array(repeating: false, count: m), count: n)
var distance = [[Int]](repeating: Array(repeating: 0, count: m), count: n)
var arr = [[Int]]()

for _ in 0..<n {
    arr.append(Array(readLine()!).map {Int(String($0))!})
}

let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]

func isValid(y: Int, x: Int) -> Bool {
    return 0 <= y && y <= n-1 && 0 <= x && x <= m-1 ? true : false
}

func bfs(y: Int, x: Int) {
    checkArr[y][x] = true
    distance[y][x] = 1
    
    let q = Queue<[Int]>([])
    q.push([y, x])
    
    while !q.isEmpty {
        let pop = q.pop()
        let y = pop[0]
        let x = pop[1]
        
        for k in 0..<4 {
            let nextY = y + dy[k]
            let nextX = x + dx[k]
            
            if isValid(y: nextY, x: nextX) && !checkArr[nextY][nextX] && arr[nextY][nextX] == 1 {
                distance[nextY][nextX] = distance[y][x] + 1
                checkArr[nextY][nextX] = true
                q.push([nextY, nextX])
            }
        }
    }
}

bfs(y: 0, x: 0)
print(distance[n-1][m-1])