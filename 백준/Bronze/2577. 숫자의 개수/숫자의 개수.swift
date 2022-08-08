var a = Int(readLine()!)!
var b = Int(readLine()!)!
var c = Int(readLine()!)!

var dic = [Int](repeating: 0, count: 10)
var res = a*b*c

while res > 0 {
    let rem = res % 10
    dic[rem] += 1
    res /= 10
}

dic.forEach {
    print($0)
}
