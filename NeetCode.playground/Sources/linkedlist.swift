import Foundation

public class ListNode {
    var value: Int
    var next: ListNode?
    
    public init(value: Int) {
        self.value = value
    }
}

public class LinkedList {
    var head: ListNode
    var tail: ListNode
    
    public init(node: ListNode) {
        head = node
        tail = node
        head.next = nil
        tail.next = nil
    }
    
    public func getHead() -> ListNode {
        return head
    }
    
    public func addNode(_ node: ListNode) {
        tail.next = node
        tail = node
    }
    
    public func printList() {
        var curr : ListNode? = head
        while(curr != nil) {
            print(curr?.value ?? 0)
            curr = curr?.next
        }
    }
}
