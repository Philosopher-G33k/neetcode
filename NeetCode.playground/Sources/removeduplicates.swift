import Foundation

public func removeDuplicates (nums : inout [Int]) -> [Int] {
    var left = 0
    for right in 1..<nums.count {
        if nums[left] != nums[right] {
            left += 1
            nums[left] = nums[right]
        }
    }
    return Array(nums[0...left])
}


