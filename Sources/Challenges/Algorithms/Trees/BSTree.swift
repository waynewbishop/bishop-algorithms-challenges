//
//  BSTree.swift
//  Created by Wayne Bishop on 6/27/20.
//  Copyright (c) 2020 Arbutus Software Inc. All rights reserved.
//

import Foundation
    

public class BSTree <T: Comparable> {

    //represents the entire tree
    var root: BSNode<T>
    
    
    public init() {
        root = BSNode<T>()
    }

    
    //add a new item to the tree
     func append(_ item: T) {

      var current: BSNode<T> = root

      //check for the presence at the root node
      guard root.tvalue != nil else {
        root.tvalue = item
          
          /*
          using a database? The insert goes here..
          parentid record is null
          */
        return
      }
        

      let childToUse = BSNode<T>()
      childToUse.tvalue = item
      

      //determine its positioning based on the parent value

      while let tvalue = current.tvalue {
         
         //check the left side
        if item < tvalue {

          if let lnode = current.left {
            current = lnode
          }

          else {
            current.left = childToUse
               /*
               using a database? The insert goes here..
               when inserting, also capture the "current" reference as the parentid.
                */
            break
          }
        }

        
       //check right side
        if item > tvalue {

          if let rnode = current.right {
            current = rnode
          }

          else {
            current.right = childToUse
              /*
              using a database? The insert goes here..
              when inserting, also capture the "current" reference as the parentid.
              */
            break
          }
        }
      }
        
    } //end function

       

    
    /*
    note: this could also be acheived through traversal
    but would occur in O(n) - linear time.
     */

    
   func contains(_ item: T) -> Bool {

    var current: BSNode<T> = root

    //check presence at root node
    guard current.tvalue != nil else {
      return false
    }
    

    //navigate structure - O(log n)
    while let key = current.tvalue {
       
       //check left side
      if item <= key {

        if item == key {
          return true
        }

        if let lnode = current.left {
          current = lnode
          continue
        }

        else {
          return false
        }
      }

      
      //check right side
      if item >= key {

        if item == key {
          return true
        }

        if let rnode = current.right {
          current = rnode
          continue
        }

        else {
          return false
        }
        
      }
    } //end while

   return false
}
    
    
    //helper function - transform model
    private func treeToQueue() -> Queue<T> {
        
        let queue = Queue<T>()
        
        //trailing closure - dfs
        root.traverse { (key: T) in
            queue.enQueue(key)
        }
        
        return queue
    }

 
}
    
