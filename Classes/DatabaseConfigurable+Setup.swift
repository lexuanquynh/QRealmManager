//
//  DatabaseConfigurable+Setup.swift
//  RealmManager
//
//  Created by Admin on 2022/07/14.
//

import Foundation
import RealmSwift

// Please read schemaVersion description
private let kLegacySchemaVersion: UInt64 = 0

// This is just a document name for storing Realm files.
private let kDocumentName: String = "Database"

// MARK: Setup
extension DatabaseConfigurable {
    var `extension`: String {
        return "realm"
    }

    // Use for specify Realm file name. It will get data from schemaName and merge with extension.
    var fileName: String {
        var fileName: String

        if let schemaName = schemaName, !schemaName.isEmpty {
            fileName = schemaName + "." + `extension`
        } else {
            fileName = "Default"
        }
        return fileName
    }

    // This property will decide automatically to use between schemaVersion and kLegacySchemaVersion.
    var absolutelySchemaVersion: UInt64 {
        var version: UInt64
        if let schemaVersion = schemaVersion {
            version = schemaVersion
        } else {
            version = kLegacySchemaVersion
        }
        return version
    }

    var absolutelyMigrationBlock: MigrationBlock {
        var migration: MigrationBlock
        if let migrationBlock = migrationBlock {
            migration = migrationBlock
        } else {
            migration = legacyMigration
        }
        return migration
    }

    // Use for specify path for storing Realm files.
    var path: URL? {
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        guard let document = paths.first, let documentUrl = URL(string: document) else { return nil }
        let path = documentUrl.appendingPathComponent(kDocumentName)
        if !FileManager.default.fileExists(atPath: path.absoluteString) {
            do {
                try FileManager.default.createDirectory(atPath: path.absoluteString, withIntermediateDirectories: true, attributes: nil)
            } catch {
#if DEBUG
                print("Cannot create database directory!: \(error.localizedDescription)")
#endif
                return nil
            }
        }
        let absolutelyPath = path.appendingPathComponent(fileName)
        return absolutelyPath
    }
}
