//
//  RealmErrorType.swift
//  RealmManager
//
//  Created by Admin on 2022/07/14.
//

import Foundation
/*
 This enum is a new error type only used for the DM.
 When you need to initialize a new Realm instance.
 If you have any problems while initializing them.
 You should know that error is what kind of type.
 */
public enum RealmErrorType: Error {
    // When you can’t initialize the Realm instance. You will get this error.
    case realmIsEmpty
    // When you do something about configuration. If Realm can’t be configured. You will get this error.
    case configurationFailure
    case transactionFailed
}
