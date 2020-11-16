//
//  isStringUnique.swift
//  
//
//  Created by Wayne Bishop on 7/6/20.
//

import Foundation


extension String {
    
    /**
      Determines if all characters are unique
    - Complexity: O(n) - linear time.
    */
    
    func isStringUnique() -> Bool {
        
        //evaluate trival case
        guard self.count < 128 else {
            return false
        }
        
        
        //match unicode representation - O(n) or greater
        var list = Array<Bool?>(repeatElement(nil, count: 128))
        
        for scalar in self.unicodeScalars {
            let unicode = Int(scalar.value)
            
            if list[unicode] != nil {
                return false
            }
            list[unicode] = true
        }
        
        return true
    }
    
}


