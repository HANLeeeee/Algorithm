let num = Int(readLine()!)!
var set = Set<String>()

for _ in 0..<num {
    let input = readLine()!.split(separator: " ")
    let name = input[0]
    let isEnter = input[1]
    
    if isEnter == "enter" {
        set.insert(String(name))
    } else {
        set.remove(String(name))
    }
}

for setname in set.sorted(by: { $0 > $1 }) {
    print(setname)
}