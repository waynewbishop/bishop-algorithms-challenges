//
//  doubleStackToQueue.swift
//  
//
//  Created by Wayne Bishop on 8/8/22.
//

import Foundation


//implement a queue using two stack structures

func doubleStackToQueue <T>(with sequence: Array<T>) -> Array<T>? {
    
    let stack: Stack<T> = Stack()
    let queue: Stack<T> = Stack() //named stack but operate as a queue
    
    var results: Array<T> = Array()
    
    for s in sequence {
        stack.push(s)
    }
    
    //iterate and push elements to second stack
    while !stack.isEmpty() {
        if let p = stack.popValue() {
            queue.push(p)
        }
    }
    
    while !queue.isEmpty() {
        if let r = queue.popValue() {
            results.append(r)
        }
    }
    
    return results
}
