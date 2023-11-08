import Foundation

func solution(_ numbers: [Int], _ target: Int) -> Int {
    return dfs(numbers, target, 0, 0)
}

func dfs(_ numbers: [Int], _ target: Int, _ index: Int, _ sum: Int) -> Int {
    if index == numbers.count {
        return sum == target ? 1 : 0
    }
    
    let num = numbers[index]
    let add = dfs(numbers, target, index + 1, sum + num)
    let sub = dfs(numbers, target, index + 1, sum - num)
    
    return add + sub
}