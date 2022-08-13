let num = Int(readLine()!)!

for _ in 0..<num {
    _ = Int(readLine()!)!
    
    var arr = [String]()
    let input = readLine()!.split(separator: " ").map{String($0)}
    
    for i in input {
        if arr.isEmpty{
            arr.append(i)
        } else {
            if arr.first! < i {
                arr.append(i)
            } else {
                arr.insert(i, at: 0)
            }
        }   
    }
    print(arr.joined())
}