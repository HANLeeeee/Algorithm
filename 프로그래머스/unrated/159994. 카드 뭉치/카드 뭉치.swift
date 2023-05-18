import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    
    var cards1Arr = cards1
    var cards2Arr = cards2
    
    for card in goal {
        if card == cards1Arr.first {
            cards1Arr.removeFirst()
            
        } else if card == cards2Arr.first{
            cards2Arr.removeFirst()
            
        } else {
            return "No"
        }
    }
    
    return "Yes"
}