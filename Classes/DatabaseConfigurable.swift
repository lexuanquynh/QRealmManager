//
//  DatabaseConfigurable.swift
//  RealmManager
//
//  Created by Admin on 2022/07/14.
//

import Foundation
import RealmSwift

/// DatabaseConfigurable all defines which you must conform according
protocol DatabaseConfigurable {
    var realmMemoryType: RealmMemoryType { get }

    // This property you must assign the database name that you want.
    //  If you want to use legacy architecture you can assign nil for it.
    //  If you want to use legacy architecture you can assign nil for it.
    var schemaName: String? { get }

    // This property you must assign the database version according to the migration count.
    // You must change the version on kLegacySchemaVersion instead according to the migration count too.
    //  If you want to use legacy architecture you can assign nil for it.
    var schemaVersion: UInt64? { get }

    // This property you must assign the table type to verify that this schema will use only this table.
    //  If you want to use legacy architecture you can assign nil for it.
    var objectTypes: [Object.Type]? { get }

    var embeddedObjectTypes: [EmbeddedObject.Type]? { get }

    // This property you must implement the migration logic if a table has changed.
    // If you want to use legacy architecture you can assign nil for it. If you assign nil.
    var migrationBlock: MigrationBlock? { get }
}

