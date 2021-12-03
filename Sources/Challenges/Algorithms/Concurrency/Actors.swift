//
//  Actors.swift
//  
//
//  Created by Wayne Bishop on 6/10/21.
//

import Foundation

//provides synchronization for shared mutable state
//actors isolate their state from the rest of the program

actor Counter {
    
    var value = 0
        
    func increment() -> Int {
        value += 1
        return value
    }
    
    //there's no need to mark internal methods or properties
    //as async since they are all running within the same (protected scope)
    func increase() -> Int {
        return self.increment()
    }
}

//actors work as reference type (yeah!) and
//act as first-class citizens. However, they act as a centralized funnel for
//decentralized operations. This means this elmintates race conditions and
//ensures indicted methods can't be called in different ways.

extension Counter {
    func decrement() -> Int {
        value -= 1
        return value
    }
}




