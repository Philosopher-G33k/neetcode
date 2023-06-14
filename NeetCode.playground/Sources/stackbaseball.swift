import Foundation

public func calculatePoints(_ operations : inout [String] ) -> Int {
    var pointsArray = [Int]()
    for op in operations {
        switch op {
        case "+":
            let lastTwo = pointsArray.suffix(2)
            pointsArray.append(lastTwo.reduce(0,+))
        case "c", "C":
            pointsArray.removeLast()
        case "d", "D":
            pointsArray.append(Int(pointsArray.last ?? 0) * 2)
        default:
            pointsArray.append(Int(op) ?? 0)
        }
    }
    
    return pointsArray.reduce(0, +)
}
