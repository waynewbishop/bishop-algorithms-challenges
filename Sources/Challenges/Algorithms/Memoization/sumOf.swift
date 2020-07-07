//
//  sumOf.swift
//  
//
//  Created by Wayne Bishop on 7/2/20.
//

import Foundation


extension BSNode {
    
    //note: used with sumOf code challenge
    
    func traverse(_ formula: (T)-> ()) {

          if let left = self.left {
            left.traverse(formula)
          }
            
          if let key = self.key {
            formula(key)
          }
            
          if let right = self.right {
            right.traverse(formula)
          }
    }
    
}


/*
 note: to use this function one must create a new BSTree instance and populate it
with content.
*/

extension BSTree {
    
    
    //returns (possible) pair of numbers that equal the total
    //todo: return array of tuples?
      func sumof (total: Int) -> (Int, Int) {
        
            var addends = Set<Int>()
            var pair: (Int, Int) = (0,0)
            
            //invoke dfs with closure..
            root.traverse { (key: T) -> () in
            
                if let entity = key as? Int {
                    
                    //find pairing value
                    let diff = total - entity
                    
                    //constant time - O(1). dynamic programming
                    if addends.contains(diff) || diff == 0 {
                        pair = (entity, diff)
                        //exit traversal...
                    }
                                                            
                    else {
                        addends.insert(entity)
                    }
                }
              
            } //end closure
        
            return pair
                  
        }

    }
    
