import Foundation

func solution(_ arr:[Int]) -> Int {
    var arr1: [Int] = arr
    var index = 0
    
    while true {
        let arr2: [Int] = arr1.map {
            if $0 >= 50 && $0 % 2 == 0 {
                return $0 / 2
            }
            if $0 < 50 && $0 % 2 == 1 {
                return ($0 * 2) + 1
            }
            return $0
        }
        
        if arr2 == arr1 {
            break
        }
        
        arr1 = arr2
        index += 1
    }
    return index
}