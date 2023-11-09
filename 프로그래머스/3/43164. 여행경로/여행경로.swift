import Foundation

var result: [String] = ["ICN"]
var check: [Bool] = []

func solution(_ tickets:[[String]]) -> [String] {
    check = Array(repeating: false, count: tickets.count)
    
    let tickets = tickets.sorted{ $0[1] < $1[1] }
    dfs(tickets, result.first!)
    return result
}

func dfs(_ tickets:[[String]], _ start: String) {
    if check.filter({ $0 == true }).count == tickets.count {
        return
    }
    
    for i in 0..<tickets.count {
        if !check[i] && start == tickets[i][0] {
            result.append(tickets[i][1])
            check[i] = true
            dfs(tickets, result.last!)
            if result.count == tickets.count + 1 {
                return
            }
            result.removeLast()
            check[i] = false
        }
    }
}