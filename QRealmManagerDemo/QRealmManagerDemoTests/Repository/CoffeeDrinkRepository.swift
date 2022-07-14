//
//  CoffeeDrinkRepository.swift
//  RealmManagerTests
//
//  Created by Admin on 2022/07/14.
//

import RealmSwift
import QRealmManager

class CoffeeDrinkRepository: DatabaseConfigurable {
    var realmMemoryType: RealmMemoryType {
       return .inStorage
    }

    var schemaName: String? {
        return "CoffeeDrinkSchema"
    }

    var schemaVersion: UInt64? {
        0
    }

    var objectTypes: [Object.Type]? {
        return [CoffeeDrink.self]
    }

    var embeddedObjectTypes: [EmbeddedObject.Type]? {
        return nil
    }

    var migrationBlock: MigrationBlock? {
        return nil
    }
}
