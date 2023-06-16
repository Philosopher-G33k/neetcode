import Foundation

public func reverseLinkedList(_ head: ListNode) {
    if head.next == nil {
        return
    }
    
    // Starting position
    var prev: ListNode? = nil
    var curr: ListNode? = head
    var next: ListNode? = curr?.next
    
    while (curr?.next != nil) {
        curr?.next = prev
        prev = curr
        curr = next
        next = next?.next
        curr?.next = prev
    }
    
    printList(prev)
}

func printList(_ head: ListNode?) {
    var curr : ListNode? = head
    while(curr != nil) {
        print(curr?.value ?? 0)
        curr = curr?.next
    }
}
