class Queue<T> {
    var enQueue: [T]
    var deQueue: [T] = []

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
}

let input = readLine()!.split(separator: " ").map{ Int($0)!}
let n = input[0] //수빈이 위치
let k = input[1] //동생의 위치

let MAX = 100000
var checkArr = Array(repeating: false, count: MAX+1)
var arr = Array(repeating: 0, count: MAX+1)

func isValid(_ n: Int) -> Bool {
    return 0 <= n && n <= MAX ? true : false
}

func bfs(_ n: Int, _ k: Int) {
    checkArr[n] = true
    
    let q = Queue([Int]())
    q.push(n)
    
    while !q.isEmpty {
        let pop = q.pop()
        if pop == k {
            print(arr[pop])
            break
        }
        if isValid(pop-1) && !checkArr[pop-1] {
            checkArr[pop-1] = true
            q.push(pop-1)
            arr[pop-1] = arr[pop]+1
        }
        if isValid(pop+1) && !checkArr[pop+1] {
            checkArr[pop+1] = true
            q.push(pop+1)
            arr[pop+1] = arr[pop]+1
        }
        if isValid(pop*2) && !checkArr[pop*2] {
            checkArr[pop*2] = true
            q.push(pop*2)
            arr[pop*2] = arr[pop]+1
        }
    }
}

bfs(n, k)