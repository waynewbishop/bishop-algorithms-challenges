//
//  UserInterface.swift
//  
//
//  Created by Wayne Bishop on 6/11/21.
//

import Foundation

//the main actor signals the entry point for
//all operators to occur on the main thread. This is awesome
//because is this no longer left to chance to and programming
//error.

class UserInterface {
    
    init() {
     //initialization goes here..
    }
    
    public func cellRowForIndexPath() {
        //provide some UI update at this level..
        //this is all occuring on the main thread with no
        //additional checking required..
    }

    
    //if for some reason
    nonisolated public func someHelperClass() {
        print("do some work here..")
    }
}



