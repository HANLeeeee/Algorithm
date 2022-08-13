import Foundation

let num = Int(readLine()!)!

for _ in 0..<num {
    let n = Int(readLine()!)!
    
    var arr = [String]()
    let input = readLine()!.components(separatedBy: " ")
    
    for i in 0..<n {
        if arr.isEmpty{
            arr.append(input[i])
        } else {
            if arr.first! < input[i] {
                arr.append(input[i])
            } else {
                arr.insert(input[i], at: 0)
            }
        }
        
    }
    for i in arr {
        print(i, terminator: "")
    }
    print("")
}