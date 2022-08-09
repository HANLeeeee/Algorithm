struct Stack<T> {
    var elements: [T] = []
  
    var count : Int {
        return elements.count
    }
    var isEmpty : Bool {
        return elements.isEmpty
    }
    
    mutating func pop() -> T? {
        return elements.popLast()
    }
    mutating func push(_ element: T) {
        elements.append(element)
    }
    func top() -> T? {
        return elements.last
    }
}


var num = Int(readLine()!)!

for _ in 0..<num {
    let input = Array(readLine()!).map {String($0)}
    var stack = Stack(elements: [])

    for i in input {
        if i == "(" {
            stack.push(i)
        } else {
            if stack.isEmpty {
                stack.push(i)
                break
            } else {
                stack.pop()
            }
        }
    }
    print(stack.isEmpty ? "YES" : "NO")
}
