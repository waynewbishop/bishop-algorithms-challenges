//
//  PriorityQueue.swift
//  
//
//  Created by Wayne Bishop on 6/29/20.
//

import Foundation


public class Priority <T: Comparable> {
    
    
    private var items: Array<Table<T>> = [Table<T>]()

    
    public init() {
        //playground support
    }
    
    
    //return the entire structure
    public func peek() -> Array<Table<T>>? {
        
        if items.count > 0 {
            return items
        }
        else {
            return nil
        }
    }

    
    
    public func add(_ tvalue: T) {
        
        var isAdded: Bool = false
        
        var parentIndex: Int = 0
        var addedIndex: Float = -1
        var childIndex: Float = 0
        
        
        //dp - check for existing values
        
        for s in items {
            addedIndex += 1
        
            if s.tvalue == tvalue {
                s.count += 1
                isAdded = true
                childIndex = addedIndex
            }
        }
        
        
        if isAdded == false {
            let table: Table = Table(tvalue)
            items.append(table)
            
            //update index
            childIndex = Float(items.count) - 1
        }
                
        
        //heapify - bottom-up approach O(log n)
                  
          
          //calculate parent index
          if  childIndex != 0 {
              parentIndex = Int(floorf((childIndex - 1) / 2))
          }
          
          
          var childToUse: Table<T>
          var parentToUse: Table<T>
          
              
          //use the bottom-up approach
          while childIndex != 0 {
              
              
              childToUse = items[Int(childIndex)]
              parentToUse = items[parentIndex]
              
                  
              //swap child and parent positions
              if childToUse.count > parentToUse.count {
                  items.swapAt(parentIndex, Int(childIndex))
              }
              
              
              //reset indices
              childIndex = Float(parentIndex)
              
              
              if childIndex != 0 {
                  parentIndex = Int(floorf((childIndex - 1) / 2))
              }
              
              
          } //end while
        
        
    } //end function
         
        
}

