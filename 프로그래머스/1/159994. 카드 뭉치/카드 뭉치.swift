import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var cards1 = Array(cards1.reversed())
    var cards2 = Array(cards2.reversed())
    
    for word in goal {
        if cards1.last == word {
            _ = cards1.popLast()
        } else if cards2.last == word {
            _ = cards2.popLast()
        } else {
            return "No"
        }
    }
    
    return "Yes"
}