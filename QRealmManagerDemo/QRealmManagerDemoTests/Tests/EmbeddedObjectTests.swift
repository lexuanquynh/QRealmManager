//
//  EmbeddedObjectTests.swift
//  RealmManagerTests
//
//  Created by Admin on 2022/07/14.
//

import XCTest
import QRealmManagerDemo

final class EmbeddedObjectTests: XCTestCase {
    let repository = EmbeddedRepository()

    func testEmbeddedObject() throws {
        let expectation = self.expectation(description: "Realm save API")

        let address = Address()
        address.street = "123 Fake St"
        address.city = "Springfield"
        address.country = "USA"
        address.postalCode = "90710"
        let contact = Contact(name: "Nick Riviera", address: address)

        repository.save(entity: contact, update: false) { result in
            switch result {
            case .success:
                XCTAssertTrue(true)
                expectation.fulfill()
            case .failure:
                XCTAssertTrue(false)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: 5.0, handler: nil)
    }
}
