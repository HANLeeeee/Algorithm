import Foundation

func solution(_ friends: [String], _ gifts: [String]) -> Int {
    var giftCounts = [String: (given: Int, received: Int)]()
    var records = [String: [String: Int]]()

    for gift in gifts {
        let separated = gift.components(separatedBy: " ")
        let giver = separated[0]
        let receiver = separated[1]
        
        giftCounts[giver, default: (given: 0, received: 0)].given += 1
        giftCounts[receiver, default: (given: 0, received: 0)].received += 1
        
        records[giver, default: [String: Int]()][receiver, default: 0] += 1
    }

    var result = [String: Int]()
    for i in 0..<friends.count {
        for j in i+1..<friends.count {
            let giver = friends[i]
            let receiver = friends[j]
            
            let giverToReceiverCount = records[giver]?[receiver] ?? 0
            let receiverToGiverCount = records[receiver]?[giver] ?? 0
            
            if giverToReceiverCount > receiverToGiverCount {
                result[giver, default: 0] += 1
            } else if giverToReceiverCount < receiverToGiverCount {
                result[receiver, default: 0] += 1
            } else {
                let giverGiftCount = (giftCounts[giver]?.given ?? 0) - (giftCounts[giver]?.received ?? 0)
                let receiverGiftCount = (giftCounts[receiver]?.given ?? 0) - (giftCounts[receiver]?.received ?? 0)
                
                if giverGiftCount > receiverGiftCount {
                    result[giver, default: 0] += 1
                } else if giverGiftCount < receiverGiftCount {
                    result[receiver, default: 0] += 1
                }
            }
        }
    }
    
    return result.values.max() ?? 0
}
