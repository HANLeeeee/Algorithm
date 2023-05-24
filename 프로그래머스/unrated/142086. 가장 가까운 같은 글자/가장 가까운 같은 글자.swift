import Foundation

func solution(_ s:String) -> [Int] {
    var result = [Int]()
    let sArr = Array(s)
    var arr = [Character]()
    
    for ch in sArr {
        if let last = arr.lastIndex(of: ch) {
            result.append(arr.count - last)
        } else {
            result.append(-1)
        }
        arr.append(ch)
    }
    
    return result
}