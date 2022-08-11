//
//  Topological.swift
//  
//
//  Created by Wayne Bishop on 11/10/20.
//

import Foundation


extension BSNode {

    /**
     A post-order DFS traversal provides the basis for a topological sort as it applies
     to a binary search tree.
     */
    
    public func traversePost() {

        //process the left side
        if let left = self.left {
          left.traverse()
        }

        //process the right side
        if let right = self.right {
          right.traverse()
        }
        
        //nodes are printed based on their dependency.
        if let item = self.tvalue {
          print("key is \(item)")
        }
        

      }
    
}
