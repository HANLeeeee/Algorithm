import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    let arr: [Int] = [6, 6, 5, 4, 3, 2, 1]
    
    let forget = lottos.filter { $0 == 0 }.count
    let count = win_nums.filter { lottos.contains($0) }.count
    
    return [arr[count+forget], arr[count]]
}
