import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    var result = ""
    var left: Int = 10
    var right: Int = 12
    var numberArr = numbers
    
    for i in 0..<numberArr.count {
        if numberArr[i] == 0 {
            numberArr[i] = 11
        }
        switch numberArr[i] {
        case 1,4,7:
            left = numberArr[i]
            result += "L"
            
        case 3,6,9:
            right = numberArr[i]
            result += "R"
            
        default:
            var leftDistance = (abs(numberArr[i]-left) / 3) + (abs(numberArr[i]-left) % 3)
            var rightDistance = (abs(numberArr[i]-right) / 3) + (abs(numberArr[i]-right) % 3)
            if leftDistance > rightDistance {
                right = numberArr[i]
                result += "R"
            } else if leftDistance < rightDistance {
                left = numberArr[i]
                result += "L"
            } else {
                if hand == "right" {
                    right = numberArr[i]
                    result += "R"
                } else {
                    left = numberArr[i]
                    result += "L"
                }
            }
            
        }
    }
    
    return result
}
