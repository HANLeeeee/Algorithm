var input = Int(readLine()!)!
print(factorial(n: input))

func factorial(n: Int) -> Int {
    if n == 0 {
        return 1
    } else {
        return n * factorial(n: n-1)
    }
}