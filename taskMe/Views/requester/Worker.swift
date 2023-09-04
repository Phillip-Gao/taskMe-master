//
//  Worker.swift
//  taskMe
//
//  Created by Phillip Gao on 4/14/23.
//  Copyright © 2023 Phillip Gao. All rights reserved.
//

import Foundation

class Worker: Identifiable{
    
    
    var id = UUID()
    var image : String
    var name : String
    var email : String
    var type: String // Friend, coworker, sibling,
    var requester : String
    var date : Date
    var price : String
    var request : String
    var description : String
    var accepted : Bool

    init(image : String = "user", name : String = "name", email : String = "email",  type : String = "Friend", requester : String = "Fred", date : Date = Date(), price : String = "10", request : String = "Wash my car", description : String = "I need my car washed by the end of the day.", accepted : Bool = false){
        self.image = image
        self.name = name
        self.email = email
        self.type = type
        self.requester = requester
        self.date = date
        self.price = price
        self.request = request
        self.description = description
        self.accepted = accepted
    }
}
