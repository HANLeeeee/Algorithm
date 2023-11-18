import Foundation

func solution(_ answers:[Int]) -> [Int] {
    
    let one = [1,2,3,4,5]
    let two = [2,1,2,3,2,4,2,5]
    let three = [3,3,1,1,2,2,4,4,5,5]
    var result = [0,0,0]
    
    answers.enumerated().forEach { index, value in
        if one[index % one.count] == value {
            result[0] += 1
        }
        if two[index % two.count] == value {
            result[1] += 1
        }
        if three[index % three.count] == value {
            result[2] += 1
        }
    }
    
    var ans = [Int]()
    var maxValue = result.max() ?? 0
    
    for (i, value) in result.enumerated() {
        maxValue = max(maxValue, value)
        if maxValue == value {
            ans.append(i+1)
        }
    }
    
    return ans
}