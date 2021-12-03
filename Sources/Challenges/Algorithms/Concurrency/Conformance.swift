//
//  Conformance.swift
//  
//
//  Created by Wayne Bishop on 6/10/21.
//

import Foundation

//items are marked as sendable if their instances to ensure they
//can be passed to the actor-based types.
//this means its safe to pass the value to one or more other actor types

struct Books: Sendable {
    var title: String?
    var authors: [String]?
}

//sendable type conformance also can be applied to
//generic types as well
struct List <T, U> where T: Sendable, U: Sendable {
    let name: T?
    let value: U?
}


//todo: create an example of accessing a helper method
//using a constuct like this. In other words, this is just
//ensuring a type as a struct, since their values are copied (instead of referenced).
