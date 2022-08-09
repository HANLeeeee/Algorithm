let T = Int(readLine()!)!

//✅ 1000 이하의 모든 삼각수를 array에 넣는다.
var triNumArray = [Int]()
var n = 1
var triNum: Int

repeat {
    triNum = n * (n + 1) / 2
    n += 1
    triNumArray.append(triNum)
} while triNum <= 1000

//✅ 삼각수 3개를 조합 (combination)하여 만들 수 있는 1000이하의 수를 array에 넣는다.
var sumArray = [Int]()
var sum: Int

for i in 0..<triNumArray.count {
    for j in i..<triNumArray.count {
        for k in j..<triNumArray.count {
            sum = triNumArray[i] + triNumArray[j] + triNumArray[k]
            if sum <= 1000 {
                sumArray.append(sum)
            }
        }
    }
}

//✅ 주어진 입력값 k가 sumArray에 있는지 확인한다.
for _ in 0..<T {
    let k = Int(readLine()!)!
    print(sumArray.contains(k) ? 1 : 0)
}