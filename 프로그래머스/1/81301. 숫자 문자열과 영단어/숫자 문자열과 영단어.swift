import Foundation

func solution(_ s:String) -> Int {
    var result = ""
    
    let dic = ["zero":0, "one":1, "two":2, "three":3, "four":4, "five":5, "six":6, "seven":7, "eight":8, "nine":9]
    
    var word = ""
    for c in s {
        if let num = Int(String(c)) {
            result += String(num)
            word = ""
            continue
        }
        word += String(c)
        if dic.contains(where: { $0.key == word}) {
            result += String(dic[word]!)
            word = ""
        }
    }
    
    return Int(result) ?? 0
}