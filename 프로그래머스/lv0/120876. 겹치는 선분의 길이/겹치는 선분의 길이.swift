import Foundation

func solution(_ lines: [[Int]]) -> Int {
    var overlaps: [(start: Int, end: Int)] = []
    for i in 0..<lines.count {
        for j in (i+1)..<lines.count {
            if lines[i][1] >= lines[j][0] && lines[i][0] <= lines[j][1] {
                var overlapStart = max(lines[i][0], lines[j][0])
                var overlapEnd = min(lines[i][1], lines[j][1])
                var overlapLength = overlapEnd - overlapStart

                for index in (0..<overlaps.count).reversed() {
                    let (start, end) = overlaps[index]
                    if overlapStart <= end && overlapEnd >= start {
                        overlapLength += max(end - overlapEnd, overlapStart - start)
                        overlapStart = min(overlapStart, start)
                        overlapEnd = max(overlapEnd, end)
                        overlaps.remove(at: index)
                    }
                }
                overlaps.append((overlapStart, overlapEnd))
            }
        }
    }

    return overlaps.reduce(0) { $0 + $1.end - $1.start }
}