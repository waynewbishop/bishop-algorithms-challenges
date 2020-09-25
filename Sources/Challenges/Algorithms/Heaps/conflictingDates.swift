//
//  ConflictingDates.swift
//  
//
//  Created by Wayne Bishop on 9/25/20.
//

import Foundation


/*
 2. note: to avoid a situation of doing a n2 operation, your algorithm could serialize your
 event dates into a "pseudo" min-heap with a insert performance of O(n).
 
 As part of the heapify process, as new dates are added they would be compared to all other dates,
 with the smallest date rising the top. As dates are compared, the newly added date range
 is compared with the existing data. If there is a conflict, the newly added record
 "conflict" property is updated.
 
 this process allows for all the data to be correctly sorted, with all records correctly
 holding the conflict metadata.
*/

//encapsulates the event list of items to be compared.
class EventHeap {
    
    var items = Array<Event>()
    
    //entire list
    var sequence: Array<Event> {
        return self.items
    }
    
    
    //number of items
    public var count: Int {
        return self.items.count
    }
    
    
    //the min or max value
    public func peek() -> Event? {
        
        if items.count > 0 {
            return items[0] //the min or max value
        }
        else {
            return nil
        }
    }
    
    
    //addition of new items
    public func enQueue(_ event: Event) {
        
        self.items.append(event)
        
        var childIndex: Int = items.count - 1
        var parentIndex: Int = childIndex - 1
        
                        
        while childIndex != 0 {

            let childToUse: Event = items[childIndex]
            let parentToUse: Event = items[parentIndex]
            
            
            if let childStart = childToUse.start {
                if let parentStart = parentToUse.start {
                    
                    //determine scheduling conflict
                    
                    //compare dates
                    if childStart < parentStart {
                        items.swapAt(parentIndex, childIndex)
                    }
                    
                    //reset indices
                    childIndex = parentIndex
                    
                    if childIndex != 0 {
                        parentIndex = childIndex - 1
                    }
                        
                }
            }
            
        }
        
    }
    
    
    //determines if item date falls between the proposed start and end dates.
    private func isConflict(start: Date, end: Date, itemdate: Date) -> Bool {
        
        let range = start...end
        return range.contains(itemdate) ? true: false
    }
    
}
