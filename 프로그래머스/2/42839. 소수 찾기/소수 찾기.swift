import Foundation

func solution(_ numbers:String) -> Int {
    var result = 0
    var arr: [Int] = []
    
    for char in numbers {
        if let num = Int(String(char)) {
            arr.append(num)
        }
    }
    for i in 0..<arr.count {
        result += permutate(arr, i+1).map { $0.map { String($0)}.joined() }.filter({ isPrime(Int($0)!)
        }).count
    }
    
    return result
}

func permutate(_ nums: [Int], _ targetNum: Int) -> [[Int]] {
    var result = Set<[Int]>()
    var visited = [Bool](repeating: false, count: nums.count)
    
    func permute(_ nowPermute: [Int]) {
        if nowPermute.count == targetNum {
            if nowPermute.first == 0 {
                return
            }
            result.insert(nowPermute)
            return
        }
        for i in 0..<nums.count {
            if visited[i] == true {
                continue
            }
            else {
                visited[i] = true
                permute(nowPermute + [nums[i]])
                visited[i] = false
            }
        }
    }
    permute([])
    return Array(result)
}

func isPrime(_ num: Int) -> Bool {
    
    if num < 2 {
        return false
    }
    
    if num == 2 {
        return true
    }
    
    if num % 2 == 0 {
        return false
    }
    
    var i = 3
    while i * i <= num {
        if num % i == 0 {
            return false
        }
        i += 2
    }
    
    return true
}

