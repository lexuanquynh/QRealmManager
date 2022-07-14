//
//  Address.swift
//  RealmManagerTests
//
//  Created by Admin on 2022/07/14.
//

import RealmSwift

class Address: EmbeddedObject {
    @Persisted var street: String?
    @Persisted var city: String?
    @Persisted var country: String?
    @Persisted var postalCode: String?
}
