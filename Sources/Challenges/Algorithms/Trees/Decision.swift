//
//  Decision.swift
//  
//
//  Created by Wayne Bishop on 8/9/22.
//

import Foundation


//player actions (that effect the card table)
enum Action: Codable {
    case start, new, deal, hit, hold, fold, win
}

//position of leaf nodes related to parents
enum Position: Codable {
    case left, right
}


//basic binary structure
public class Feature <T: Comparable> {

      var tvalue: T?
      var left: Feature<T>?
      var right: Feature<T>?
      var action: Action?

      public init() {
          
      }
    
    
    //execute breadth-first search
    public func BFSTraverse() -> () {
                    
      let bsQueue = Queue<Feature<T>>()
        
      //queue a starting node
      bsQueue.enQueue(self)
                
      while bsQueue.peek() != nil {
            
        //traverse the next queued node
        if let bitem = bsQueue.deQueue() {
                                
            if let tvalue = bitem.tvalue {
                print("now traversing node: \(tvalue)")
            }
            
            if let leaf = bitem.action {
                print("now traversing leaf:\(leaf)")
            }
                                  
            //check left decendant
            if let left = bitem.left {
                bsQueue.enQueue(left)
            }
                
            //check right decendant
            if let right = bitem.right {
                bsQueue.enQueue(right)
            }
            
        }
            
      } //end while
        
        print("bfs traversal complete..")
        
    }
    
    
   func DFSTraverse(_ formula: (Feature<T>)-> ()) {

          if let left = self.left {
            left.DFSTraverse(formula)
          }
            
          formula(self)
            
          if let right = self.right {
            right.DFSTraverse(formula)
          }
    }
    
}


public class Decision <T: Comparable> {
    
    private var root: Feature<T> = Feature()
    private var description: String?

    
    init(of description: String) {
        self.description = description
    }

    
    func printModel() {
        self.root.BFSTraverse()
    }
    
    
    //new decision point - O(log n)
    func newBranch(_ item: T) {
        
                
        //check for the presence at the root node
        guard root.tvalue != nil else {
          root.tvalue = item
          return
        }
        
        
        var current: Feature<T> = root
        

        let childToUse = Feature<T>()
        childToUse.tvalue = item
        

        //determine its positioning based on the parent value
        while let tvalue = current.tvalue {
           
           //check the left side
          if item < tvalue {

            if let lnode = current.left {
              current = lnode
            }

            else {
              current.left = childToUse
              break
            }
          }

          
         //check right side
          if item > tvalue {

            if let rnode = current.right {
              current = rnode
            }

            else {
              current.right = childToUse
              break
            }
          }
        }
    }
    
    
    //find and append new leaf - O(n)
    func newLeaf(branch: T, action: Action, on position: Position) {
        
        let leafToUse: Feature<T> = Feature()
        leafToUse.action = action
    
        //place node beneath specific parent
        root.DFSTraverse { feature in
            
            if let tvalue = feature.tvalue {
                if tvalue == branch {
                    
                    //add at new position
                    switch position {
                        
                    case .left:
                        //position on left
                        feature.left = leafToUse
                        
                    case .right:
                        //position on right
                        feature.right = leafToUse
                    }

                }
            }
        } //end traverse
        
    }

    
    
    //obtain answer to question
    func findAnswer(for question: T) -> Action? {
        
        //trival case
        guard root.tvalue != nil else {
            return nil
        }
        
        var current: Feature<T>? = self.root
        
        
        while let feature = current {
                        
            
            //check right side
            if let tvalue = feature.tvalue {
                if question >= tvalue {
                    
                    //check for right side child
                    if let rnode = feature.right {
                        
                        if rnode.tvalue != nil {
                            current = rnode
                            continue
                        }
                        
                        else if rnode.action != nil {
                            return rnode.action
                        }
                    }
                }
            }
            
            
            //check left side
            if let tvalue = feature.tvalue {
                if question < tvalue {
                    
                    //check for right side child
                    if let lnode = feature.left {
                        
                        if lnode.tvalue != nil {
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


