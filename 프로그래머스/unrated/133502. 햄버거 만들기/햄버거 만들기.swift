import Foundation

func solution(_ ingredient:[Int]) -> Int {
    var arr = [Int]()
    var result = 0

    for num in ingredient {

        arr.append(num)
        // let suffix = arr.suffix(4)
        if Array(arr.suffix(4)) == [1, 2, 3, 1] {
            result += 1
            arr.removeLast(4)
        }
    }

    return result
}