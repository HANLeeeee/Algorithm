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

let t = Int(readLine()!)!

for _ in 0..<t {
    let l = Int(readLine()!)!
    let start = readLine()!.split(separator: " ").map{ Int($0)!}
    let end = readLine()!.split(separator: " ").map{ Int($0)!}
    
    var checkArr = [[Bool]](repeating: Array(repeating: false, count: l), count: l)
    var count = [[Int]](repeating: Array(repeating: 0, count: l), count: l)
    
    let dx = [-2, -2, -1, -1, 1, 1, 2, 2]
    let dy = [-1, 1, -2, 2, -2, 2, -1, 1]
    
    func isValid(y: Int, x: Int) -> Bool {
        return 0 <= y && y < l && 0 <= x && x < l ? true : false
    }

    func bfs() {
        checkArr[start[1]][start[0]] = true

        let q = Queue<[Int]>([])
        q.push([start[1], start[0]])
        
        while !q.isEmpty {
            let pop = q.pop()
            let y = pop[0]
            let x = pop[1]

            if y == end[1] && x == end[0] {
                break
            }
            
            for k in 0..<8 {
                let nextY = y + dy[k]
                let nextX = x + dx[k]
                
                if isValid(y: nextY, x: nextX) && !checkArr[nextY][nextX] {
                    count[nextY][nextX] = count[y][x] + 1
                    checkArr[nextY][nextX] = true
                    q.push([nextY, nextX])
                }
            }
        }
    }
    bfs()
    print(count[end[1]][end[0]])
}