//
//  valueReference.swift
//  
//
//  Created by Wayne Bishop on 12/7/21.
//

import Foundation

///What is the difference between a struct and a class?

//car value type
struct sCar {
    var color: String
}


//car reference type
class cCar {
    var color: String
    
    init(color: String) {
        self.color = color
    }
}


/*
 // Value type example
 struct S { var data: Int = -1 }
 var a = S()
 var b = a                        // a is copied to b
 a.data = 42                        // Changes a, not b
 println("\(a.data), \(b.data)")    // prints "42, -1"
 */
