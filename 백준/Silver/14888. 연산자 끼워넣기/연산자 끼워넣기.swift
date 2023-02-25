let n = Int(readLine()!)!
let numArr = readLine()!.split(separator: " ").map{ Int($0)!} //수열
var operatorArr = readLine()!.split(separator: " ").map{ Int($0)!} //연산자

var maxVal = -1000000000
var minVal = 1000000000

func dfs(_ num: Int, _ index: Int) {
    if n <= index {
        maxVal = max(maxVal, num)
        minVal = min(minVal, num)
    }
    
    for i in 0..<4 {
        if operatorArr[i] > 0 {
            operatorArr[i] -= 1
            
            switch i {
            case 0: //더하기
                dfs(num + numArr[index], index + 1)
            case 1: //빼기
                dfs(num - numArr[index], index + 1)
            case 2: //곱셈
                dfs(num * numArr[index], index + 1)
            default: //나눗셈
                dfs(num / numArr[index], index + 1)
            }
            operatorArr[i] += 1
        }
    }
}

dfs(numArr[0], 1)
print(maxVal)
print(minVal)