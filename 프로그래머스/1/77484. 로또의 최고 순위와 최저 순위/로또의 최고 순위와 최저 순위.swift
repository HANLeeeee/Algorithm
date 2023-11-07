import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    let arr: [Int] = [6, 6, 5, 4, 3, 2, 1]
    var count = 0
    var forget = 0
    for lotto in lottos {
        if lotto == 0 {
            forget += 1
            continue
        }
        for num in win_nums {
            if lotto == num {
                count += 1
            }
        }
    }
    return [arr[count+forget], arr[count]]
}