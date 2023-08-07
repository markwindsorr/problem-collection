# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    
    def leafSimilar(self, root1: TreeNode, root2: TreeNode) -> bool:
        
        tree_one_leaves = self.traverse_tree(root1, [])
        tree_two_leaves = self.traverse_tree(root2, [])       
        return tree_one_leaves == tree_two_leaves
    
    def traverse_tree(self, root, leaves) -> [int]:
        
        if not root:
            return
        if root.left == None and root.right == None:
            leaves.append(root.val)
        self.traverse_tree(root.left, leaves)
        self.traverse_tree(root.right, leaves)
        return leaves
        