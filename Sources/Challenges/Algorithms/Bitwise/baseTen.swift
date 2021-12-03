//
//  baseTen.swift
//  Challenges
//
//  Created by Wayne Bishop on 6/26/20.
//


import Foundation


extension LinkedList {
    
    /**
     The `toBaseTen` algorithm returns base-10 value from binary
     value represented in a linked list.

     - Returns: an Int` that represents the binary equilvalent.
     - Complexity: O(n) - linear time.
     */
        
     public func toBaseTen() -> Int {

        //trivial check
        guard head.tvalue != nil else {
            return 0
        }
        
        var current: LLNode? = head

        //establish stack
        var stack = SimpleStack<T>()

       //push items to stack
       while let item = current {
         if let value = item.tvalue {
           stack.push(value)
         }

         current = item.next
       }

      var pos: Int = 1
      var total: Int = 0


       while stack.count != 0 {

         //pop next item from stack..
         guard let node = stack.pop() else {
            break
         }

         //convert to base-10
         if let base = node as? Int {
           total += base * pos
           pos = pos * 2
         }
         
       }

      return total

      }

    
}
