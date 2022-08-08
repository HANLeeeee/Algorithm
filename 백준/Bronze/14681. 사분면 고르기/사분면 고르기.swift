var input = Int(readLine()!)!
var input2 = Int(readLine()!)!


if input > 0 && input2 > 0 {
    print("1")
} else if input > 0 && input2 < 0 {
    print("4")
} else if input < 0 && input2 < 0 {
    print("3")
} else if input < 0 && input2 > 0 {
    print("2")
}