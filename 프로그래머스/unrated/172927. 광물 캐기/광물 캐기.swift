import Foundation

var a = [[1,1,1],[5,1,1],[25,5,1]]
var res = 987654321
var m = ["diamond":0, "iron":1, "stone":2]

func go(_ idx: Int, _ d: Int, _ ir: Int, _ s: Int, _ minerals: [String], _ p: Int) {
    if idx >= minerals.count || (d == 0 && ir == 0 && s == 0) {
        res = min(res, p)
        return
    }

    var dp = 0
    var ip = 0
    var sp = 0
    for i in idx..<min(idx+5, minerals.count) {
        dp += a[0][m[minerals[i]]!]
        ip += a[1][m[minerals[i]]!]
        sp += a[2][m[minerals[i]]!]
    }

    if d > 0 {
        go(idx+5, d-1, ir, s, minerals, p+dp)
    }

    if ir > 0 {
        go(idx+5, d, ir-1, s, minerals, p+ip)
    }

    if s > 0 {
        go(idx+5, d, ir, s-1, minerals, p+sp)
    }
}

func solution(_ picks: [Int], _ minerals: [String]) -> Int {
    go(0, picks[0], picks[1], picks[2], minerals, 0)
    return res
}
