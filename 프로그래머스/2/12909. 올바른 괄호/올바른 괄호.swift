import Foundation

func solution(_ s:String) -> Bool {
    
    var arr: [Character] = []
    
    for char in s {
        if char == "(" {
            arr.append(char)
        } else {
            if arr.isEmpty {
                return false
            } else {
                arr.removeLast()
            }
        }
    }
    
    if arr.isEmpty {
        return true
    }
    return false
}
