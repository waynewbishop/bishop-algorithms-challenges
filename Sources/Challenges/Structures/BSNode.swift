//
//  BSNode.swift
//  
//
//  Created by Wayne Bishop on 6/29/20.
//

import Foundation


/// Binary Search Tree data structure.
   public class BSNode<T> {

      var tvalue: T?
      var rank: Int
      var left: BSNode<T>?
      var right: BSNode<T>?
    
      public init() {
          //used in the rank ordering codde challenge
          self.rank = 0
      }
    
}
