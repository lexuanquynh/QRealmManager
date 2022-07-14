//
//  PetRepository.swift
//  RealmManagerTests
//
//  Created by Admin on 2022/07/14.
//

import RealmSwift
import QRealmManagerDemo

class PetRepository: DatabaseConfigurable {
    var realmMemoryType: RealmMemoryType {
       return .inStorage
    }

    var schemaName: String? {
        return "PetSchema"
    }

    var schemaVersion: UInt64? {
        0
    }

    var objectTypes: [Object.Type]? {
        return [DogToy.self, Dog.self, DogClub.self, Person.self]
    }

    var embeddedObjectTypes: [EmbeddedObject.Type]? {
        return nil
    }
    
    var migrationBlock: MigrationBlock? {
        return nil
    }
}
