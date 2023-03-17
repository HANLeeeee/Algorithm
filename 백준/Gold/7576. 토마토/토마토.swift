import Foundation
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
let (m, n) = (input[0], input[1])

var map = [[Int]]()
var startArr = Queue<[Int]>([])

for i in 0..<n {
    let tomato = readLine()!.split(separator: " ").map{ Int($0)!}
    if tomato.contains(1) {
        for j in 0..<m {
            if tomato[j] == 1{
                startArr.push([i, j])
            }
        }
    }
    map.append(tomato)
}

let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]

func isValid(y: Int, x: Int) -> Bool {
    return 0 <= y && y < n && 0 <= x && x < m ? true : false
}

var count = -1
func bfs() {
    while !startArr.isEmpty {
        count += 1
        
        for _ in 0..<startArr.count {
            let pop = startArr.pop()
            let (y, x) = (pop[0], pop[1])
            
            for k in 0..<4 {
                let nextY = y + dy[k]
                let nextX = x + dx[k]
                
                if isValid(y: nextY, x: nextX) && map[nextY][nextX] == 0 {
                    map[nextY][nextX] = 1
                    startArr.push([nextY, nextX])
                }
            }
        }
    }
}

bfs()
for i in map {
    if i.contains(0) {
        count = -1
    }
}
print(count)