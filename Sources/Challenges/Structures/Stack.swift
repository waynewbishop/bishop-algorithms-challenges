//
//  File.swift
//  
//
//  Created by Wayne Bishop on 6/27/20.
//

import Foundation


public class Stack<T> {
        
   public var top: Node<T>
   private var counter: Int = 0

    
  public init() {
        top = Node<T>()
    }
    

    //returns all values
    public var elements: Array<Node<T>> {

        var results = Array<Node<T>>()
        
        var current: Node<T>? = top
        
        while let item = current {
            results.append(item)
            current = item.next
        }
                
        return results
        
    }
    
    
    
    //the number of items - O(1)
  public  var count: Int {
        return counter
    }
    
    
    //MARK: Other functions
    
    
    //retrieve the top most item - O(1)
    public func peek() -> T? {
        
        if let item = top.tvalue {
            return item
        }
        else {
            return nil
        }
    }

    
    
    //check for value - O(1)
    public func isEmpty() -> Bool {
        
        if self.count == 0 {
            return true
        }
        
        else {
            return false
        }
        
    }
    
    
  //add item to the stack - O(1)
  public func push(_ tvalue: T) {
        
        
        //return trivial case
        guard top.tvalue != nil else {
            top.tvalue = tvalue
            counter += 1
            return
        }
        
        
        //create new item
        let childToUse = Node<T>()
        childToUse.tvalue = tvalue
            
            
        //set new created item at top
        childToUse.next = top
        top = childToUse


        //set counter
        counter += 1
        
    }


    
//MARK: Pop functions
    
    //returns item from the stack - O(1)
    public func popValue() ->T? {
                
        guard let results = top.tvalue else {
            return nil
        }
        
            
        //make reassignment
        if let element = top.next {
            top = element
            counter -= 1
        }
        
        else {
            top.tvalue = nil
            counter = 0
        }
        
        return results
            
    }
    
    
    
    //remove item from the stack - O(1)
    public func pop() {
        
        if top.tvalue == nil {
            counter = 0
        }
            
        //make reassignment
        if let element = top.next {
            top = element
            counter -= 1
        }
            
        else {
            top.tvalue = nil
            counter = 0
        }
            
    }

}
