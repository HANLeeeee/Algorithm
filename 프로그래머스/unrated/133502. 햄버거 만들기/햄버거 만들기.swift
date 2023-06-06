import Foundation

func solution(_ ingredient:[Int]) -> Int {
    var arr = [Int]()
    var result = 0
    
    for num in ingredient {
        arr.append(num)
        
        if arr.count > 3 {
            if arr[arr.count-4..<arr.count] == [1,2,3,1] {
                                arr = Array(arr[0..<arr.count-4])

                result += 1
            }
        }
    }
    
    return result
}