import Foundation

func solution(_ targets:[[Int]]) -> Int {
    
    let sorted = targets.sorted { $0[1] < $1[1] }
    var end = Int.min
    var result = 0
    
    for sort in sorted {
        if sort[0] >= end {
            end = sort[1]
            result += 1
        }
    }
    
    return result
}