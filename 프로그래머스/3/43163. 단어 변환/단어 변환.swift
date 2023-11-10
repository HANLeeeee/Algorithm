import Foundation

var check: [Bool] = []
var result: [Int] = []

func solution(_ begin: String, _ target: String, _ words: [String]) -> Int {
    check = Array(repeating: false, count: words.count)
    if !words.contains(target) {
        return 0
    }
    dfs(begin, target, words, 0)
    print(result)
    return result.min() ?? 0
}

func dfs(_ begin: String, _ target: String, _ words: [String], _ count: Int) {

    for (i, word) in words.enumerated() {
        var dif = 0
        if !check[i] {
            for (char1, char2) in zip(begin, word) {
                if char1 != char2 {
                    dif += 1
                }
                if dif > 1 {
                    break
                }
            }
            if dif == 1 {
                check[i] = true
                dfs(word, target, words, count + 1)
                if word == target {
                    result.append(count+1)
                }
                check[i] = false
            }
        }
    }
}