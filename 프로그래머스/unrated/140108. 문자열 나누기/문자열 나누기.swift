import Foundation

func solution(_ s:String) -> Int {
    var result = 0
    var arr = Array(s)
    var x = arr[0]
    var xCnt = 0
    var noCnt = 0
    var isTrue = false

    while !arr.isEmpty {
        let pop = arr.removeFirst()
        
        if isTrue {
            x = pop
            isTrue = false
        }
        
        if x == pop {
            xCnt += 1
        } else {
            noCnt += 1
        }
        
        
        if xCnt == noCnt || arr.isEmpty {
            result += 1
            isTrue = true
            (xCnt, noCnt) = (0, 0)
        }
    }
    
    return result
}