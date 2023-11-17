import Foundation

func solution(_ word: String) -> Int {
    let vowels = ["A", "E", "I", "O", "U"]
    var dictionary: [String] = []
    
    func generateWords(_ current: String) {
        if current.count <= 5 {
            dictionary.append(current)
        } else {
            return
        }
        
        for vowel in vowels {
            generateWords(current + vowel)
        }
    }
    
    generateWords("")
    
    if let index = dictionary.firstIndex(of: word) {
        return index
    }
    
    return -1
}
