var input = Int(readLine()!)!


for i in 1...input {
    if i != input{
        for _ in 1...(input-i) {
            print(" ", terminator: "")
        }
        for _ in 1...i {
            print("*", terminator: "")
        }
    } else {
        for _ in 1...input {
            print("*", terminator: "")
        }
    }
    print("")
}