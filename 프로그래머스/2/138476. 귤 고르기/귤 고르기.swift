import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var k = k
    var count = 0
    var dic: [Int: Int] = [:]
    for i in tangerine {
        dic.updateValue((dic[i] ?? 0) + 1, forKey: i)
    }
    
    let sorted = dic.values.sorted(by: >)
    
    for i in sorted {
        if k <= 0 {
            break
        }
        k -= i
        count += 1
    }
    return count
}