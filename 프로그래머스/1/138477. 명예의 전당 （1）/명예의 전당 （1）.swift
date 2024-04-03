import Foundation

func solution(_ k: Int, _ score: [Int]) -> [Int] {
    
    var arr: [Int] = []
    var result: [Int] = []
    
    for num in score {
        arr.append(num)
        if arr.count > k {
            arr.sort(by: >)
            arr.removeLast()
        }
        result.append(arr.min()!)
    }
    return result
}