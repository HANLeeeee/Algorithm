
import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var result = 0

    for i in 0..<t.count-p.count+1 {
        let sub = t.dropFirst(i).prefix(p.count)
        
        result +=  Int(sub)! - Int(p)! <= 0 ? 1 : 0
    }
    
    return result
}