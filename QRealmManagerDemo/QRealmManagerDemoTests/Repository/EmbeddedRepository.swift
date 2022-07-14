//
//  EmbeddedRepository.swift
//  RealmManagerTests
//
//  Created by Admin on 2022/07/14.
//

import RealmSwift
import QRealmManager

class EmbeddedRepository: DatabaseConfigurable {
    var realmMemoryType: RealmMemoryType {
       return .inStorage
    }

    var schemaName: String? {
        return "EmbeddedSchema"
    }

    var schemaVersion: UInt64? {
        0
    }

    var objectTypes: [Object.Type]? {
        return [Contact.self]
    }

    var embeddedObjectTypes: [EmbeddedObject.Type]? {
        return [Address.self]
    }

    var migrationBlock: MigrationBlock? {
        return nil
    }
}
