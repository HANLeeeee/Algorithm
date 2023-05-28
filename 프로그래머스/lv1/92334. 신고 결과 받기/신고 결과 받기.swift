import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    
    var userDic = [String : [String]]()
    var dic = [String : Int]()
    var result = Array(repeating: 0, count: id_list.count)
    
    for rep in Set(report) {
        let arr = rep.split(separator: " ").map { String($0) }
        userDic[arr[0]] = (userDic[arr[0]] ?? []) + [arr[1]]
        dic[arr[1]] = (dic[arr[1]] ?? 0) + 1
    }
    
    for i in 0..<id_list.count {
        for arr in userDic[id_list[i]] ?? [] {
            if dic[arr] ?? 0 >= k {
                result[i] += 1
            }
        }
    }
    
    return result
}