//
//  Event.swift
//  
//
//  Created by Wayne Bishop on 9/25/20.
//

import Foundation


//structure for holding dates..

public class Event {
    
    var title: String?
    var start: Date
    var end: Date
    var conflict: Bool = false
    
    init(_ title: String?, _ start: Date, _ end: Date) {
        
        self.title = title
        self.start = start
        self.end = end
    }
    
    
}



