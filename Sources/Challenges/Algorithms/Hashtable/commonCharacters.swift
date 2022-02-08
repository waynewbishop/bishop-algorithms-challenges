//
//  commonCharacters.swift
//  
//
//  Created by Wayne Bishop on 1/21/22.
//

import Foundation

/*
 Given an array A of strings made only from lowercase letters, return a list of all characters that show up in all strings within the list (including duplicates).
 */

func commonCharacters(matrix: [[String]]) -> [String] {
        
    let capacity = 127
    var seenChar = Set<String>()
    var results = Array<String>()
    
    var buckets = Array<Table<String>?>(repeatElement(nil, count: capacity))

    //trivial case
    guard matrix.count > 0, matrix[0].count > 0 else{
        return results
    }
    
    //now iterate through each element in the sequence
    //note: assumes non-duplicate values per row
    for word in matrix {
        
        //reset all previous words
        seenChar.removeAll()
                
        for item in word {
            var asciiValue: Int = 0
            
            //find ascii representation - O(1)
            for item in item.unicodeScalars {
                asciiValue += Int(item.value)
            }
            
            //check for a collision
            if let table = buckets[asciiValue] {
                if !seenChar.contains(item) {
                    table.add(item)
                    
                    //determine count match
                    if table.count == matrix.count {
                        results.append(table.tvalue)
                    }
                }
            }
            
            else {
                let newTable = Table(item) //new item added..
                buckets[asciiValue] = newTable
            }
            
            seenChar.insert(item)
        }
    } //end for
    
    return results
    
}
