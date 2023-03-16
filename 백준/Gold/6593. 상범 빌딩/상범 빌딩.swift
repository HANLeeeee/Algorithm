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

while true {
    let input = readLine()!.split(separator: " ").map{ Int($0)!}
    let l = input[0]
    let r = input[1]
    let c = input[2]
    
    //나머지는 0이 될 수 없기 때문에 l만 0이 나오면 (0, 0, 0)
    if l == 0 {
        break
    }
    
    var map = [[[String]]]()
    var startArr = [Int]()

    for i in 0..<l {
        var arr = [[String]]()
        for j in 0..<r+1 {
            if j == r {
                _ = readLine()
                map.append(arr)
                break
            }
            let road = Array(readLine()!).map {String($0)}
            //시작점 찾기
            if road.contains("S") {
                startArr.append(i)                         //z값
                startArr.append(j)
                startArr.append(road.firstIndex(of: "S")!)
            }
            
            arr.append(road)
        }
    }
    
    var checkArr = Array(repeating: Array(repeating: Array(repeating: false, count: c), count: r), count: l)
    var timeArr = Array(repeating: Array(repeating: Array(repeating: 0, count: c), count: r), count: l)
    
    let dx = [-1, 1, 0, 0, 0, 0]
    let dy = [0, 0, -1, 1, 0, 0]
    let dz = [0, 0, 0, 0, -1, 1]
    
    func isValid(z: Int, y: Int, x: Int) -> Bool {
        return 0 <= z && z < l && 0 <= y && y < r && 0 <= x && x < c ? true : false
    }
    
    func bfs(z: Int, y: Int, x: Int) -> String {
        
        let q = Queue<[Int]>([])
        q.push([z, y, x])
        
        while !q.isEmpty {
            let pop = q.pop()
            let z = pop[0]
            let y = pop[1]
            let x = pop[2]
            
            if map[z][y][x] == "E" {
                return "Escaped in \(timeArr[z][y][x]) minute(s)."
            }
            
            for k in 0..<6 {
                let nextZ = z + dz[k]
                let nextY = y + dy[k]
                let nextX = x + dx[k]
                
                if isValid(z: nextZ, y: nextY, x: nextX) && !checkArr[nextZ][nextY][nextX] && map[nextZ][nextY][nextX] != "#" {
                    timeArr[nextZ][nextY][nextX] = timeArr[z][y][x] + 1
                    checkArr[nextZ][nextY][nextX] = true
                    q.push([nextZ, nextY, nextX])
                }
            }
        }
        return "Trapped!"
    }
    
    checkArr[startArr[0]][startArr[1]][startArr[2]] = true
    print(bfs(z: startArr[0], y: startArr[1], x: startArr[2]))
}