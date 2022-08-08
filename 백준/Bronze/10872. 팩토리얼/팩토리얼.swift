var input = Int(readLine()!)!

var result = 1

if input > 1 {
    for i in 2...input {
        result *= i
    }
}
print(result)