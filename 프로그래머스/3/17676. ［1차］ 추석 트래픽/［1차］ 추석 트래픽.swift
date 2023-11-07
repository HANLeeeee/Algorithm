import Foundation

func solution(_ lines:[String]) -> Int {
    var startArr: [Int] = []
    var endArr: [Int] = []
    var afterArr: [Int] = []
    
    for line in lines {
        var split = line.split(separator: " ").map { String($0) }
        let time = split[1].split(separator: ":")
        let hour = Int(time[0])! * 3600
        let min = Int(time[1])! * 60
        let sec = time[2].split(separator: ".").map { Int(String($0))! }
        let endTime = (hour+min+sec[0])*1000 + sec[1]
        endArr.append(endTime)
        
        split[2].removeLast()
        let during = Int(Double(split[2])! * 1000)
        startArr.append(endTime - during + 1)
        afterArr.append(endTime + 999)
    }
    
    var result = 0
    for i in 0..<startArr.count {
        var count = 1
        for j in i+1..<startArr.count {
            if startArr[j] >= endArr[i] && startArr[j] <= afterArr[i]
                || endArr[j] >= endArr[i] && endArr[j] <= afterArr[i]
                || startArr[j] <= endArr[i] && endArr[j] >= afterArr[i] {
                count += 1
            }
        }
        result = max(result, count)
    }
    return result
}