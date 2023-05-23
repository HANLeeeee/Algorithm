import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var result = 0
    let count = p.count
    let tArr = Array(t)
    
    for i in 0..<t.count-count+1 {
        var sub = String()
        for j in i..<i+count {
            sub += String(tArr[j])
        }
        if Int(sub)! <= Int(p)! {
            result += 1
        }
    }
    
    return result
}
