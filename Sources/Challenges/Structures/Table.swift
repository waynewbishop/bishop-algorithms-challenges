//
//  Table.swift
//  
//
//  Created by Wayne Bishop on 6/29/20.
//

import Foundation



/// Custom generic structure used with hash tables and priorty queues.
public class Table <T: Comparable>: Comparable {
    
    var tvalue: T
    var count: Int

    //set initializers
   public init(_ tvalue: T, count: Int = 1) {
        
        self.tvalue = tvalue
        self.count = count
    }
    
    //increases the count
    public func add(_ tvalue: T) {
        
        if self.tvalue == tvalue {
            self.count += 1
        }
    }

    
    //equatable conformance
    public static func == (lhs: Table, rhs: Table) -> Bool {
        return lhs.tvalue == rhs.tvalue
    }
    
    //comparable conformance
    public static func < (lhs: Table, rhs: Table) -> Bool {
        return lhs.tvalue < rhs.tvalue
    }
    
}
