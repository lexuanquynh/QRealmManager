//
//  DatabaseConfigurable+LegacyMigration.swift
//  RealmManager
//
//  Created by Admin on 2022/07/14.
//

import RealmSwift

// MARK: Legacy Migration
extension DatabaseConfigurable {
    var legacyMigration: MigrationBlock {
        return { (migration, oldSchemaVersion) in

        }
    }
}
