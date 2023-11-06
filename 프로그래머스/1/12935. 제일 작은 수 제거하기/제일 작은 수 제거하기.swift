func solution(_ arr:[Int]) -> [Int] {
    var arr = arr
    if arr.count == 1 {
        return [-1]
    } else {
        let min = arr.min()
        let index = arr.firstIndex(of: min!)
        arr.remove(at: index!)
    }
    return arr
}
