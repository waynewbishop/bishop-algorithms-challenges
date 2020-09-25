//
//  Event.swift
//  
//
//  Created by Wayne Bishop on 9/25/20.
//

import Foundation


//structure for holding
class Event {
    
    var title: String?
    var start: Date?
    var end: Date?
    var conflict: Bool = false
    
    init(_ title: String, _ start: String, _ end: String) {
        
        self.title = title
        self.start = dateFromString(start)
        self.end = dateFromString(end)
    }
    
    
    //formats a date
    func dateFromString(_ item: String) -> Date? {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy HH:mm"
        
        //return the formatted date
        return formatter.date(from: item)
    }

}
