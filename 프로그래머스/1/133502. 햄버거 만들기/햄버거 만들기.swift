import Foundation

func solution(_ ingredient:[Int]) -> Int {
    
    var result = 0
    var arr: [Int] = []
    
    for num in ingredient {
        arr.append(num)
        let suffix = arr.suffix(4)
        if suffix == [1,2,3,1] {
            result += 1
            arr.removeLast(4)
        }
    }
    
    return result
}
