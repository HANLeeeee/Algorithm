var input = Int(readLine()!)!

if input <= 100 && input >= 90 {
    print("A")
} else if input <= 89 && input >= 80 {
    print("B")
} else if input <= 79 && input >= 70 {
    print("C")
} else if input <= 69 && input >= 60 {
    print("D")
} else {
    print("F")
}