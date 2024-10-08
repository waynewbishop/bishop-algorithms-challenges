//
//  LLNode.swift
//  
//
//  Created by Wayne Bishop on 6/27/20.
//

import Foundation


/**
    Linked list data structure
 - Complexity: O(n) - linear time.
 */

public class LLNode <T> {
    
   public var tvalue: T?
   public var previous: LLNode?
   public var next: LLNode?
    
    public init() {
        
    }

}
