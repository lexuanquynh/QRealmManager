//
//  Contact.swift
//  RealmManagerTests
//
//  Created by Admin on 2022/07/14.
//

import RealmSwift

// Define an object with one embedded object
class Contact: Object {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var name = ""
    // Embed a single object.
    // Embedded object properties must be marked optional.
    @Persisted var address: Address?
    convenience init(name: String, address: Address) {
        self.init()
        self.name = name
        self.address = address
    }
}
