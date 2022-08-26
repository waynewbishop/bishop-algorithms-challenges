//
//  Decision.swift
//  
//
//  Created by Wayne Bishop on 8/9/22.
//

import Foundation



//leaf positions
enum Position: Codable {
    case left, right
}



class Branch <T: Comparable> {
    
    var attribute: T?
    var left: Branch<T>?
    var right: Branch<T>?
    var action: Any?
}


class Decision <T: Comparable> {
        
    var root: Branch<T>
    var branch: Branch<T> = Branch()
    
    init() {
        self.root = Branch()
    }

    
    //create a new branch
    @discardableResult func createBranch(with attribute: T) -> Branch<T>? {

        guard root.attribute != nil else {
            root.attribute = attribute
            return root
        }
        
        
        var current: Branch<T> = root
        

        let childToUse = Branch<T>()
        childToUse.attribute = attribute
        

        while let tvalue = current.attribute {
           
           //check the left side
          if attribute < tvalue {

            if let lnode = current.left {
              current = lnode
              continue
            }

            else {
              current.left = childToUse
                
                //define return value
                if let left = current.left {
                    branch = left
                }
                
              break
            }
          }

          
         //check right side
          if attribute > tvalue {

            if let rnode = current.right {
              current = rnode
              continue
            }

            else {
              current.right = childToUse
            
                //define return value
                if let right = current.right {
                    branch = right
                }
                
              break
            }
          }
        }
        
        return branch
    }

    

    @discardableResult func createLeaf(for branch: Branch<T>, with action: Any, position: Position) -> Bool {
        
        let childToUse: Branch<T> = Branch()
        childToUse.action = action
        
        
        switch position {
            
        case .right:
            if branch.right == nil {
                branch.right = childToUse
                return true
            }
            else {
                return false
            }
         
        case .left:
            if branch.left == nil {
                branch.left = childToUse
                return true
            }
            else {
                return false
            }
        }        
        
    }
    

    
    func findAnswer(for question: T) -> Any? {
        
        //trival case
        guard root.attribute != nil else {
            return nil
        }
        
        var current: Branch<T>? = self.root
        
        
        while let node = current {
            
            //check right side
            if let attribute = node.attribute {
                                
                if question >= attribute {
                    if let rnode = node.right {
                        
                        if rnode.attribute != nil {
                            current = rnode
                            continue
                        }
                        
                        else if rnode.action != nil {
                            return rnode.action
                        }
                    }
                }

                
                if question < attribute {
                    if let lnode = node.left {
                        
                        if lnode.attribute != nil {
                            current = lnode
                            continue
                        }
                        
                        else if lnode.action != nil {
                            return lnode.action
                        }
                    }
                }
            }
            
        } //end while
        
        return nil
    }
}
