import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    var paperArr = [[Int]]()
    
    for i in 0..<wallpaper.count {
        let paper = Array(wallpaper[i]).map {String($0)}
        if paper.contains("#") {
            for j in 0..<paper.count {
                if paper[j] == "#" {
                    paperArr.append([i, j])
                }
            }
        }
    }

    var lux = Int.max
    var luy = Int.max
    var rdx = Int.min
    var rdy = Int.min
    for i in 0..<paperArr.count {
        lux = min(lux, paperArr[i][0])
        luy = min(luy, paperArr[i][1])
        rdx = max(rdx, paperArr[i][0])
        rdy = max(rdy, paperArr[i][1])
    }
    
    return [lux, luy, rdx+1, rdy+1]
}