func isGroupWord(word: String) -> Int {
    var check = [Character]()
    var before = Character("*")
    for char in word {
        if char == before {
            continue
        } else if check.contains(char) {
            return 0
        } else {
            check.append(char)
            before = char
        }
    }
    return 1
}

let N = Int(readLine()!)!
var result = 0

for _ in 0..<N {
    result += isGroupWord(word: readLine()!)
}

print(result)