/**
 * Definition for singly-linked list.
 * function ListNode(val, next) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.next = (next===undefined ? null : next)
 * }
 */
/**
 * @param {ListNode} head
 * @param {number} n
 * @return {ListNode}
 */
const removeNthFromEnd = (head, n) => {
    // Get length
    let length = 1;
    let curr = head;
    while (curr.next) {
        length++;
        curr = curr.next;
    }

    // If the length is the same as n, then the head needs to be removed.
    if (length === n) return head.next;

    const indexOfRemoveNode = length - n;
    curr = head;
    let currentIdx = 0;
    while (curr.next) {
        if (currentIdx + 1 === indexOfRemoveNode) {
            curr.next = curr.next.next;
            break;
        }
        currentIdx++;
        curr = curr.next;
    }
    return head;
};
