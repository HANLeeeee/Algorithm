import Foundation
func parse(_ arr: Array<String>)->Int{
    var zeroPart = 0
    var onePart = 0
    var flag = 0
    
    if arr[0] == "0" {
        flag = 0
        zeroPart += 1
    }else {
        flag = 1
        onePart += 1
    }

    for i in arr{
        if (i == "0" && flag == 1){
            flag = 0
            zeroPart += 1
        }else if (i == "1" && flag == 0){
            flag = 1
            onePart += 1
        }else{continue}
    }
    return min(zeroPart, onePart)
}
var S = Array(readLine()!.map{String($0)})
print(parse(S))