import Foundation

public class MinStack {
    private var stack : [Int]
    private var minValue: Int?
    
    public init() {
        stack = [Int]()
    }
    
    public func top() -> Int? {
        if stack.count <= 0 {
            return nil
        }
        print(stack.count)
        return stack.last
    }
    
    public func pop() -> Int? {
        if stack.count <= 0 {
            return nil
        }
        let lastElement = stack.last
        stack.removeLast()
        return lastElement
    }
    
    public func push(_ value: Int) {
        if stack.count == 0 {
            minValue = value
        } else {
            if value < minValue ?? 0 {
                minValue = value
            }
        }
        stack.append(value)
        print(stack.count)
    }
    
    public func getMin() -> Int? {
        return minValue
    }
    
}
