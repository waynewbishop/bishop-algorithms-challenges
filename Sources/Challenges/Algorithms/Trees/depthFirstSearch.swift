//
//  BSNode.swift
//  
//
//  Created by Wayne Bishop on 6/27/20.
//

import Foundation

extension BSNode {

    /**
     Linear search provides a basic idea as to how the efficiency of the algorithm is effected as
     its input size grows. In this case, all collection values must be checked to find `evalue`.

     - Parameter n: The value to find in the `Array` collection.
     - Returns: a `Int` value indicating if `evalue` was found.
     - Complexity: O(n) - linear time.
     */
    
    
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
