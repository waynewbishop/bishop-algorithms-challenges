//
//  Sleeper.swift
//  
//
//  Created by Wayne Bishop on 6/11/21.
//

import Foundation

class Sleeper {
    
    init() {
        //code goes here..
    }
    
    func downloadPhoto(name: String) async -> String {
        //code goes here
        print("download started")
        
        //sleep(2 * 1_000_000_000) //2 seconds..
        
        print("download finished")
        return name
    }
    
    
    func concurrentExample() async {
        
        //all these processes run asynchronously
        async let firstPhoto = downloadPhoto(name: "Wayne")
        async let secondPhoto = downloadPhoto(name: "Sam")
        async let thirdPhoto = downloadPhoto(name: "Sruti")
        
        //the assignment of photos waits until all supporting
        //aspects are statisifed..
        let photos = await [firstPhoto, secondPhoto, thirdPhoto]
        print(photos)
    }
    

    
    func synchronousExample() async {
        
        //all processes wait until previous completes
        let firstPhoto = await downloadPhoto(name: "Wayne")
        let secondPhoto = await downloadPhoto(name: "Sam")
        let thirdPhoto = await downloadPhoto(name: "Sruti")
        
        //all photos are loaded before assignment is made..
        let photos = [firstPhoto, secondPhoto, thirdPhoto]
        print(photos)
    }
    
}
