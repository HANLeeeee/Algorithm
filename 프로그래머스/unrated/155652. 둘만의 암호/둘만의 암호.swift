import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    let char = Array(s)
    let skipChar = Array(skip)
    
    var arr = [Character]()
    for i in 97..<123 {
        arr.append(Character(UnicodeScalar(i)!))
    }
    
    for i in 0..<skip.count {
        arr.remove(at: arr.firstIndex(of: skipChar[i])!)
    }
    
    var result = ""
    for i in 0..<s.count {
        let originIndex = arr.firstIndex(of: char[i])!
        var nextIndex = originIndex + index
        while nextIndex >= arr.count {
            nextIndex -= arr.count
        }
        result += String(arr[nextIndex])
    }
    
    return result
}