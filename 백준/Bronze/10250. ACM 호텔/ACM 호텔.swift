var input = Int(readLine()!)!


for _ in 0..<input {
    var roomweight = 0
    var roomheight = 0
    let input2 = readLine()!.split(separator: " ").map { Int(String($0))! }
    let height = input2[0]
    let num = input2[2]
    if num % height > 0 {
        roomheight = num%height
        roomweight += num/height+1

    } else {
        roomheight = height
        roomweight += num/height
    }
    if roomweight / 10 == 0 {
        print(String(roomheight)+String(0)+String(roomweight))
    } else {
        print(String(roomheight)+String(roomweight))
    }
}