//
//  Table.swift
//  
//
//  Created by Wayne Bishop on 6/29/20.
//

import Foundation


//used in conjunction with generic priorty queues

public class Table <T> {
    
    var tvalue: T?
    var count: Int

    //set initializers
    init(_ tvalue: T, count: Int = 1) {
        
        self.tvalue = tvalue
        self.count = count
    }
    
}
