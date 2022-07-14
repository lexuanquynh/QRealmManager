//
//  MigrationSample.swift
//  RealmManagerTests
//
//  Created by Admin on 2022/07/14.
//

import RealmSwift


 // version 0

// class MigrationSample: Object {
//    @Persisted var firstName = ""
//    @Persisted var lastName = ""
//    @Persisted var age = 0
// }


// Version 1
class MigrationSample: Object {
    @Persisted var firstName = ""
    @Persisted var lastName = ""
        // Remove the "age" property.
        // @Persisted var age = 0
        // Removed properties can be migrated
        // automatically, but must update the schema version.
}

