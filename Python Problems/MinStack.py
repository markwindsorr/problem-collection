"""
Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.

push(x) -- Push element x onto stack.
pop() -- Removes the element on top of the stack.
top() -- Get the top element.
getMin() -- Retrieve the minimum element in the stack.
 
Solution: I used a list as a data structure to implement the stack
"""

class MinStack:

    def __init__(self):
        """
        initialize your data structure here.
        """
        self.stack = []
                

    def push(self, x: int) -> None:
        self.stack.append(x)

    def pop(self) -> None:
        if len(self.stack) == 0:
            return
        self.stack.pop(len(self.stack)-1)

    def top(self) -> int:
        if len(self.stack) == 0:
            print("Stack is empty")
            return -1
        top_index = len(self.stack)-1
        return self.stack[top_index]
        

    def getMin(self) -> int:
        if len(self.stack) == 0:
            return -1
        elif len(self.stack) == 1:
            return self.stack[0]
        return min(self.stack)