//
//  commonElement.swift
//  
//
//  Created by Wayne Bishop on 11/2/20.
//

import Foundation


/**
 Given a matrix where every row is sorted in increasing order, return the smallest common element in all rows. If there is no common element return -1.

 - Parameter matrix: The series of items to be evaluated.
 - Returns: The largest number of consecutive elements.
 */

public func commonElement(_ matrix: [[Int]]) -> Int? {
        
    var buckets = Array<Table<Int>?>(repeatElement(nil, count: 15))
    
    //trivial case
    guard matrix.count > 0, matrix[0].count > 0 else{
        return nil
    }

    //note: assumes non-duplicate values per row
    for row in matrix {
        for item in row {

            //check table item - collision..
            if let table = buckets[item] {
                table.add(item)
                
                //determine count match
                if table.count == matrix.count {
                    return table.tvalue
                }
            }
            else {
                let newTable = Table(item) //new item added..
                buckets[item] = newTable
            }
            
        }
    }
            
    return nil
}
