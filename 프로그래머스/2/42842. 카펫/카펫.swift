import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    let arr = (1...yellow).filter {
        yellow % $0 == 0
    }.sorted(by: >)
        
    for i in arr {
        if brown == (i + 2) * 2 + (yellow / i) * 2 {
            return [i+2, yellow / i + 2]
        }
    }
    
    return []
}
