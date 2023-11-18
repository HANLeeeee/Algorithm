import Foundation

func solution(_ answers:[Int]) -> [Int] {
    
    let one = [1,2,3,4,5]
    let two = [2,1,2,3,2,4,2,5]
    let three = [3,3,1,1,2,2,4,4,5,5]
    var result = [0,0,0]
    
    for (i, answer) in answers.enumerated() {
        
        if i < one.count {
            if one[i] == answer {
                result[0] += 1
            }
        } else {
            if one[i % one.count] == answer {
                result[0] += 1
            }
        }
        
        
        if i < two.count {
            if two[i] == answer {
                result[1] += 1
            }
        } else {
            if two[i % two.count] == answer {
                result[1] += 1
            }
        }
        
        if i < three.count {
            if three[i] == answer {
                result[2] += 1
            }
        } else {
            if three[i % three.count] == answer {
                result[2] += 1
            }
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
