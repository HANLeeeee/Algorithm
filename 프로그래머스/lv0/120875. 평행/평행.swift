import Foundation

func makeInclination(dot1: [Int], dot2: [Int]) -> Float {
    let x1 = dot1[0]
    let y1 = dot1[1]
    
    let x2 = dot2[0]
    let y2 = dot2[1]
    
    return Float(y2-y1) / Float(x2-x1)
}

func solution(_ dots:[[Int]]) -> Int {
    var result = 0
    
    if makeInclination(dot1: dots[0], dot2: dots[1]) == makeInclination(dot1: dots[2], dot2: dots[3]) {
        result = 1
    }
    if makeInclination(dot1: dots[0], dot2: dots[2]) == makeInclination(dot1: dots[1], dot2: dots[3]) {
        result = 1
    }
    if makeInclination(dot1: dots[0], dot2: dots[3]) == makeInclination(dot1: dots[1], dot2: dots[2]) {
        result = 1
    }
    
    return result
}