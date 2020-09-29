//
//  ConflictingDates.swift
//  
//
//  Created by Wayne Bishop on 9/25/20.
//

import Foundation

/**
 2. note: to avoid a situation of doing a n2 operation, your algorithm could serialize your
 event dates into a "pseudo" min-heap with a insert performance of O(n).
 
 As part of the heapify process, as new dates are added they would be compared to all other dates,
 with the smallest date rising the top. As dates are compared, the newly added date range
 is compared with the existing data. If there is a conflict, the newly added record
 "conflict" property is updated.
 
 this process allows for all the data to be correctly sorted, with all records correctly
 holding the conflict metadata.
*/

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
        var parentIndex: Int = 0

        
        //calculate parent index
        if childIndex != 0 {
            parentIndex = childIndex - 1
        }
                
        //heapify bottom-up process - O(n)
        while childIndex != 0 {

            var childToUse: Event = items[childIndex]
            var parentToUse: Event = items[parentIndex]
            
            
            self.isConflict(&parentToUse, &childToUse)
            
            
            if childToUse.start < parentToUse.start {
                items.swapAt(childIndex, parentIndex)
                
                //reset indices
                childIndex = parentIndex
                
                if childIndex != 0 {
                    parentIndex = childIndex - 1
                }
                                
            }
            else {
                print("date correctly sorted..")
                return
            }

                                
        }
    }
    
        
    
    //determines scheduling conflict between two events
    private func isConflict(_ source: inout Event, _ target: inout Event)  {
               
        
        //determine conflict based on the target
        var range = source.start...source.end
        
        if range.contains(target.start) {
            target.conflict = true
            print("conflict detected..")
        }

        
        //determine conflict based on the source
        range = target.start...target.end
        
        if range.contains(source.end) {
            source.conflict = true
            print("conflict detected..")
        }
    
        
    } //end function
        
    
}
