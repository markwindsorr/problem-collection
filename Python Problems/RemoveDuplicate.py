"""
Removes Duplicates from Sorted List

Given a sorted linked list, delete all duplicates such that each element appear only once.

Solution Thought:

Check if currents node is the same as the next node, if so, keep going until we find a node with a different value..
then set the currents next node to the first node we find with a different value

"""

# Definition for singly-linked list.
class ListNode(object):
    def __init__(self, x):
        self.val = x
        self.next = None


def deleteDuplicates(self, head):
    """
    :type head: ListNode
    :rtype: ListNode
    """

    if head == None:
        return head

    current = head
    while current.next:
        if current.val == current.next.val:
            current.next == current.next.next
        else:
            current = current.next   

    return head         
    
































