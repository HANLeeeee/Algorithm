import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String]  {
    var players = players
    var player = [String: Int]()

    for (index, name) in players.enumerated() {
        player[name] = index
    }

    for name in callings {
        guard let index = player[name] else {
            continue
        }
        let pre = index - 1

        players.swapAt(pre, index)
        player[players[pre]] = player[players[pre]]! - 1
        player[players[index]] = player[players[index]]! + 1
    }

    return players
}