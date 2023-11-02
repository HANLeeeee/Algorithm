/*
 7조각으로 자른 피자
 피자를 나눠먹을 사람의 수 n
 1조각 이상 먹기위해 필요한 피자의 수
*/

import Foundation

func solution(_ n:Int) -> Int {
    
    let result = n%7 == 0 ? n/7 : n/7+1
    return result
}