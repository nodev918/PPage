from typing import Optional


class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

    
class List:
    def __init__(self, arr:list):
        self.head = None
        self.current = None
        self.newone = None
        first = True
        for i in arr:
            if first:
                self.current = ListNode(i)
                self.head = self.current
                first = False
            else:
                self.newone = ListNode(i)
                self.current.next = self.newone
                self.current = self.current.next
    
    def get_head(self):
        return self.head
    
    def show_list(self):
        current = self.head
        while True:
            print(current.val)
            if current.next:
                current = current.next
            else:
                break

def show_list(input_head):
    current = input_head
    while True:
        print(current.val)
        if current.next:
            current = current.next
        else:
            break


class Solution:
    def mergeTwoLists(self, list1: Optional[ListNode], list2: Optional[ListNode]) -> Optional[ListNode]:
        cur = dummy = ListNode()
        while list1 and list2:               
            if list1.val < list2.val:
                cur.next = list1
                list1, cur = list1.next, list1
            else:
                cur.next = list2
                list2, cur = list2.next, list2
                
        if list1 or list2:
            cur.next = list1 if list1 else list2
            
        return dummy.next


s = Solution()

l1 = List([1,2,4])
l2 = List([1,3,4])

solved_head = s.mergeTwoLists(l1.get_head(),l2.get_head())

show_list(solved_head)