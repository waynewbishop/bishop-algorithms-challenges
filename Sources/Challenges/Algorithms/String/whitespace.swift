//
//  Whitespace.swift
//  
//
//  Created by Wayne Bishop on 10/15/20.
//

import Foundation


extension String {
     
    
    /// Function does not work because the string indicies are mutated during the enumeration.
    /// - Returns: <#description#>
    public mutating func removeSpace() {
                
        //iterate through the model
        for (cindex, c) in self.enumerated() {  //4
                        
            if c == Character(" ") {
                
                //obtain the correct character Index
                let index = self.index(self.startIndex, offsetBy: cindex)
                self.remove(at: index)  // -1 == (output.count = 3)
            }
        }
        
    }


    
    /// Removes whitespace occurences in O(n + i) time and constant space - battleship!!.
    public mutating func removeSpace2() {
        
        let space: Character = Character(" ")  //ascii representation?
        
        //while self.contains(space) {
            while let index = self.firstIndex(of: space) {
                self.remove(at: index)
            }
        //}
        
    }
    
    
    /// Remove whitespace (designed by Jason!)
    /// - Returns: <#description#>
    public func removeSpaceInPlace() -> String {
        
            var output: String = self
            //iterate through the model
            var outputExpectedSize = output.count // assign initial max size, but this will decrease with each "space" found.
            var iterator = 0
        
            while iterator < outputExpectedSize {  //genius :-)
                //obtain the correct character index
                let index = output.index(output.startIndex, offsetBy: iterator)
                if output[index] == Character(" ") {
                    output.remove(at: index)
                    outputExpectedSize = outputExpectedSize - 1
                } else {
                    iterator = iterator + 1
                }
            }
            return output
        }
    
}



