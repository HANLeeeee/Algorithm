import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    var result = [Int]()
    
    var dic = [String: Int]()
    for term in terms {
        let split = term.split(separator: " ").map({ String($0) })
        dic[split[0]] = Int(split[1])
    }
    
    for i in 0..<privacies.count {
        let date = privacies[i].split(separator: " ").map({ String($0) })
        
        let dist = Calendar.current.dateComponents([.month], from: date[0].toDate()!, to: today.toDate()!)
        
        print("\(date[1])... \(dist)")
        if dist.month! >= dic[date[1]]! {
            result.append(i+1)
        }
    }
    
    return result
}

extension String {
    func toDate() -> Date? { //"yyyy-MM-dd HH:mm:ss"
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy.MM.dd"
        dateFormatter.timeZone = TimeZone(identifier: "ko")
        if let date = dateFormatter.date(from: self) {
            return date
        } else {
            return nil
        }
    }
}
