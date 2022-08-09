let n = Int(readLine()!)!
var sum = 0
var realI = 0

for i in 1...n { //1번
    sum = i
    for j in String(i) { //2번
        sum += Int(String(j))!
    }
    if sum == n { //3번
        realI = i
        break
    }
}
if realI == 0 { //4번
    print("0")
}else {
    print("\(realI)")
}