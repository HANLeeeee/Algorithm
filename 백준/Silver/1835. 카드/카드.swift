class Dequeue<T: Comparable> {
    var enQueue: [T]
    var deQueue: [T] = []
    
    var count: Int {
        return enQueue.count + deQueue.count
    }
    
    var isEmpty: Bool {
        return enQueue.isEmpty && deQueue.isEmpty
    }
    
    init(_ queue: [T]) {
        enQueue = queue
    }
    
    func pushLast(_ element: T) {
        enQueue.append(element)
    }
    
    func pushFirst(_ element: T) {
        deQueue.append(element)
    }
    
    func popLast() -> T {
        if enQueue.isEmpty {
            enQueue = deQueue.reversed()
            deQueue.removeAll()
        }
        return enQueue.popLast()!
    }
    
    func popFirst() -> T {
        if deQueue.isEmpty {
            deQueue = enQueue.reversed()
            enQueue.removeAll()
        }
        return deQueue.popLast()!
    }
    
    func firstIndex(_ num: T) -> Int {
        let newQue = deQueue.reversed() + enQueue
        if let i = newQue.firstIndex(where: {$0 == num}) {
            return i
        }
        return 0
    }
}


var num = Int(readLine()!)!
var deq = Dequeue<Int>([])

for i in stride(from: num, through: 1, by: -1) {
    deq.pushFirst(i)
    for _ in 1...i {
        deq.pushFirst(deq.popLast())
    }
}

for _ in 0..<deq.count {
    print(deq.popFirst(), terminator: " ")
}

