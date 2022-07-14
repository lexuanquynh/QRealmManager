//
//  RealmManagerTests.swift
//  RealmManagerTests
//
//  Created by Admin on 2022/07/14.
//

import XCTest
import QRealmManagerDemo

final class RealmManagerTests: XCTestCase {
    let repository = CoffeeDrinkRepository()

    func testSaveObjectNonPrimaryKey() throws {
        let coffeDrink = CoffeeDrink()
        coffeDrink.name = "Capuchino"
        coffeDrink.hotOrCold = "hot"
        coffeDrink.rating = 4
        let expectation = self.expectation(description: "Realm manager API")

        repository.save(entity: coffeDrink, update: false) { result in
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

    /* Test after run testSaveObjectNonPrimaryKey function
    func testQueryObjects() {
        let expectation = self.expectation(description: "Delete object API")
        let coffeDrinks = repository.queryAll(returningClass: CoffeeDrink.self)
        XCTAssertTrue(coffeDrinks != nil && coffeDrinks!.isEmpty == false)
        coffeDrinks!.forEach({ coffeDrink in
            print(coffeDrink.name)
        })

        let cofferRate = coffeDrinks!.filter { $0.rating == 4 }
        XCTAssertTrue(!cofferRate.isEmpty)

        // delete a object
        let firstCoffer = cofferRate.first!
        repository.delete(entity: firstCoffer) { result in
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
*/
    // Query read more:
    // https://www.mongodb.com/docs/realm/sdk/swift/crud/filter-data/
}
