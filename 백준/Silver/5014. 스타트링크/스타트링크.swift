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
let (f, s, g, u, d) = (input[0], input[1], input[2], input[3], input[4])

var checkArr = Array(repeating: false, count: f+1)
var arr = Array(repeating: 0, count: f+1)

func isValid(_ s: Int) -> Bool {
    return 1 <= s && s <= f ? true : false
}


var result = -1
func bfs() {
    checkArr[s] = true
    
    let q = Queue<Int>([])
    q.push(s)
       
    while !q.isEmpty {
        let pop = q.pop()
        
        if pop == g {
            result = arr[pop]
            break
        }
        
        let nextU = pop+u
        let nextD = pop-d
        
        if isValid(nextU) && !checkArr[nextU]{
            checkArr[nextU] = true
            q.push(nextU)
            arr[nextU] = arr[pop]+1
        }
        
        if isValid(nextD) && !checkArr[nextD] {
            checkArr[nextD] = true
            q.push(nextD)
            arr[nextD] = arr[pop]+1
        }
    }
    if result != -1 {
        print(result)
    } else {
        print("use the stairs")
    }
}

bfs()