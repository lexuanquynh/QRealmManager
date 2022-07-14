//
//  Business.swift
//  RealmManagerTests
//
//  Created by Admin on 2022/07/14.
//

import RealmSwift

// Define an object with an array of embedded objects
class Business: Object {
    @Persisted var name = ""
    @Persisted var addresses: List<Address> // Embed an array of objects
    convenience init(name: String, addresses: [Address]) {
        self.init()
        self.name = name
        self.addresses.append(objectsIn: addresses)
    }
}
