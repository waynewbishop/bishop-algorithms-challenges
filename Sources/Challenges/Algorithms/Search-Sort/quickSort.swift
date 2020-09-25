//
//  quickSort.swift
//  
//
//  Created by Wayne Bishop on 7/6/20.
//

import Foundation

extension Array where Element: Comparable {
        
    /**
     Ranks numbers through a series of swaps.
     Based on "conceptually" sorting a collection subset based on a "wall" and "pivot".
     Best case performance of O(n log n). Worst case performance of O(n2).

     - Returns: An `Array` of sorted elements.
     - Complexity: O(n log n) - linear time.
     */

    mutating func quickSort() -> Array<Element> {
        
        
        func qSort(start startIndex: Int, _ pivot: Int) {
            
            if (startIndex < pivot) {
                let iPivot = qPartition(start: startIndex, pivot)
                qSort(start: startIndex, iPivot - 1)
                qSort(start: iPivot + 1, pivot)
            }
        }
        
        
        qSort(start: 0, self.endIndex - 1)
        return self
        
    }
    
    
    
    //sorts collection-range based on pivot
    mutating func qPartition(start startIndex: Int, _ pivot: Int) -> Int {
        
        var wallIndex: Int = startIndex
        
        
        //compare range with pivot
        for currentIndex in wallIndex..<pivot {
            
            print("current is: \(self[currentIndex]). pivot is \(self[pivot])")
            
            if self[currentIndex] <= self[pivot] {
                if wallIndex != currentIndex {
                    self.swapAt(currentIndex, wallIndex)
                }
                
                //advance wall
                wallIndex += 1
            }
        }
        
        
        //move pivot to final position
        if wallIndex != pivot {
            self.swapAt(wallIndex, pivot)
        }
        
        return wallIndex
        
    }
    
}

