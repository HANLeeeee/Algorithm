import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    let dic: [Int: Int] = [2:5, 3:4, 4:3, 5:2, 6:1]
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
    if count == 0 && forget == 0 {
        return [6, 6]
    }
    return [dic[count+forget] ?? 1, dic[count] ?? 6]
}