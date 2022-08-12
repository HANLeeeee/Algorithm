let num = Int(readLine()!)!
var dic = [String : Int]()

for _ in 0..<num {
    let input = readLine()!
    if dic.keys.contains(input) {
        dic[input]! += 1
    } else {
        dic[input] = 1
    }
}
let dic2 = dic.keys.sorted()
var max = 0
var maxName = ""
for i in dic2 {
    if max < dic[i]! {
        max = dic[i]!
        maxName = i
    }
}
print(maxName)