import Foundation

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    var result: [Int] = []
    var dic: [Character: Int] = [:]
    
    for key in keymap {
        let key = Array(key)
        for i in 0..<key.count {
            dic[key[i]] = min(dic[key[i]] ?? 100, i+1)
        }
    }
    
    for i in 0..<targets.count {
        var sum = 0
        for char in targets[i] {
            if let count = dic[char] {
                sum += count
            } else {
                sum = -1
                break
            }
        }
        result.append(sum)
    }
    
    return result
}
