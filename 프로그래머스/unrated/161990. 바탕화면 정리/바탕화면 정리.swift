import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    
    var lux = Int.max
    var luy = Int.max
    var rdx = Int.min
    var rdy = Int.min
    
    for i in 0..<wallpaper.count {
        let paper = Array(wallpaper[i]).map {String($0)}
        if paper.contains("#") {
            for j in 0..<paper.count {
                if paper[j] == "#" {
                    lux = min(lux, i)
                    luy = min(luy, j)
                    rdx = max(rdx, i)
                    rdy = max(rdy, j)
                }
            }
        }
    }
    return [lux, luy, rdx+1, rdy+1]
}