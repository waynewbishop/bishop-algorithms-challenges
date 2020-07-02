//
//  File.swift
//  
//
//  Created by Wayne Bishop on 6/27/20.
//

import Foundation
    

  public class BSTree <T: Comparable> {
    
       public init() {
         //playground support
       }

          //represents the entire tree
          var root = BSNode<T>()

        
        //add a new item to the tree
         func append(_ item: T) {

          var current: BSNode<T> = root

          //check for the presence at the root node
          guard root.key != nil else {
            root.key = item
            return
          }

          let childToUse = BSNode<T>()
          childToUse.key = item
          

          //determine its positioning based on the parent value

          while let key = current.key {
             
             //check the left side
            if item < key {

              if let lnode = current.left {
                current = lnode
              }

              else {
                current.left = childToUse
                break
              }
              
            }

            
          //check the left side
            if item > key {

              if let rnode = current.right {
                current = rnode
              }

              else {
                current.right = childToUse
                break
              }
            }
          }
            
        } //end function

        
        
      //note: this could also be acheived through traversal but would occur in O(n) - linear time.

       func contains(_ item: T) -> Bool {

        var current: BSNode<T> = root

        //check presence at root node
        guard current.key != nil else {
          return false
        }

        //navigate structure in O(log n) time
        while let key = current.key {
           
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

  } //end function
        
}
    
