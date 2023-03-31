import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var result = [Int]()
    
    for i in 0..<photo.count {
        var sum = 0
        for j in 0..<photo[i].count {
            if name.contains(photo[i][j]) {
                sum += yearning[name.firstIndex(of: photo[i][j])!]
            }
        }
        result.append(sum)
    }
    
    return result
}