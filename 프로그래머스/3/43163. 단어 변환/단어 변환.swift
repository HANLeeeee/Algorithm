import Foundation

var result = Int.max
var check: [Bool] = []

func solution(_ begin: String, _ target: String, _ words: [String]) -> Int {
    check = Array(repeating: false, count: words.count)
    dfs(begin, target, words, 0)
    return result == Int.max ? 0 : result
}

func dfs(_ begin: String, _ target: String, _ words: [String], _ count: Int) {
    if target == begin {
        result = result > count ? count : result
        return
    } else {
        for i in 0..<words.count {
            if !check[i] {
                var differences = 0

                for (char1, char2) in zip(begin, words[i]) {
                    if char1 != char2 {
                        differences += 1
                    }
                    if differences > 1 {
                        break
                    }
                }
                if differences == 1 {
                    check[i] = words[i] == target ? false : true
                    dfs(words[i], target, words, count + 1)
                }
            }
        }
    }
}