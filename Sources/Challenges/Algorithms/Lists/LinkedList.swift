//
//  LinkedList.swift
//  
//
//  Created by Wayne Bishop on 6/27/20.
//

import Foundation

/**
   Linked List Algorithm. Provides a model

 - Complexity: O(n) - linear time.
 */

   public class LinkedList <T>{

      var head = LLNode<T>()
    
        public init() {
            //playgrounds support
        }

     public func append(_ item: T) {

        guard head.tvalue != nil else {
          head.tvalue = item
          return
        }

        var current: LLNode = head

        let childToUse = LLNode<T>()
        childToUse.tvalue = item
        

        //find the next position - O(n)
        while let position = current.next {
          current = position
        }

        current.next = childToUse
        childToUse.previous = current
        
      }

    
        //print values
        public func printValues() {
            
            var current: LLNode? = head
            
            //assign the next instance
            while current != nil {
                
                if let item = current {
                    if let tvalue = item.tvalue {
                        print("link item is: \(tvalue)")
                    }
                    current = item.next
                }
            }
            
        }
        
    
      //reverse the order of a linked list
      public func reverse() {
       
       //initial condition
       guard head.tvalue != nil else {
         return
       }
       
       var current: LLNode<T>? = head

       while let item = current {
           
           //preserve list
           let next = item.next
           item.next = item.previous
           item.previous = next
           
           //advance to next record
           current = next
           
           if next == nil {
               head = item
           }
           
       } //end while

     }
    
    

    }

