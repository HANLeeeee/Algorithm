let input = readLine()!.split(separator: " ").map{ Int($0)!}
var seta = Set<String>()
var setb = Set<String>()

for _ in 0..<input[0] {
    seta.insert(readLine()!)
}
for _ in 0..<input[1] {
    setb.insert(readLine()!)
}

var result = Set<String>()
result = seta.intersection(setb)
print(result.count)
for i in result.sorted() {
    print(i)
}