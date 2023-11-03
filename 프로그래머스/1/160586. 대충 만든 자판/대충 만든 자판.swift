func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    var result = [Int]()
    var dic = [String: Int]()
    
    for i in 0..<keymap.count {
        let key = Array(keymap[i]).map {String($0)}
        for j in 0..<key.count {
            dic[key[j]] = min(dic[key[j]] ?? 100, j+1)
        }
    }
    
    for i in 0..<targets.count {
        var count = 0
        let target = Array(targets[i]).map {String($0)}
        for j in 0..<target.count {
            guard dic[target[j]] != nil else {
                count = -1
                break
            }
            count += dic[target[j]]!
        }
        result.append(count)
    }
    
    return result
}