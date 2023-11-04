import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    var a = A
    var b = B
    a.sort(by: >)
    b.sort(by: <)
    
    var result = 0
    for i in 0..<a.count {
        result += a[i] * b[i]
    }
    
    return result
}