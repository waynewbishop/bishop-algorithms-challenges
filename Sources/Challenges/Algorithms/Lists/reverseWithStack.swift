//
//  File.swift
//  
//
//  Created by Wayne Bishop on 6/29/20.
//

import Foundation

//reverse string order using a stack
    
extension String {
    
    
    public func reverseWithStack() -> String  {
         
         let items = Stack<Character>()
         var results = ""
         
         
         for s in self {
             items.push(s)
         }
         
         
         while items.top.tvalue != nil {
             
             if let character = items.peek() {
                 results += String(character)
             }
             
             //remove item from stack..
             items.pop()
             
         }
         
         
         return results
         
     }
    
}
   

