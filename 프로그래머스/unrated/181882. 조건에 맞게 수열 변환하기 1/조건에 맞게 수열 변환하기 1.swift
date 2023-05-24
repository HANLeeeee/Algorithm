import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var arr2 = arr
    
    for i in 0..<arr.count {
        if arr[i] >= 50 && arr[i] % 2 == 0 {
            arr2[i] = arr[i] / 2
        }
        if arr[i] < 50 && arr[i] % 2 == 1 {
            arr2[i] = arr[i] * 2
        }
    }
    
    return arr2
}