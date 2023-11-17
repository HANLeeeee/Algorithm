import Foundation

func solution(_ word: String) -> Int {
    let arr = ["A", "E", "I", "O", "U"]
    var result: [String] = []
    var index = 0
    
    func generateWords(_ current: String) {
        if current.count <= 5 {
            result.append(current)
        } else {
            return
        }

        for i in arr {
            if current + i == word {
                index = result.count
                return
            }
            generateWords(current + i)
        }
    }
    
    generateWords("")
    
    return index
}
