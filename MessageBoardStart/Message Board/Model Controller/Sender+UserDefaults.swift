//
//  Sender+UserDefaults.swift
//  Message Board
//
//  Created by Joseph Rogers on 4/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
import MessageKit


//creating an extension on Sender to have a representation for the sender.
extension Sender {
    var dictionaryRepresentation: [String:String] {
        return ["id": senderId,
                "displayName": displayName]
    }
    
    init?(dictionary: [String:String]) {
        guard let id = dictionary["id"],
            let displayName = dictionary["displayName"] else { return nil }
        
        self.init(senderId: id, displayName: displayName)
    }
}
