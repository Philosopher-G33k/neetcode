import Foundation

public func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var count = 0
        for value in nums where value != val {
            nums[count] = value
            count += 1
        }
        return count
}
