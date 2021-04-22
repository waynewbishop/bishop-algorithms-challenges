//
//  LargestElement.swift
//  
//
//  Created by Wayne Bishop on 4/22/21.
//

import Foundation


/// Find the Kth largest element
/// - Parameters:
///   - sequence: the list of sequence values
///   - position: the item position
/// - Returns: provides the value at the kth position


extension Array where Element: Comparable {
    
    
    func largestElement (position: Int) -> Element? {
        
        let tree = BSTree<Element>()
        var index: Int = 0
        var results: Element?
        
        //add elements to bst model
        for s in self {
            tree.append(s)
        }

        tree.root.traverse { (item: Element) -> () in
            
            /*
             note: one cannot break out of a trailing closure
             body. as a result we can compensate by providing an
             early exit using a guard statement.
             */
            guard results == nil else {
                return
            }
            
            /*
             note: determine position logic based on the
             original collection
             */
            if (self.count - index) == position {
                results = item
            }
            else {
                index += 1
            }
        }
        
        return results
    }
    
}

