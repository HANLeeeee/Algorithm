import Foundation

func solution(_ lines: [[Int]]) -> Int {
    // -100 부터 100 까지 이기 때문에 200 개의 원소를 갖는 빈 배열을 만들어준다.
    var arr: [Int] = Array(repeating: 0, count: 200)

    for line in lines {
        //라인의 시작점부터 끝지점까지 반복
        for j in line[0]..<line[1] {
            arr[j+100] += 1
        }
    }

    //배열에서 2번이상 겹치는 곳의 개수를 세어준다.
    return arr.filter({$0 >= 2}).count
}