import Foundation

func solution(_ my_string:String, _ alp:String) -> String {
    var sArr = Array(my_string)
    
    for (index, s) in my_string.enumerated() {
        if String(s) == alp {
            sArr[index] = Character(alp.uppercased())
        }
    }
    
    return String(sArr)
}