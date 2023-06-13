import Foundation

public func concatenateArray(_ nums : inout [Int], _ numberOfConcats: Int = 2) -> [Int] {
    var concatenatedArray : [Int] = Array(repeating: 0, count: nums.count * numberOfConcats)
    var i = 0
    for _ in 0..<numberOfConcats{
        for value in nums {
            concatenatedArray[i] = value
            i += 1
        }
    }
    return concatenatedArray
}
