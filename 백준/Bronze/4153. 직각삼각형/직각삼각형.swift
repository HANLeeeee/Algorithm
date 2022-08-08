while true {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let a = input[0]
    let b = input[1]
    let c = input[2]
    
    if a==0 && b==0 && c==0 {
        break
    }
    
    var max = a > b ? a : b
    max = max > c ? max : c
    
    var result = false
    if max == a {
        if a*a == b*b + c*c {
            result = true
        }
    } else if max == b {
        if b*b == a*a + c*c {
            result = true
        }
    } else {
        if c*c == a*a + b*b {
            result = true
        }
    }
    print(result ? "right" : "wrong")
}