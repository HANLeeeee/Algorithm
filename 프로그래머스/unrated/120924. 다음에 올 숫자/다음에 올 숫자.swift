func solution(_ common:[Int]) -> Int {
    let first = common[1] - common[0]
    let second = common[2] - common[1]
    
    if first == second {
        return common.last! + second
    } else {
        return common.last! * (common[2] / common[1])
    }
}