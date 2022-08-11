//
//  BSNode.swift
//  
//
//  Created by Wayne Bishop on 6/27/20.
//

import Foundation

extension BSNode {

    
    /// <#Description#>
    public func traverse() {

        //process the left side
        if let left = self.left {
          left.traverse()
        }
        
        //only called when reached bottom of tree...
        if let item = self.tvalue {
          print("key is \(item)")
        }

        //process the right side
        if let right = self.right {
          right.traverse()
        }
        

      }
 
    
    //flatten the model to a queue
    public func traverseToQueue() {
        
        let queue = Queue<T>()
        
        //process the left side
        if let left = self.left {
          left.traverse()
        }
        
        //enqueue results
        if let item = self.tvalue {
            queue.enQueue(item)
        }
        
        //process the right side
        if let right = self.right {
          right.traverse()
        }
        
    }
    
    
    
}
