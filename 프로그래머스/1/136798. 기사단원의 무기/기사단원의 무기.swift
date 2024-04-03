import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var result = 0
    
    for i in 1...number {
        let count = findCount(i)
        result += count > limit ? power : count
    }
    
    return result
}

func findCount(_ num: Int) -> Int {
    var count = 0
    
    for j in 1...Int(sqrt(Double(num))){
        if num % j == 0 {
            if j * j == num {
                count += 1
            }else{
                count += 2
            }
        }
    }
    return count
}