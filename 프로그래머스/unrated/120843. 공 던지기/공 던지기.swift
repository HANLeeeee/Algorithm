import Foundation

func solution(_ numbers:[Int], _ k:Int) -> Int {
    let result = numbers[2*(k-1)%numbers.count]
    return result
}