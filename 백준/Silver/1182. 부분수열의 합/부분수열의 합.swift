func combination(_ nums: [Int], _ targetNum: Int) -> [[Int]] {
    var result = [[Int]]()
    
    func combi(_ index: Int, _ nowCombi: [Int]) {
        if nowCombi.count == targetNum {
            result.append(nowCombi)
            return
        }
        for i in index..<nums.count {
            combi(i + 1, nowCombi + [nums[i]])
        }
    }
    
    combi(0, [])
    
    return result
}

let num = readLine()!.split(separator: " ").map{ Int($0)!}
let input = readLine()!.split(separator: " ").map{ Int($0)!}
let n = num[0]
let s = num[1]
var arr = [Int](input)

var count = 0
for i in stride(from: 1, to: n+1, by: 1) {
    let combi = combination(arr, i)
    
    for j in combi {
        var sum = 0
        for r in 0..<j.count {
            sum += j[r]
        }
        if sum == s {
            count += 1
        }
    }
}

print(count)